#!/bin/bash

set -v

target="cdis-manifest/nci-crdc.datacommons.io/terraform"
workspace=dcf-open-buckets/buckets-policy__custom
synclist=(
setup.sh
sync.sh
policies/
README.md
root.tf
policies.tf
)

mkdir -p "$target/$workspace"
for name in "${synclist[@]}"; do
    rsync -avz "dcfprod@dcfprod.csoc:.local/share/gen3/$workspace/$name" "$target/$workspace/$name"
done

