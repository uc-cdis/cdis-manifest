#!/bin/bash
#
# Some helpers
#

#- lib ----------------------------------

fetch-policies() {
  local name
  mkdir -p policies
  
  for name in $(aws s3 ls | awk '{ print $3 }'); do 
    echo $name; 
    aws s3api get-bucket-policy --bucket "$name" | jq -r .Policy | jq -r . > "policies/${name}.json"
  done
}
  
terraform-import-policies() {
  local name
  for name in policies/*.json; do 
    name=${name#policies/}; name=${name%.json}
    echo $name
    gen3 arun terraform12 import "aws_s3_bucket_policy.bpolicy[\"${name}.json\"]" "$name"
    echo -------------------
  done
}


function set-ownership() {
  local name
  # https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html
  for name in $(aws s3 ls | awk '{ print $3 }'); do 
    echo $name
    aws s3api put-bucket-ownership-controls --bucket "$name" --ownership-controls '{ "Rules": [ { "ObjectOwnership": "BucketOwnerPreferred"} ] }'
  done
}

make-new-policies() {
  local policyTemplate="$(cat - <<EOM
      {
         "Sid": "data-refresh only with bucket owner full control",
         "Effect": "Allow",
         "Principal": {
            "AWS": [
               "arn:aws:iam::236835632492:user/data-refresh"
            ]
         },
         "Action": [
            "s3:PutObject"
         ],
         "Resource": "arn:aws:s3:::BUCKETNAME/*",
         "Condition": {
            "StringEquals": {
               "s3:x-amz-acl": "bucket-owner-full-control"
            }
         }
      }
EOM
)"

  local name
  if [[ -d policies ]]; then
    mkdir -p newpolicies
  
    for name in policies/*.json; do
      local bucket="${name##*/}"
      local output="newpolicies/${name##*/}"
      if [[ "$name" != "policies/gdc-dcf-migration-bucket-logs.json" ]]; then
        bucket="${bucket%%.json}"
        local newrule="$(jq --arg bucket "$bucket" -r '.Resource="arn:aws:s3:::" + $bucket + "/*"' <<< "$policyTemplate")"
        echo "Generating $output"
        jq --argjson newrule "$newrule" '.Statement += [ $newrule ]' < "$name" | tee "$output"
        echo "----------------------"
      else
	cp "$name" "$output"
      fi
    done
  fi
}

help() {
  cat - <<EOM
Use: setup.sh COMMAND OPTIONS

* fetch-policies
* set-ownership
* make-new-policies
* terraform-import-policies

EOM
}

#- main ----------------------------------

echo "$@"
if [[ $# -lt 1 ]]; then
  help
else
  "$@"
fi

