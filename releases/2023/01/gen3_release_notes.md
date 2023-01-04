# Core Gen3 Release 2023.01

## uc-cdis/fence

#### New Features
  - Ability to add DB connection string via environment variable ([#1060](https://github.com/uc-cdis/fence/pull/1060)) 
  - Add `--expires-in` parameter to the `fence-create` `client-create` and 
    `client-modify` commands to specify the number of days in which in a client 
    expires ([#1057](https://github.com/uc-cdis/fence/pull/1057))
  - Add the `fence-create client-delete-expired` command to remove expired OIDC 
    clients and optionally post warnings in Slack ([#1057](https://github.com/uc-cdis/fence/pull/1057)) 

#### Bug Fixes
  - sort expired tokens so all expired ones get deleted and valid one gets used 
    ([#1058](https://github.com/uc-cdis/fence/pull/1058))

#### Improvements
  - ensure deletion of expired tokens from the database ([#1050](https://github.com/uc-cdis/fence/pull/1050)) 

## uc-cdis/indexd

#### Breaking Changes
  - Ensure you are using Fence>=2021.10. Remove deprecated GA4GH access 
    endpoints. these have existed (and been used) from the Fence microservice 
    since last year. See cloud automation change 
    [here](https://github.com/uc-cdis/cloud-automation/blob/f10f04f7957eb2ba179504f7df9d6429f7298835/gen3/bin/kube-setup-revproxy.sh#L78-L79)
    ([#338](https://github.com/uc-cdis/indexd/pull/338))

#### Improvements
  - allow passing of fence config for authz mapping to the acl migration script 
    ([#338](https://github.com/uc-cdis/indexd/pull/338))

## uc-cdis/pelican

#### Dependency Updates
  - Use `poetry<1.2` to avoid a dependency issue between `poetry` which needs a 
    recent `importlib-metadata`, and `pypfb` with uses an older one: 
    `TypeError: entry_points() got an unexpected keyword argument 'group'` 
    ([#68](https://github.com/uc-cdis/pelican/pull/68))

## uc-cdis/data-portal

#### Improvements
  - Update the guide to run data-portal locally ([#1151](https://github.com/uc-cdis/data-portal/pull/1151)) 

#### New Features
  - Refactored the github actions steps into ci.yaml, ([#1147](https://github.com/uc-cdis/data-portal/pull/1147)) 
  - Added Security pipeline steps ([#1147](https://github.com/uc-cdis/data-portal/pull/1147)) 
  - Added NPM Unit Test steps ([#1147](https://github.com/uc-cdis/data-portal/pull/1147)) 
  - Added inputs to run pre and post npm test commands ([#1147](https://github.com/uc-cdis/data-portal/pull/1147)) 
  - Removed the Python Poetry test step. ([#1147](https://github.com/uc-cdis/data-portal/pull/1147)) 
  - Removed the travis.yaml file since it is no longer needed. ([#1147](https://github.com/uc-cdis/data-portal/pull/1147)) 
  - This addresses tickets: ([#1143](https://github.com/uc-cdis/data-portal/pull/1143)) 
  - Combine GWAS Workflows: FE for View 3.0 - Select Continous or Dichotomous 
    with Cards- separate wiring than 217 ([#1143](https://github.com/uc-cdis/data-portal/pull/1143)) 
  - Combine GWAS Workflows: FE for View - FE for View 3.2 ([#1143](https://github.com/uc-cdis/data-portal/pull/1143)) 
  - Combine GWAS Workflows: FE for View 2.2 - Dichotomous ([#1143](https://github.com/uc-cdis/data-portal/pull/1143)) 
  - Combine GWAS Workflows: FE for View 2.1 - Continuous and View 3.1 ([#1143](https://github.com/uc-cdis/data-portal/pull/1143)) 
  - Combine GWAS Workflows: FE for View 2.0 - Select Continuous or Dichotomous 
    ([#1143](https://github.com/uc-cdis/data-portal/pull/1143))
  - Combine GWAS Workflows: Update attrition table to use new state management 
    architecture ([#1143](https://github.com/uc-cdis/data-portal/pull/1143))
  - Combine GWAS Workflows: Update Props, parameters and logic for Attrition 
    Table for Quantitative Use Case Only ([#1143](https://github.com/uc-cdis/data-portal/pull/1143)) 
  - Combine GWAS Workflows: Update Props, parameters and logic for Attrition 
    Table for Case/Control Use Case Only ([#1143](https://github.com/uc-cdis/data-portal/pull/1143)) 

#### Bug Fixes
  - Updates eslint-new to continue parsing when files have been deleted ([#1143](https://github.com/uc-cdis/data-portal/pull/1143)) 
  - Handle null values in discovery page ([#1140](https://github.com/uc-cdis/data-portal/pull/1140)) 

## uc-cdis/tube

#### Bug Fixes
  - Remove redundant sorted field ([#214](https://github.com/uc-cdis/tube/pull/214)) 

#### Improvements
  - Update the CI workflow to support running standalone tests (that do not 
    require running Spark or ElasticSearch) ([#212](https://github.com/uc-cdis/tube/pull/212)) 
  - Add coverage report ([#212](https://github.com/uc-cdis/tube/pull/212))

## uc-cdis/metadata-service

#### New Features
  - Add new aggregate MDS adapter for Integrated Canine Data Commons data ([#84](https://github.com/uc-cdis/metadata-service/pull/84)) 

#### Bug Fixes
  - Ensure deterministic pagination by query when limit/offset is used (by 
    adding an explicit ORDER BY) ([#83](https://github.com/uc-cdis/metadata-service/pull/83)) 

## uc-cdis/dcf-dataservice

#### New Features
  - Dry run does not return false every run ([#118](https://github.com/uc-cdis/dcf-dataservice/pull/118)) 
  - Implemented error log, over system exit on webhook fail ([#115](https://github.com/uc-cdis/dcf-dataservice/pull/115)) 
  - Implemented code change to run aws deletion func during dry run, houses 
    logic for whether to fully delete or not during a dry_run ([#114](https://github.com/uc-cdis/dcf-dataservice/pull/114)) 
  - Code must have aws url for every gs url, checks for aws and if found 
    decides it should be deleted ([#114](https://github.com/uc-cdis/dcf-dataservice/pull/114)) 

#### Dependency Updates
  - slack-sdk added ([#115](https://github.com/uc-cdis/dcf-dataservice/pull/115)) 

## uc-cdis/cloud-automation

#### New Features
  - adding argo-wrapper, cohort-middleware and OHDSI tools (ohdsi-atlas and 
    ohdsi-webapi) to roll all ([#2084](https://github.com/uc-cdis/cloud-automation/pull/2084)) 
  - Add 'fence-delete-expired-clients' job and cronjob ([#2075](https://github.com/uc-cdis/cloud-automation/pull/2075)) 
  - Add addtional label to opencost report for workflows ([#2085](https://github.com/uc-cdis/cloud-automation/pull/2085)) 
  - Add ability to persiste opencost data to s3 using a job/ cronjob. ([#2077](https://github.com/uc-cdis/cloud-automation/pull/2077)) 
  - This leverages https://github.com/uc-cdis/proto-opencost-reporter to query 
    and persist opencost reports. ([#2077](https://github.com/uc-cdis/cloud-automation/pull/2077)) 

#### Bug Fixes
  - Upgrade datadog helm chart version to 3.1.9 to include the fixes for 
    system-probe errors. ([#2092](https://github.com/uc-cdis/cloud-automation/pull/2092)) 

#### Improvements
  - Updated cronjob apiVersion to `batch/v1` from `batch/v1beta1` that is 
    deprecated. ([#2082](https://github.com/uc-cdis/cloud-automation/pull/2082))
  - Small fix for network-policies to get the server version ([#2082](https://github.com/uc-cdis/cloud-automation/pull/2082)) 
  - Gave cluster-autoscaler more memory/cpu and permissions ([#2082](https://github.com/uc-cdis/cloud-automation/pull/2082)) 
  - updated aws account list for ECR access - Added Chorus ([#2059](https://github.com/uc-cdis/cloud-automation/pull/2059)) 

## uc-cdis/audit-service

#### New Features
  - Add ability to read DB information from env vars ([#22](https://github.com/uc-cdis/audit-service/pull/22)) 

## uc-cdis/requestor

#### New Features
  - Ability to add DB connection string via environment variable ([#50](https://github.com/uc-cdis/requestor/pull/50)) 

