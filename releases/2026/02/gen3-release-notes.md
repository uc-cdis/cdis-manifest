# Core Gen3 Release 2026.02 (Eudialyte)
## uc-cdis/audit-service

#### Dependency Updates
  - Upgrade to python 3.13 ([#101](https://github.com/uc-cdis/audit-service/pull/101)) 

## uc-cdis/data-portal

#### Improvements
  - Discovery: add file manifest and external file metadata information to 
    `datasetDownload` and `exportToWorkspace` Faro events ([#1749](https://github.com/uc-cdis/data-portal/pull/1749)) 
  - Discovery: add a new Faro event `dataFileDownload` ([#1749](https://github.com/uc-cdis/data-portal/pull/1749)) 

## uc-cdis/ecs-ws-sidecar

#### Bug Fixes
  - make sure all dirs have the proper UID set up ([#22](https://github.com/uc-cdis/ecs-ws-sidecar/pull/22)) 

## uc-cdis/fence

#### Improvements
  - Replace raw strings in `session.execute()` with `sqlalchemy.text` ([#1312](https://github.com/uc-cdis/fence/pull/1312)) 
  - Update deprecated `datetime.utcnow()` and `datetime.utcfromtimestamp()` 
    with 3.13 compatible equivalents ([#1312](https://github.com/uc-cdis/fence/pull/1312)) 
  - Replace deprecated `request` attributes with `request.payload` ([#1312](https://github.com/uc-cdis/fence/pull/1312)) 
  - Replace deprecated SqlAlchemy's `query.get()` with `Session.get()` ([#1312](https://github.com/uc-cdis/fence/pull/1312)) 
  - Eliminate all `boto` usage in favor of `boto3` ([#1312](https://github.com/uc-cdis/fence/pull/1312)) 
  - Add a local implementation of `strtobool` since `distutils` is no longer 
    available since Python 3.12 ([#1312](https://github.com/uc-cdis/fence/pull/1312)) 
  - Add `NoAsyncMagicMock` since `MagicMock` returns `AsyncMocks` even if the 
    source object is partially async ([#1312](https://github.com/uc-cdis/fence/pull/1312)) 
  - Replace `assert <mocked_method>.not_called` with 
    `<mocked_method>.assert_not_called` ([#1312](https://github.com/uc-cdis/fence/pull/1312)) 

#### Dependency Updates
  - Update gen3config, cdiserrors, authutils, cdislogging and userdatamodel to 
    the latest version (Python 3.13 support) ([#1317](https://github.com/uc-cdis/fence/pull/1317)) 
  - Update Fence to Python 3.13 ([#1312](https://github.com/uc-cdis/fence/pull/1312)) 

#### Deployment Changes
  - Change Docker image to run with `gen3` user instead of `root` ([#1312](https://github.com/uc-cdis/fence/pull/1312)) 

## uc-cdis/gen3-user-data-library

#### Dependency Updates
  - urllib3 >=2.6.0 ([#82](https://github.com/uc-cdis/gen3-user-data-library/pull/82)) 

## uc-cdis/gen3-workflow

#### Bug Fixes
  - Fix Parameter validation error when updating IAM policy document ([#96](https://github.com/uc-cdis/gen3-workflow/pull/96)) 
  - Files uploaded to S3 through streamed requests do not include chunk 
    signatures anymore ([#95](https://github.com/uc-cdis/gen3-workflow/pull/95))

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [qs](https://github.com/ljharb/qs) to 6.14.1 and updates ancestor 
    dependencies [qs](https://github.com/ljharb/qs), 
    [express](https://github.com/expressjs/express) and 
    [body-parser](https://github.com/expressjs/body-parser). These dependencies 
    need to be updated together. (#342)
  - Bumps 
    [storybook](https://github.com/storybookjs/storybook/tree/HEAD/code/core) 
    from 7.6.20 to 7.6.21. (#341)

## uc-cdis/hatchery

#### New Features
  - Add support for GPU workspaces in AWS ([#138](https://github.com/uc-cdis/hatchery/pull/138)) 

## uc-cdis/peregrine

#### Bug Fixes
  - Removed unused/migrated modules ([#256](https://github.com/uc-cdis/peregrine/pull/256)) 

#### Dependency Updates
  - python to 3.13 ([#256](https://github.com/uc-cdis/peregrine/pull/256))
  - urllib3 to 2.6.2 ([#256](https://github.com/uc-cdis/peregrine/pull/256))
  - werkzeug to 3.1.4 ([#256](https://github.com/uc-cdis/peregrine/pull/256))

## uc-cdis/requestor

#### Improvements
  - Fix and re-enable database migrations unit tests ([#82](https://github.com/uc-cdis/requestor/pull/82)) 

#### Dependency Updates
  - Update Python from 3.9 to 3.13 ([#82](https://github.com/uc-cdis/requestor/pull/82)) 
  - Remove Gino, use sqlalchemy ([#82](https://github.com/uc-cdis/requestor/pull/82)) 

## uc-cdis/sheepdog

#### Dependency Updates
  - urllib3 updated to > 2.6.0 ([#462](https://github.com/uc-cdis/sheepdog/pull/462)) 
  - Python version upgraded to 3.13 ([#459](https://github.com/uc-cdis/sheepdog/pull/459)) 

## uc-cdis/tube

#### Improvements
  - replace ElasticSearch client with OpenSearch client ([#309](https://github.com/uc-cdis/tube/pull/309)) 

#### Dependency Updates
  - requests to 2.32.5 ([#309](https://github.com/uc-cdis/tube/pull/309))
  - urllib3 to 2.6.2 ([#309](https://github.com/uc-cdis/tube/pull/309))
  - removed moto/boto3 dev dependency ([#309](https://github.com/uc-cdis/tube/pull/309)) 

## uc-cdis/workspace-token-service

#### Dependency Updates
  - python to 3.13 ([#117](https://github.com/uc-cdis/workspace-token-service/pull/117)) 
  - urllib3 to 2.6.2 ([#116](https://github.com/uc-cdis/workspace-token-service/pull/116)) 
  - werkzeug to 3.1.4 ([#116](https://github.com/uc-cdis/workspace-token-service/pull/116)) 

