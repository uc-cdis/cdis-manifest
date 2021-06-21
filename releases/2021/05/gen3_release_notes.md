# Core Gen3 Release (Printer’s Row)

## uc-cdis/fence

#### Bug Fixes
  - remove assertion that is breaking tests. (#897)
  - Fix parsing for redirect url in RAS (#895)
  - Fix 'object dict can't be used in 'await' expression' error during usersync 
    (#894)
  - Allow permitted users to generate a signed upload url for public records 
    (i.e. those records with `authz=[“/open”]`) (#893)
  - Fix RAS login intermittent failure after callback (#891)
  - Do not try to record audit logs for upload presigned URLs - fixes issue 
    when hitting the `/data/upload/<guid>` endpoint (#889)
  - allow user to authenticate to gen3 successfully even if we fail to retrieve 
    RAS visa during login. (#834)
  - Fixed Visa Update cronjob not clearing expired refresh tokens. (#883)

#### Dependency Updates
  - `gen3authz` to version 1.0.5 (#894)
  - Base image `pybase3-1.5.0` (Rust toolchain fix for cryptography dependency) 
    (#894)

#### Improvements
  - Use fence config to determine whether or not to parse visas during login. 
    (#891)
  - Add _status and _version endpoints to Swagger doc (#888)
  - bump up jQuery for remediating Outdated jQuery Library vulnerability (#882)

#### New Features
  - Audit Service integration: Fence creates audit logs for data downloads and 
    user logins (#885)
  - Added `upstream_expires_in` parameter in the `/authorization` endpoint to 
    manually add refresh token expiration time. (#883)

#### Deployment Changes
  - Audit logs for user logins and data downloads can be enabled by deploying 
    the audit-service and adding setting `ENABLE_AUDIT_LOGS` to the fence 
    config (see 
    https://github.com/uc-cdis/fence/blob/1c850d07e54f8527dbde182fdd9dd593d18f660e/fence/config-default.yaml#L586-L588)
    (#885)

## uc-cdis/guppy

#### Improvements
  - add hideEmptyFilterSection flag and functionality to hide empty filter 
    sections (#116)
  - add handling of edge case where tab will have no visible filters (#116)

#### Dependency Updates
  - Update @gen3/ui-component dependency to version 0.7.0 (#116)

## uc-cdis/peregrine

#### Dependency Updates
  - psqlgraph: up to `3.0.1` (#175)

## uc-cdis/data-portal

#### New Features
  - add hideEmptyFilterSection flag and functionality to hide empty filter 
    sections (#833)
  - add handling of edge case where tab will have no visible filters (#833)

#### Dependency Updates
  - Update @gen3/ui-component dependency to version 0.7.0 (#833)
  - Update @gen3/guppy dependency to version 0.11.3 (#833)

#### Improvements
  - Change explorerConfig.table.fields to optional (#818)
  - Add local portal documentation to data-portal repo (#831)
  - Update the path to the PRC top10 chart data (#832)
  - Add optional config `hideSubmissionIfIneligible` to hide link/button to 
    `/submission` for users who don't have permission to submit data (#829)
  - Clarified documentation on study viewer. (#817)
  - Add `ellipsis` and `width` options to `studyColumns` (#828)
  - make map legend slightly transparent (#827)
  - Fixed Pentest Info Disclosure: Support Packages & Config Files 
    vulnerability (#824)
  - Fixed Pentest Outdated Nginx Version vulnerability (#824)
  - Use NPM 7 in dockerfile (#824)
  - Use Ubuntu 20.04 as base image in dockerfile (#824)
  - Use Nginx 1.18 in dockerfile (#824)

#### Bug Fixes
  - Fixed a bug causing page routes cannot be correctly resolved by react 
    router (#825)
  - change the way activeTab is set so that it always highlights which page the 
    user is on (#823)
  - refactor navigation to work with current standards (#823)

## uc-cdis/sheepdog

#### Dependency Updates
  - psqlgraph: up to `3.0.1` (#344)

## uc-cdis/ssjdispatcher

#### Improvements
  - Link to cloud-automation setup docs (#37)

## uc-cdis/tube

#### Bug Fixes
  - Fix bug where whitespace is unintentionally left in name (#143)

## uc-cdis/workspace-token-service

#### Bug Fixes
  - Fix image build failures caused by the absence of g++ (#29)

## uc-cdis/metadata-service

#### New Features
  - add DELETE /objects/{guid} endpoint to delete indexd and metadata records 
    (#20)

## uc-cdis/mariner

#### Bug Fixes
  - Checks for a refresh token before running a workflow via `Workspace Token 
    Service`, fetching a new refresh token if expired. This prevents a workflow 
    from failing and not fetching commons data if user never opens `/workspace` 
    within the last 30 days. (#46)

## uc-cdis/mariner

#### Bug Fixes
  - Checks for a refresh token before running a workflow via `Workspace Token 
    Service`, fetching a new refresh token if expired. This prevents a workflow 
    from failing and not fetching commons data if user never opens `/workspace` 
    within the last 30 days. (#46)

## uc-cdis/mariner

#### Bug Fixes
  - Checks for a refresh token before running a workflow via `Workspace Token 
    Service`, fetching a new refresh token if expired. This prevents a workflow 
    from failing and not fetching commons data if user never opens `/workspace` 
    within the last 30 days. (#46)

## uc-cdis/cloud-automation

#### Bug Fixes
  - Prevent hung `gen3qa-check-bucket-access` pods. (#1575)

#### Improvements
  - Install Rust and Rust toolchain in `python-nginx` image to fix issues 
    installing cryptography (#1568)
  - Roll all: deploy audit-service before fence (#1548)

#### New Features
  - Add covid19-bayes-model job (#1563)
  - Make copies of the "nb-etl" files; rename them "covid19-notebook-etl". The 
    new "covid19-notebook-etl" job (daily) only runs notebooks. The old files 
    will stay here until we can completely deprecate the "nb-etl" job (weekly), 
    which runs notebooks + the Bayes model. The "nb-etl" job will eventually be 
    replaced by a "covid19-bayes-model" job that only runs the Bayes model. 
    (#1556)

#### Dependency Updates
  - Bumps [ini](https://github.com/isaacs/ini) from 1.3.5 to 1.3.7. (#1470)

#### Breaking Changes
  - https://docs.aws.amazon.com/eks/latest/userguide/update-cluster.html#1-16-prerequisites
    (#1550)
  - Take control over our kube-proxy daemonset and configure it with CM instead 
    (See link above) (#1550)
  - Update ClusterAutoscaler (#1550)
  - Update kubernetes metrics-server (#1550)
  - Update manifests/documentation that uses deprecated k8s api versions. 
    (#1550)

