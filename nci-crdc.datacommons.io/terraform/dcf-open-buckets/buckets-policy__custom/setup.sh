#!/bin/bash

mkdir -p policies

for name in $(aws s3 ls | awk '{ print $3 }'); do 
  echo $name; 
  aws s3api get-bucket-policy --bucket "$name" | jq -r .Policy | jq -r . > "policies/${name}.json"
done

for name in policies/*.json; do 
  name=${name#policies/}; name=${name%.json}
  echo $name
  gen3 arun terraform12 import "aws_s3_bucket_policy.bpolicy[\"${name}.json\"]" "$name"
  echo -------------------
done

# https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html
for name in $(aws s3 ls | awk '{ print $3 }'); do 
  echo $name
  aws s3api put-bucket-ownership-controls --bucket "$name" --ownership-controls '{ "Rules": [ { "ObjectOwnership": "BucketOwnerPreferred"} ] }'
done
