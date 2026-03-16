# Core Gen3 Release 2026.04 (Fluorite)
## uc-cdis/audit-service

#### Bug Fixes
  - Percent signs must be escaped in order to use in Alembic password 
    configuration. ([#104](https://github.com/uc-cdis/audit-service/pull/104))

#### Dependency Updates
  - Authutils >= 7.2.4 ([#103](https://github.com/uc-cdis/audit-service/pull/103)) 

## uc-cdis/cloud-automation

#### New Features
  - Added new site to squid whitelist for PCDC ([#2855](https://github.com/uc-cdis/cloud-automation/pull/2855)) 

#### Improvements
  - Upgrade postgres to match new version ([#2857](https://github.com/uc-cdis/cloud-automation/pull/2857)) 

## uc-cdis/data-portal

#### Dependency Updates
  - Bumps [flatted](https://github.com/WebReflection/flatted) from 3.2.7 to 
    3.4.1. (#1779)
  - Bumps [lodash-es](https://github.com/lodash/lodash) from 4.17.21 to 
    4.17.23. (#1754)
  - Bumps [lodash](https://github.com/lodash/lodash) from 4.17.21 to 4.17.23. 
    (#1755)
  - Bumps [svgo](https://github.com/svg/svgo) from 2.8.0 to 2.8.2. (#1772)
  - Bumps [dompurify](https://github.com/cure53/DOMPurify) from 3.3.1 to 3.3.2. 
    (#1775)
  - Bumps [ajv](https://github.com/ajv-validator/ajv) from 6.12.6 to 6.14.0. 
    (#1770)
  - Bumps 
    [@apollo/server](https://github.com/apollographql/apollo-server/tree/HEAD/packages/server)
    from 4.11.0 to 4.13.0. (#1758)
  - Bumps [bn.js](https://github.com/indutny/bn.js) from 4.12.0 to 4.12.3. 
    (#1768)
  - Bumps [jsonpath](https://github.com/dchester/jsonpath) from 1.1.1 to 1.2.1. 
    (#1763)
  - Bumps [dompurify](https://github.com/cure53/DOMPurify) from 3.2.5 to 3.3.1. 
    (#1771)
  - Bumps and [minimatch](https://github.com/isaacs/minimatch). These 
    dependencies needed to be updated together. (#1769)

#### Bug Fixes
  - Fixes scrollbar hang edge case on Discovery page ([#1778](https://github.com/uc-cdis/data-portal/pull/1778)) 

#### Improvements
  - Only create filters for core CDEs ([#1776](https://github.com/uc-cdis/data-portal/pull/1776)) 

## uc-cdis/ecs-ws-sidecar

#### Improvements
  - each file are now showing up in separate lines in the data download 
    notebook ([#23](https://github.com/uc-cdis/ecs-ws-sidecar/pull/23))
  - rename the data download notebook from "data.ipynb" to 
    "download_data.ipynb" ([#23](https://github.com/uc-cdis/ecs-ws-sidecar/pull/23)) 

## uc-cdis/fence

#### Dependency Updates
  - cryptography & protobuf ([#1333](https://github.com/uc-cdis/fence/pull/1333)) 

## uc-cdis/gen3-workflow

#### New Features
  - The S3 endpoint now supports multipart uploads ([#104](https://github.com/uc-cdis/gen3-workflow/pull/104)) 
  - The S3 endpoint now supports the STREAMING-UNSIGNED-PAYLOAD-TRAILER method 
    used by the AWS CLI ([#102](https://github.com/uc-cdis/gen3-workflow/pull/102)) 

#### Breaking Changes
  - Refactor authz resource tree. See 
    https://github.com/uc-cdis/gen3-workflow/blob/master/docs/authorization.md 
    ([#103](https://github.com/uc-cdis/gen3-workflow/pull/103))
  - Rename `/storage/info` to `/storage/setup` since it now also does user 
    authz setup in addition to bucket setup ([#103](https://github.com/uc-cdis/gen3-workflow/pull/103)) 
  - The status endpoint is not reachable at `/` anymore, only at `/_status` 
    ([#102](https://github.com/uc-cdis/gen3-workflow/pull/102))

#### Improvements
  - In case of unexpected errors, calls to S3 are retried with exponential 
    backoff ([#105](https://github.com/uc-cdis/gen3-workflow/pull/105))

## uc-cdis/guppy

#### Dependency Updates
  - Bumps and [minimatch](https://github.com/isaacs/minimatch). These 
    dependencies needed to be updated together. (#360)
  - Bumps [svgo](https://github.com/svg/svgo) from 2.8.0 to 2.8.2. (#361)
  - Bumps [ajv](https://github.com/ajv-validator/ajv) from 6.12.6 to 6.14.0. 
    (#356)
  - Bumps [webpack](https://github.com/webpack/webpack) from 5.95.0 to 5.105.0. 
    (#351)

## uc-cdis/hatchery

#### Bug Fixes
  - Fixed some places that are missing DB creds ([#140](https://github.com/uc-cdis/hatchery/pull/140)) 

#### Improvements
  - Upgrade runtime image to AmazonLinux, built and tested with go 1.26 ([#141](https://github.com/uc-cdis/hatchery/pull/141)) 
  - Make sure the time based cost tracking is idempotent if there are multiple 
    replicas ([#140](https://github.com/uc-cdis/hatchery/pull/140))

## uc-cdis/indexd

#### Improvements
  - Log a warning when the configured DEFAULT_PREFIX does not end with a slash 
    ([#424](https://github.com/uc-cdis/indexd/pull/424))

## uc-cdis/manifestservice

#### Dependency Updates
  - Update authutils library version to reference latest release version ([#77](https://github.com/uc-cdis/manifestservice/pull/77)) 

## uc-cdis/metadata-service

#### Dependency Updates
  - authutils ([#168](https://github.com/uc-cdis/metadata-service/pull/168))

## uc-cdis/sower

#### Improvements
  - Upgrade runtime image to AmazonLinux, built and tested with go 1.26 ([#61](https://github.com/uc-cdis/sower/pull/61)) 

## uc-cdis/ssjdispatcher

#### Improvements
  - Upgrade runtime image to AmazonLinux, built and tested with go 1.26 ([#72](https://github.com/uc-cdis/ssjdispatcher/pull/72)) 

## uc-cdis/tube

#### Dependency Updates
  - update cryptography to 46.0.5 and above ([#313](https://github.com/uc-cdis/tube/pull/313)) 

