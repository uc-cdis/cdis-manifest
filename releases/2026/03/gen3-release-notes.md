# Core Gen3 Release 2026.03 (Fergusonite)
## uc-cdis/audit-service

#### Dependency Updates
  - Bump up urllib3 version requirement ([#102](https://github.com/uc-cdis/audit-service/pull/102)) 

## uc-cdis/cloud-automation

#### Improvements
  - Add rust, kernel, lua to whitelist ([#2853](https://github.com/uc-cdis/cloud-automation/pull/2853)) 
  - Add new curl to whitelist ([#2852](https://github.com/uc-cdis/cloud-automation/pull/2852)) 
  - Add curl.haxx.se to squid whitelist ([#2851](https://github.com/uc-cdis/cloud-automation/pull/2851)) 
  - Add `spack.io` and `gnu.org` to whitelist ([#2850](https://github.com/uc-cdis/cloud-automation/pull/2850)) 

## uc-cdis/fence

#### Improvements
  - Update S3_BUCKETS documentation to mention regex support for bucket names 
    and skipping signing for public buckets ([#1331](https://github.com/uc-cdis/fence/pull/1331)) 

#### Dependency Updates
  - azure-core to 1.38.0 for sec ([#1329](https://github.com/uc-cdis/fence/pull/1329)) 
  - Update urllib3 depedency version ([#1327](https://github.com/uc-cdis/fence/pull/1327)) 

## uc-cdis/gen3-workflow

#### New Features
  - Add `DELETE /user-bucket/objects` endpoint ([#101](https://github.com/uc-cdis/gen3-workflow/pull/101)) 

#### Bug Fixes
  - Fix TES invalid request handling ([#101](https://github.com/uc-cdis/gen3-workflow/pull/101)) 

#### Improvements
  - Add test coverage to aws_utils create_iam_role function ([#98](https://github.com/uc-cdis/gen3-workflow/pull/98)) 
  - Remove database-related logic since Gen3-Workflow does not currently use a 
    database ([#97](https://github.com/uc-cdis/gen3-workflow/pull/97))
  - Enable required linter checks on the repository ([#97](https://github.com/uc-cdis/gen3-workflow/pull/97)) 

#### Dependency Updates
  - Python 3.13 ([#97](https://github.com/uc-cdis/gen3-workflow/pull/97))

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [lodash](https://github.com/lodash/lodash) from 4.17.21 to 4.17.23. 
    (#347)

#### Bug Fixes
  - Fix introspection = true to allow schema and autocomplete in the GraphQL 
    playground. ([#344](https://github.com/uc-cdis/guppy/pull/344))

## uc-cdis/indexd

#### Improvements
  - Support Python 3.13 ([#413](https://github.com/uc-cdis/indexd/pull/413))

#### Dependency Updates
  - python = ">=3.13,<4.0" ([#413](https://github.com/uc-cdis/indexd/pull/413))
  - gen3authz = "^3.0" ([#413](https://github.com/uc-cdis/indexd/pull/413))
  - gitpython = "^3.1.45" ([#413](https://github.com/uc-cdis/indexd/pull/413))
  - requests = "^2.32.5" ([#413](https://github.com/uc-cdis/indexd/pull/413))
  - setuptools = "^80.9.0" ([#413](https://github.com/uc-cdis/indexd/pull/413))
  - psycopg2-binary = "^2.9.11" ([#413](https://github.com/uc-cdis/indexd/pull/413)) 
  - deptry = "^0.23.1" ([#413](https://github.com/uc-cdis/indexd/pull/413))

## uc-cdis/manifestservice

#### Dependency Updates
  - poetry update, urllib3 now 2.6.3 ([#76](https://github.com/uc-cdis/manifestservice/pull/76)) 

## uc-cdis/metadata-service

#### Bug Fixes
  - Gen3 AggMDS adapter now can return all data ([#164](https://github.com/uc-cdis/metadata-service/pull/164)) 

## uc-cdis/pelican

#### Breaking Changes
  - Upgrading to Python 3.13, 3.9 will no longer be supported ([#105](https://github.com/uc-cdis/pelican/pull/105)) 

#### Dependency Updates
  - Python 3.13 ([#105](https://github.com/uc-cdis/pelican/pull/105))

## uc-cdis/peregrine

#### Dependency Updates
  - update cryptography, authutils and cdispyutils ([#262](https://github.com/uc-cdis/peregrine/pull/262)) 
  - poetry update, urllib3 now 2.6.3 ([#261](https://github.com/uc-cdis/peregrine/pull/261)) 

## uc-cdis/sheepdog

#### Improvements
  - Add logs to facilitate debugging "UnicodeDecodeError" during data 
    submission ([#466](https://github.com/uc-cdis/sheepdog/pull/466))

#### Dependency Updates
  - Bump urllib3 to require 2.6.3 or higher. ([#465](https://github.com/uc-cdis/sheepdog/pull/465)) 
  - Address pkg_resources deprecation warning ([#465](https://github.com/uc-cdis/sheepdog/pull/465)) 

## uc-cdis/sower-jobs

#### Dependency Updates
  - Bumps the pip group with 1 update in the /export_job directory: 
    [pillow](https://github.com/python-pillow/Pillow). (#74)
  - python to 3.13 ([#73](https://github.com/uc-cdis/sower-jobs/pull/73))
  - requests to 2.32.5 in `/export_job` ([#73](https://github.com/uc-cdis/sower-jobs/pull/73)) 

## uc-cdis/tube

#### Dependency Updates
  - poetry update, urllib3 now 2.6.3 ([#312](https://github.com/uc-cdis/tube/pull/312)) 

## uc-cdis/workspace-token-service

#### Dependency Updates
  - cryptography to >=46.0.5 ([#126](https://github.com/uc-cdis/workspace-token-service/pull/126)) 
  - Increment pyproject.toml version and relock for new release ([#125](https://github.com/uc-cdis/workspace-token-service/pull/125)) 
  - Added pyasn1 as an explicit dependency with a minimum version number. Prior 
    pre-existing dependencies already used pyasn1, but those packages allowed a 
    lower version number of pyasn1. Updated poetry lock accordingly. ([#124](https://github.com/uc-cdis/workspace-token-service/pull/124)) 

