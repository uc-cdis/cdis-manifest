# Core Gen3 Release 2026.07 (Hambergite)
## uc-cdis/arborist

#### Dependency Updates
  - Go to 1.26.4 ([#192](https://github.com/uc-cdis/arborist/pull/192))
  - multiple dependencies ([#192](https://github.com/uc-cdis/arborist/pull/192))
  - pre-commit hooks ([#192](https://github.com/uc-cdis/arborist/pull/192))

## uc-cdis/audit-service

#### Dependency Updates
  - click to 8.3.3 ([#107](https://github.com/uc-cdis/audit-service/pull/107))
  - mako to 1.3.12 ([#107](https://github.com/uc-cdis/audit-service/pull/107))
  - urllib3 to 2.7.0 ([#107](https://github.com/uc-cdis/audit-service/pull/107))

## uc-cdis/data-portal

#### Improvements
  - add external links feature to all cases of navbar and topbar buttons 
    ([#1819](https://github.com/uc-cdis/data-portal/pull/1819))
  - Example Analyses tab: Link now opens in new tab with external link 
    indicator ([#1815](https://github.com/uc-cdis/data-portal/pull/1815))
  - DD submission: add more validation to DD submission form to prevent user 
    from submitting unsupported files ([#1816](https://github.com/uc-cdis/data-portal/pull/1816)) 
  - Discovery: downloaded data files now will have hostname, identifier and 
    date information in their filenames ([#1808](https://github.com/uc-cdis/data-portal/pull/1808)) 

#### Dependency Updates
  - Bumps [launch-editor](https://github.com/vitejs/launch-editor) from 2.6.0 
    to 2.14.1. ([#1814](https://github.com/uc-cdis/data-portal/pull/1814))
  - `@babel/preset-env` to 7.29.7 ([#1813](https://github.com/uc-cdis/data-portal/pull/1813)) 
  - Bumps [serialize-javascript](https://github.com/yahoo/serialize-javascript) 
    from 6.0.1 to 6.0.2. ([#1809](https://github.com/uc-cdis/data-portal/pull/1809))
  - Bumps [@protobufjs/utf8](https://github.com/dcodeIO/protobuf.js) from 1.1.0 
    to 1.1.1. ([#1806](https://github.com/uc-cdis/data-portal/pull/1806))
  - Bumps [@xmldom/xmldom](https://github.com/xmldom/xmldom) from 0.8.6 to 
    0.8.13. ([#1805](https://github.com/uc-cdis/data-portal/pull/1805))
  - Bumps [fast-uri](https://github.com/fastify/fast-uri) from 3.1.0 to 3.1.2. 
    ([#1803](https://github.com/uc-cdis/data-portal/pull/1803))

## uc-cdis/fence

#### Bug Fixes
  - usersync: do not swallow errors when updating resources, roles and policies 
    in Arborist ([#1352](https://github.com/uc-cdis/fence/pull/1352))
  - DRS with passport no longer hangs waiting for google group sync for non-GS 
    access ([#1353](https://github.com/uc-cdis/fence/pull/1353))

#### Dependency Updates
  - Pin authlib to a min of 1.6.10 and <=1.6.12 ([#1360](https://github.com/uc-cdis/fence/pull/1360)) 
  - Update poetry to fix SNYK vulnerabilities. ([#1360](https://github.com/uc-cdis/fence/pull/1360)) 
  - click to 8.3.3 ([#1347](https://github.com/uc-cdis/fence/pull/1347))
  - mako to 1.3.12 ([#1347](https://github.com/uc-cdis/fence/pull/1347))
  - urllib3 to 2.7.0 ([#1347](https://github.com/uc-cdis/fence/pull/1347))

## uc-cdis/gen3-workflow

#### New Features
  - Users can now delete their own S3 bucket objects. ([#130](https://github.com/uc-cdis/gen3-workflow/pull/130)) 

#### Bug Fixes
  - S3 endpoint: forward more headers to S3. Specifically, include the `range` 
    header to avoid issues when downloading parts of an object in parallel 
    ([#150](https://github.com/uc-cdis/gen3-workflow/pull/150))
  - Fix the S3 endpoint to forward all the needed headers ([#128](https://github.com/uc-cdis/gen3-workflow/pull/128)) 
  - Fix the S3 endpoint to handle a chunked body that includes the chunk 
    separator characters ([#128](https://github.com/uc-cdis/gen3-workflow/pull/128)) 

#### Improvements
  - Configurable number of gunicorn workers ([#145](https://github.com/uc-cdis/gen3-workflow/pull/145)) 
  - No auto app reload in prod ([#145](https://github.com/uc-cdis/gen3-workflow/pull/145)) 
  - Increase delay and max tries for bucket creation in case of race condition 
    ([#144](https://github.com/uc-cdis/gen3-workflow/pull/144))
  - Cache user bucket information for 12 hours (configurable) to avoid repeated 
    calls to AWS ([#144](https://github.com/uc-cdis/gen3-workflow/pull/144))
  - Cache authorization check information for 5 seconds to avoid repeated calls 
    to Arborist ([#144](https://github.com/uc-cdis/gen3-workflow/pull/144))
  - Handle all "OperationAborted" race condition exceptions during S3 bucket 
    creation ([#141](https://github.com/uc-cdis/gen3-workflow/pull/141))
  - Fix `/setup/storage` authorization check to return 401 before 403 when 
    there is no provided access token ([#140](https://github.com/uc-cdis/gen3-workflow/pull/140)) 
  - Wait for S3 buckets to be created before proceeding with bucket 
    configration updates, to avoid "bucket does not exist" errors ([#139](https://github.com/uc-cdis/gen3-workflow/pull/139)) 
  - Gracefully handle race conditions when creating or updating an S3 bucket 
    ([#139](https://github.com/uc-cdis/gen3-workflow/pull/139))
  - Smarter check for whether a user already has access to their own data 
    ([#137](https://github.com/uc-cdis/gen3-workflow/pull/137))
  - Smarter check for whether a bucket's policy and encryption configuration 
    need to be updated ([#137](https://github.com/uc-cdis/gen3-workflow/pull/137)) 
  - Gracefully handle race conditions when creating or updating an S3 bucket 
    ([#137](https://github.com/uc-cdis/gen3-workflow/pull/137))
  - When KMS encryption is enabled, S3 bucket policies now allow not specifying 
    the encryption or the KMS key, in which case S3 falls back to the default 
    values. ([#137](https://github.com/uc-cdis/gen3-workflow/pull/137))

#### Dependency Updates
  - Bumps the pip group with 2 updates in the / directory: 
    [authlib](https://github.com/authlib/authlib) and 
    [idna](https://github.com/kjd/idna). ([#131](https://github.com/uc-cdis/gen3-workflow/pull/131))
  - Bumps the pip group with 1 update in the / directory: 
    [urllib3](https://github.com/urllib3/urllib3). ([#124](https://github.com/uc-cdis/gen3-workflow/pull/124))
  - Bumps [uvicorn](https://github.com/Kludex/uvicorn) from 0.45.0 to 0.47.0. 
    ([#129](https://github.com/uc-cdis/gen3-workflow/pull/129))
  - Bumps [gunicorn](https://github.com/benoitc/gunicorn) from 23.0.0 to 
    26.0.0. ([#126](https://github.com/uc-cdis/gen3-workflow/pull/126))
  - Bumps [moto](https://github.com/getmoto/moto) from 5.1.22 to 5.2.1. ([#125](https://github.com/uc-cdis/gen3-workflow/pull/125))

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [qs](https://github.com/ljharb/qs) to 6.15.2 and updates ancestor 
    dependencies [qs](https://github.com/ljharb/qs), 
    [express](https://github.com/expressjs/express) and 
    [body-parser](https://github.com/expressjs/body-parser). These dependencies 
    need to be updated together. ([#386](https://github.com/uc-cdis/guppy/pull/386))
  - Bumps [@protobufjs/utf8](https://github.com/dcodeIO/protobuf.js) from 1.1.0 
    to 1.1.1. ([#384](https://github.com/uc-cdis/guppy/pull/384))
  - Bumps [fast-uri](https://github.com/fastify/fast-uri) from 3.1.0 to 3.1.2. 
    ([#381](https://github.com/uc-cdis/guppy/pull/381))

#### New Features
  - Added new filter options CONTAINS_ANY, CONTAINS_ALL, EXCLUDES_ANY, EXCLUDES_ALL. Please refer to [document](https://github.com/user-attachments/files/22173927/_TEMPLATE_.-.Gen3.Community.Feature.Document.template.v1.1.docx) for details ([#331](https://github.com/uc-cdis/guppy/pull/331))

## uc-cdis/hatchery

#### New Features
  - The new `hashed-usernames` setting adds support for generating 
    Kubernetes-safe resource names from hashed usernames instead of plain 
    usernames. This avoids failures caused by long or Kubernetes-incompatible 
    usernames. ([#153](https://github.com/uc-cdis/hatchery/pull/153))

#### Bug Fixes
  - creates new empty file in the paths for the user to make sure that the path 
    exists, otherwise mountpoint-s3 doesn't work and can't mount the path 
    ([#156](https://github.com/uc-cdis/hatchery/pull/156))

#### Dependency Updates
  - Go to 1.26.4 ([#157](https://github.com/uc-cdis/hatchery/pull/157))
  - multiple dependencies ([#157](https://github.com/uc-cdis/hatchery/pull/157))
  - k8s.io/api v0.36.1 ([#155](https://github.com/uc-cdis/hatchery/pull/155))
  - k8s.io/client-go v0.36.1 ([#155](https://github.com/uc-cdis/hatchery/pull/155)) 
  - go 1.26.3 ([#155](https://github.com/uc-cdis/hatchery/pull/155))
  - k8s.io/apimachinery v0.36.1 ([#154](https://github.com/uc-cdis/hatchery/pull/154)) 

#### Deployment Changes
  - Enabling the new `hashed-usernames` setting will cause existing persistent 
    workspace drives to appear lost unless migrated manually to the new naming 
    scheme. ([#153](https://github.com/uc-cdis/hatchery/pull/153))

## uc-cdis/indexd

#### Bug Fixes
  - ensure /bulk/documents supports single table config ([#445](https://github.com/uc-cdis/indexd/pull/445)) 
  - Fixes application logs in indexd by re-enabling loggers after alembic in 
    app.py init. ([#446](https://github.com/uc-cdis/indexd/pull/446))
  - Add check for the stats table to use single table or multi table (record vs 
    index_record) as the seed source, determined by higher record count ([#444](https://github.com/uc-cdis/indexd/pull/444)) 

## uc-cdis/metadata-service

#### Dependency Updates
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 46.0.6 to 
    46.0.7. ([#179](https://github.com/uc-cdis/metadata-service/pull/179))

#### Improvements
  - increase field size limit for AggMDS indices ([#175](https://github.com/uc-cdis/metadata-service/pull/175)) 

## uc-cdis/peregrine

#### Dependency Updates
  - Updated dependencies to fix vulnerabilities reported by SNYK. ([#268](https://github.com/uc-cdis/peregrine/pull/268)) 
  - Cryptography >= 46.0.7 ([#267](https://github.com/uc-cdis/peregrine/pull/267)) 

## uc-cdis/requestor

#### Improvements
  - A status mismatch now prevents updating an existing draft access request 
    ([#86](https://github.com/uc-cdis/requestor/pull/86))
  - Add authorization check when a request's status is set to one of the 
    UPDATE_ACCESS_STATUSES at creation ([#85](https://github.com/uc-cdis/requestor/pull/85)) 

## uc-cdis/sheepdog

#### New Features
  - Bumping lxml version to 6.1.1 ([#471](https://github.com/uc-cdis/sheepdog/pull/471)) 

#### Bug Fixes
  - [SNYK-PYTHON-LXML-16119103](https://security.snyk.io/vuln/SNYK-PYTHON-LXML-16119103)
    resolved. ([#471](https://github.com/uc-cdis/sheepdog/pull/471))

#### Dependency Updates
  - mistune to 3.2.1 ([#472](https://github.com/uc-cdis/sheepdog/pull/472))

## uc-cdis/sower-jobs

#### New Features
  - accepts a new format of input file metadata which contains customized 
    filenames ([#77](https://github.com/uc-cdis/sower-jobs/pull/77))

#### Improvements
  - the file uploaded to S3 for the user will be renamed using the content 
    disposition header ([#77](https://github.com/uc-cdis/sower-jobs/pull/77))

## uc-cdis/sower

#### Dependency Updates
  - Go to 1.26.4 ([#65](https://github.com/uc-cdis/sower/pull/65))
  - multiple dependencies ([#65](https://github.com/uc-cdis/sower/pull/65))
  - k8s.io/api v0.36.1 ([#64](https://github.com/uc-cdis/sower/pull/64))
  - k8s.io/apimachinery v0.36.1 ([#64](https://github.com/uc-cdis/sower/pull/64)) 
  - k8s.io/client-go v0.36.1 ([#64](https://github.com/uc-cdis/sower/pull/64))

## uc-cdis/ssjdispatcher

#### Dependency Updates
  - Go to 1.26.4 ([#77](https://github.com/uc-cdis/ssjdispatcher/pull/77))
  - multiple dependencies ([#77](https://github.com/uc-cdis/ssjdispatcher/pull/77)) 
  - update to detect-secrets hook ([#77](https://github.com/uc-cdis/ssjdispatcher/pull/77)) 
  - github.com/aws/aws-sdk-go-v2 v1.41.9 ([#75](https://github.com/uc-cdis/ssjdispatcher/pull/75)) 
  - github.com/aws/aws-sdk-go-v2/config v1.32.20 ([#75](https://github.com/uc-cdis/ssjdispatcher/pull/75)) 
  - github.com/aws/aws-sdk-go-v2/credentials v1.19.19 ([#75](https://github.com/uc-cdis/ssjdispatcher/pull/75)) 
  - github.com/aws/aws-sdk-go-v2/service/sqs v1.42.29 ([#75](https://github.com/uc-cdis/ssjdispatcher/pull/75)) 
  - k8s.io/api v0.36.1 ([#75](https://github.com/uc-cdis/ssjdispatcher/pull/75))
  - k8s.io/apimachinery v0.36.1 ([#75](https://github.com/uc-cdis/ssjdispatcher/pull/75)) 
  - k8s.io/client-go v0.36.1 ([#75](https://github.com/uc-cdis/ssjdispatcher/pull/75)) 

## uc-cdis/tube

#### Dependency Updates
  - update `cryptography` to 46.0.7 ([#316](https://github.com/uc-cdis/tube/pull/316)) 

## uc-cdis/workspace-token-service

#### Dependency Updates
  - click to 8.3.3 ([#146](https://github.com/uc-cdis/workspace-token-service/pull/146)) 
  - mako to 1.3.12 ([#146](https://github.com/uc-cdis/workspace-token-service/pull/146)) 
  - urllib3 to 2.7.0 ([#146](https://github.com/uc-cdis/workspace-token-service/pull/146)) 

