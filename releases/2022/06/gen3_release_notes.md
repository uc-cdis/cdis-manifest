# Core Gen3 Release 2022.06 (Calcite)

## uc-cdis/fence

#### Improvements
  - InCommon: do not configure duplicate Shibboleth IDPs (#1024)
  - Fix generic OIDC: `get_user_id` returns the correct user ID field (#1021)

## uc-cdis/cdis-data-client

#### New Features
  - add GitHub Action for Golang CI (#108)

## uc-cdis/guppy

#### New Features
  - add total terms count to parent termsFields (#134)

## uc-cdis/hatchery

#### Improvements
  - using the new github action instead of the reusable workflow (#48)

#### New Features
  - Reusable workflow for Go tests with coverage (#46)

## uc-cdis/indexd

#### New Features
  - Adding listen queue to uwsgi config. We were seeing issues with large 
    instances of indexd (100M) on a large amount of `GET` requests we had a 
    1.5% failure rate. Adding a listen queue solved this. (#332)

## uc-cdis/pelican

#### Bug Fixes
  - don't attempt to query if id_chunks is False-y for whatever reason (as this 
    causes an exception) (#64)

## uc-cdis/data-portal

#### New Features
  - Make portal works with customized `BASENAME`, in both production mode and 
    dev mode (#990)
  - tabbed metadata detail display (#983)

#### Improvements
  - webpackdev-server works now with proper websocket connections, and fixed 
    page hot-reload (#990)

#### Deployment Changes
  - See gitops configuration options for tabbed metadata detail vs traditional 
    (#983)

#### Bug Fixes
  - Discovery: fixed a bug so now array content will show up in discovery table 
    with proper concatenation (#988)

## uc-cdis/tube

#### Bug Fixes
  - Treat boolean as string (#179)
  - Docker build is failing. This PR change dockerfile to official base image 
    and correct the build (#178)
  - Currently, in some etlMapping file, there is an explicit declaration of 
    field like `source_node` which should not be since this field is only an 
    additional field add into file etl to annotate the node where the file 
    from. (#176)
  - We put a check and log with WARN in code to skip this field when there are 
    some fields like that in etlMapping. (#176)
  - Fixing type of fields to be number, boolean rather than only text (#175)

## uc-cdis/metadata-service

#### New Features
  - Wildcards can be used in filters to query all data with a value for a 
    specific field, regardless of value (#56)

#### Improvements
  - Improving DELETE endpoint for `/objects` API. (#53)

## uc-cdis/cloud-automation

#### Bug Fixes
  - Fix kube-setup-fence.sh to create GA4GH jobs if they do not already exist 
    (#1892)
  - Fix `mutate-guppy-config-for-pfb-export-test` so that indices have correct 
    types (#1915)
  - add label selector and days to persist record to argo engine archive (#1908)
  - spacing issues in argo deploy yaml (#1904)

#### New Features
  - Whitelisted kubecost repo (#1924)

#### Improvements
  - In `mutate-etl-mapping-config`, mutate all `etlMapping.yaml` names so that 
    all aliases created have consistent prefix (#1915)

## uc-cdis/requestor

#### Improvements
  - Improve logs for access request creation (#28)

#### New Features
  - Grant or revoke the access when a request is created with an initial status 
    that is configured in `UPDATE_ACCESS_STATUSES` (#27)
