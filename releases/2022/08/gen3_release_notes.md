# Core Gen3 Release 2022.08 (Diamond)

## uc-cdis/fence

#### Bug Fixes
  - Fix `test_user_sync_with_visa_sync_job` flakiness by generating unique 
    `jti`, `txn` fields for every mocked passport (#1030)
  - ensure inmem gs cache of sa keys has exp checked (#1025)

## uc-cdis/data-portal

#### Bug Fixes
  - Discovery: fixed a bug causing extra `/` presents in the generated 
    permalink (#1028)

#### Improvements
  - update ES lint (#1021)
  - fix lint warnings (#1021)
  - update typescript (#1021)
  - Updated Citations for google mobility data (#1020)
  - Add `repositoryName` to DD RUM actions for `manifestDownload`, 
    `datasetDownload` and `exportToWorkspace` (#1016)
  - Use blue Gen3 logo (#1012)

#### New Features
  - if requiredIdpField try to match to specific login type and direct user 
    there (#1017)

## uc-cdis/indexs3client

#### Improvements
  - Remove `_bucket`, `_file_extension` and `_filename` from uploaded metadata 
    body. (#39)

## uc-cdis/metadata-service

#### New Features
  - Implements an adapter class for the Harvard Dataverse API (#57)

#### Bug Fixes
  - Add bash shell to Docker image for compatibility with cloud-automation (#60)

#### Improvements
  - Upgrade to python3.9 (#59)
  - Use central workflow github actions to build image and push to registries 
    (#59)
  - Rename POST /objects to POST /objects/upload. (#54)
  - Don't allow "upload" as a GUID or alias (#54)
  - Store authz data in new column in metadata table (#54)

#### Dependency Updates
  - Upgrade gen3authz to 1.5.1 (#59)
  - Upgrade httpx to 0.23.0 (#59)
  - Upgrade uvicorn to 0.18.2 (#59)

## uc-cdis/cloud-automation

#### New Features
  - deploy Apache Superset (#1926)

#### Breaking Changes
  - does not work with Postgres < 10 (which is out of support @ AWS anyways) 
    (#1954)

#### Bug Fixes
  - Added missing variable to kubecost terraform (#1951)

#### Improvements
  - The variables from `variables.tf ` in EKS module gets populated in 
    `config.tfvars` when running `gen3 workon XXX_eks` for the first time. This 
    will help people running the module for the first time to see what’s 
    configurable. (#1970)
  - Only roll cedar wrapper if the secret is in there to prevent from blocking 
    CI pipeline (#1986)
  - Use blue Gen3 logo (#1952)

#### Dependency Updates
  - Updated npm package versions for security vulnerabilities (#1962)

## uc-cdis/requestor

#### New Features
  - Ability to make _authenticated_ custom API calls as part of the access 
    request process (#35)
  - Ability to make custom API calls as part of the access request process (#34)

#### Improvements
  - Rename auto-generated policies from `_reader` to `_accessor` to avoid 
    conflicts with user.yaml-defined policies that often use `_reader` (#35)
  - Remove auto-labeling so that all integration test suites are run instead of 
    only the study viewer suite (#35)
  - Do not grant read/read-storage access for all services (#37)
  - Use `jsonschema` to validate the configuration file (#34)
  - Upgrade to Python 3.9. (#31)
  - Use central github workflow actions for image build and push (#31)

#### Dependency Updates
  - Add `jsonschema` and `mock` dependencies (#34)

