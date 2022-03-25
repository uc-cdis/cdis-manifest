# Core Gen3 Release 2022.04

## uc-cdis/arborist

#### New Features
  - Support `merge` param for `PUT /resource` endpoint so that existing 
    subresources are not overwritten (#143)

## uc-cdis/fence

#### Bug Fixes
  - Fix ENABLED_IDENTITY_PROVIDERS errors caused by the default config (#1010)

#### Improvements
  - Add documentation around `fence-create --append` (#1013)
  - use  central workflow  github actions for image build and push (#1009)
  - Add all the user's scopes to API keys (#1006)

## uc-cdis/guppy

#### Bug Fixes
  - Fixed a bug causing some env vars didn't get passed into dev container 
    correctly (#133)

## uc-cdis/data-portal

#### New Features
  - Adds `export-file-pfb-to-url` button, allowing export of PFBs to arbitrary 
    URLs from the Files tab. (#966)

#### Improvements
  - Extends Export PFB to arbitrary URL feature 
    (https://github.com/uc-cdis/data-portal/pull/929) to support exporting PFBs 
    from the Files tab using the Limited File Export feature 
    (https://github.com/uc-cdis/data-portal/pull/729) (#966)
  - PRC homepage: date slider style improvements (#974)

## uc-cdis/sheepdog

#### Improvements
  - Local Development notes and sample usage (#350)

## uc-cdis/sower-jobs

#### Improvements
  - update gen3sdk version to address issue with downloading files that has 
    subpaths (#38)

## uc-cdis/tube

#### Bug Fixes
  - Fixing issue of missing _file_id in injection/collector index (#165)
  - Fix bug when comparing str with None Type caused by null value in join_on 
    field (#163)

## uc-cdis/workspace-token-service

#### Bug Fixes
  - Fix the encryption of refresh tokens in the DB (#40)

#### Deployment Changes
  - This version of WTS requires a DB migration (in cloud-automation 
    deployments, the DB should be migrated automatically) (#40)

## uc-cdis/metadata-service

#### Bug Fixes
  - edit adapters.py for changing field name. (#49)
  - "investigators" now is "investigators_name" (#49)
  - "summary" --> "study_description_summary" (#49)
  - "study_name" --> "study_name_title" (#49)

## uc-cdis/cloud-automation

#### New Features
  - update argo wrapper deployment to have netnolimit (#1855)
  - Created ASG for workflow use (#1851)

#### Breaking Changes
  - Updated ssjdispatcher to make job images required (#1833)

#### Bug Fixes
  - Pinned AWS provider version (#1859)
  - change service app from argo to argo-wrapper (#1849)
  - Fix `gen3 logs snapshot` so that it no longer fails when a pod is in the 
    "Pending" phase. (#1847)
  - Fixed syntax error preventing sshd from starting. (#1846)
  - Updated ssjdispatcher to make job images required (#1833)
  - Fixed orchestration monitoring (#1844)

#### Improvements
  - covid19-notebok-etl job: do not overwrite the startup commands (#1848)
  - WTS init container: add SECRET_CONFIG so the DB migrations have access to 
    the configuration (#1842)

#### Deployment Changes
  - Updated ssjdispatcher to make job images required (#1833)

