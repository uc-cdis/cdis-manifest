# Core Gen3 Release 2025.03 (Cobaltite)
## uc-cdis/cloud-automation

#### New Features
  - Add `gen3-workflow` service deployment logic and add it to `gen3 roll all` 
    ([#2723](https://github.com/uc-cdis/cloud-automation/pull/2723))
  - Increase support to amazon linux fence image with adding `poetry run 
    fence-create` ([#2708](https://github.com/uc-cdis/cloud-automation/pull/2708)) 
  - This change adds newer cost-tracking tags to workflow nodes. This will let 
    us get more visibility into the types of costs we are incurring, as well as 
    where they are occurring. ([#2703](https://github.com/uc-cdis/cloud-automation/pull/2703)) 

#### Breaking Changes
  - Delete unused dockerfiles for sftp, nginx-prometheus-export, and sidecar. 
    ([#2680](https://github.com/uc-cdis/cloud-automation/pull/2680))

#### Bug Fixes
  - Fixing ES7 Logic so ES7 is the default. ([#2702](https://github.com/uc-cdis/cloud-automation/pull/2702)) 
  - Fixing "gen3 helper test suite" to support new Aurora architecture. ([#2700](https://github.com/uc-cdis/cloud-automation/pull/2700)) 
  - Allow gen3-user-data-library to setup database in jenkins environment. 
    ([#2696](https://github.com/uc-cdis/cloud-automation/pull/2696))
  - Fix mismatching parameter names in Single Table Migration Job ([#2657](https://github.com/uc-cdis/cloud-automation/pull/2657)) 

#### Improvements
  - Disable debug mode by default in `requestor` and `audit-service` ([#2723](https://github.com/uc-cdis/cloud-automation/pull/2723)) 
  - Improve `gen3_s3_info` and `gen3_db_service_setup` logging ([#2723](https://github.com/uc-cdis/cloud-automation/pull/2723)) 
  - update squid whitelist to add Zenodo ([#2721](https://github.com/uc-cdis/cloud-automation/pull/2721)) 
  - We are releasing a new Amazon Linux 2023 image that is more secure. In 
    order to do this we need to patch Paramiko so md5 is not blocked by fips. 
    We also needed to remove some of the key exchange algorithms from the ssh 
    config. (backwards compatible) ([#2718](https://github.com/uc-cdis/cloud-automation/pull/2718)) 
  - Update nginx config to remove deprecated js_include (It was deprecated 
    quite a while ago, in 0.4.0 or something) ([#2722](https://github.com/uc-cdis/cloud-automation/pull/2722)) 
  - Add OSF [Open Science Framework](https://www.cos.io/products/osf) to 
    whitelist ([#2711](https://github.com/uc-cdis/cloud-automation/pull/2711))
  - Allowing "kube-setup-dicom" in the "kube roll all script" so ohif-viewer 
    and orthanc services will be spun up. ([#2707](https://github.com/uc-cdis/cloud-automation/pull/2707)) 
  - Make Single Table Migration Job a Priority Job so that the job doesn't get 
    killed if its running for a long time ([#2657](https://github.com/uc-cdis/cloud-automation/pull/2657)) 

## uc-cdis/data-portal

#### Improvements
  - Refactor logout popup logic to show on all pages except login page ([#1669](https://github.com/uc-cdis/data-portal/pull/1669)) 
  - Refactor popup to have focus ([#1669](https://github.com/uc-cdis/data-portal/pull/1669)) 
  - add aria-hidden='true' to overlooked error page ([#1669](https://github.com/uc-cdis/data-portal/pull/1669)) 
  - improve job submission message by adding concept_id of the selected HARE 
    population ([#1663](https://github.com/uc-cdis/data-portal/pull/1663))
  - update expolrer config example in default config file ([#1660](https://github.com/uc-cdis/data-portal/pull/1660)) 

#### New Features
  - Improves user experience when using team projects in multiple tabs. ([#1668](https://github.com/uc-cdis/data-portal/pull/1668)) 

#### Dependency Updates
  - update guppy to 0.20.1 ([#1662](https://github.com/uc-cdis/data-portal/pull/1662)) 

## uc-cdis/fence

#### Bug Fixes
  - Fix timeout when user with large passport logs in by skipping 
    grant_from_storage. ([#1219](https://github.com/uc-cdis/fence/pull/1219))
  - Exchange Area projects no longer cause exceptions when applied from a 
    passport ([#1216](https://github.com/uc-cdis/fence/pull/1216))
  - Google group sync no longer runs on login when a passport is issued. 
    ([#1216](https://github.com/uc-cdis/fence/pull/1216))

#### Improvements
  - Add logging for discovery doc resolution, when dbgap_permissions expire 
    from passports and when passports are cached. ([#1223](https://github.com/uc-cdis/fence/pull/1223)) 
  - Removed unused debug logs. ([#1223](https://github.com/uc-cdis/fence/pull/1223)) 
  - Fix typo in ClientAuthenication log ([#1221](https://github.com/uc-cdis/fence/pull/1221)) 

#### Dependency Updates
  - Bumps [werkzeug](https://github.com/pallets/werkzeug) from 3.0.4 to 3.0.6. 
    (#1192)

## uc-cdis/gen3-spark

#### Improvements
  - Utilizing `gen3` user instead of `root` for more secure containers ([#26](https://github.com/uc-cdis/gen3-spark/pull/26)) 

## uc-cdis/hatchery

#### New Features
  - update Go to 1.23 ([#120](https://github.com/uc-cdis/hatchery/pull/120))
  - address certain security updates ([#120](https://github.com/uc-cdis/hatchery/pull/120)) 

#### Improvements
  - Allow assume-role for cross-account access to pay model table ([#119](https://github.com/uc-cdis/hatchery/pull/119)) 
  - Run a quick check before creating the subnet to make sure the instance type 
    for nextflow is available in that AZ. ([#111](https://github.com/uc-cdis/hatchery/pull/111)) 

## uc-cdis/indexd

#### Bug Fixes
  - Update script to not block md5 due to FIPs. ([#385](https://github.com/uc-cdis/indexd/pull/385)) 

#### Improvements
  - Add + Fix Parameters for Single Table IndexD Migration ([#384](https://github.com/uc-cdis/indexd/pull/384)) 

## uc-cdis/sheepdog

#### Improvements
  - adding gunicorn and nginx to sheepdog and basing off our new secure python 
    image ([#421](https://github.com/uc-cdis/sheepdog/pull/421))
  - Support client_credentials tokens ([#425](https://github.com/uc-cdis/sheepdog/pull/425)) 

## uc-cdis/sower

#### New Features
  - update Go to 1.23 ([#51](https://github.com/uc-cdis/sower/pull/51))
  - address some security deps ([#51](https://github.com/uc-cdis/sower/pull/51))

## uc-cdis/ssjdispatcher

#### New Features
  - update Go to 1.23 ([#64](https://github.com/uc-cdis/ssjdispatcher/pull/64))
  - address certain security deps ([#64](https://github.com/uc-cdis/ssjdispatcher/pull/64)) 

## uc-cdis/tube

#### Dependency Updates
  - Bumps [werkzeug](https://github.com/pallets/werkzeug) from 3.0.3 to 3.0.6. 
    (#289)

## uc-cdis/workspace-token-service

#### Bug Fixes
  - Since we are running flask behind a reverse proxy now (compared to before 
    it was running in uwsgi) we have to add this to our code for the k8s based 
    auth. ([#94](https://github.com/uc-cdis/workspace-token-service/pull/94))

