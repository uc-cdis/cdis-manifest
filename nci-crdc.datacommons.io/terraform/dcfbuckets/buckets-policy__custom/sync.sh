#!/bin/bash

set -v

target="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
workspace=dcfbuckets/buckets-policy__custom
synclist=(
setup.sh
sync.sh
policies/
README.md
root.tf
policies.tf
)

for name in "${synclist[@]}"; do
    rsync -avz "dcfprod@dcfprod.csoc:.local/share/gen3/$workspace/$name" "$target/$name"
done

