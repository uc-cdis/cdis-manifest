# Core Gen3 Release 2025.06 (Covellite)
## uc-cdis/audit-service

#### Dependency Updates
  - bumped `jinja2` to `3.1.6`. ([#78](https://github.com/uc-cdis/audit-service/pull/78)) 
  - Bumps the pip group with 1 update in the / directory: 
    [gunicorn](https://github.com/benoitc/gunicorn). (#75)

## uc-cdis/cloud-automation

#### New Features
  - Add prometheus metrics support to gen3-workflow ([#2762](https://github.com/uc-cdis/cloud-automation/pull/2762)) 

#### Improvements
  - Fix typo ([#2775](https://github.com/uc-cdis/cloud-automation/pull/2775))
  - suppress health check logging ([#2772](https://github.com/uc-cdis/cloud-automation/pull/2772)) 
  - make user `ubuntu` be the owner of `/opt/gen3_venv` for package 
    installation ([#2773](https://github.com/uc-cdis/cloud-automation/pull/2773)) 
  - Add a github action that quickly verifies squid rule changes using 
    `quay.io/cdis/squid:master` image ([#2771](https://github.com/uc-cdis/cloud-automation/pull/2771)) 

## uc-cdis/data-portal

#### New Features
  - Updates business logic so that for repositories with which we are 
    interoperating via a workspace/notebook-based solution instead of indexing 
    (e.g., Syracuse QDR and Harvard Dataverse), the Download Zip and Download 
    Manifest buttons are be disabled, even when there is a value in the AuthZ 
    field. ([#1690](https://github.com/uc-cdis/data-portal/pull/1690))

#### Improvements
  - The CDE pick list now can handle CDEs that don't have a drupal ID ([#1700](https://github.com/uc-cdis/data-portal/pull/1700)) 
  - Adding specifc classname to each login option to allow application of 
    special styling if needed. ([#1692](https://github.com/uc-cdis/data-portal/pull/1692)) 
  - https://github.com/uc-cdis/cdis-manifest/pull/8592 ([#1692](https://github.com/uc-cdis/data-portal/pull/1692)) 

#### Dependency Updates
  - update `@babel/runtime-corejs3` to 7.27.1 ([#1701](https://github.com/uc-cdis/data-portal/pull/1701)) 
  - Bumps 
    [@babel/runtime](https://github.com/babel/babel/tree/HEAD/packages/babel-runtime)
    from 7.21.0 to 7.27.0. (#1694)
  - Bumps 
    [http-proxy-middleware](https://github.com/chimurai/http-proxy-middleware) 
    from 2.0.7 to 2.0.9. (#1698)
  - Bumps 
    [@babel/helpers](https://github.com/babel/babel/tree/HEAD/packages/babel-helpers)
    from 7.26.0 to 7.26.10. (#1680)
  - Bumps [tar-fs](https://github.com/mafintosh/tar-fs) from 2.1.1 to 2.1.2. 
    (#1693)
  - replace `showdown` with `marked` ([#1691](https://github.com/uc-cdis/data-portal/pull/1691)) 

## uc-cdis/fence

#### Bug Fixes
  - Fix user registration by overriding the default digest method used by 
    itsdangerous for flask wtf ([#1250](https://github.com/uc-cdis/fence/pull/1250))
  - Ensure prometheus env var and directory exist by adding to Dockerfile
    (eventually we should do this in the base image) ([#1259](https://github.com/uc-cdis/fence/pull/1259))

#### Improvements
  - Add native docker builds for amd and arm in github actions. ([#1236](https://github.com/uc-cdis/fence/pull/1236)) 
  - IP Address of user is now logged ([#1245](https://github.com/uc-cdis/fence/pull/1245))
  - Clear out old, unused files and code ([#1259](https://github.com/uc-cdis/fence/pull/1259))
  - Clarify what the `MAX_ACCESS_TOKEN_TTL` setting is for in the configuration 
    comments ([#1247](https://github.com/uc-cdis/fence/pull/1247))

#### Dependency Updates
  - Bump `jinja2` to `^3.1.6`. ([#1246](https://github.com/uc-cdis/fence/pull/1246)) 
  - Updated to use Quay.io instead of ECR ([#1243](https://github.com/uc-cdis/fence/pull/1243)) 
  - Bumped `cryptography` to `44.0.1` ([#1240](https://github.com/uc-cdis/fence/pull/1240)) 

## uc-cdis/gen3-user-data-library

#### Improvements
  - Uses library_owner role in arborist to assign permissions for user managed 
    lists rather than generic "create", "read", "update", "delete" roles. ([#64](https://github.com/uc-cdis/gen3-user-data-library/pull/64)) 
  - Improve README (fix broken links, clean up) ([#63](https://github.com/uc-cdis/gen3-user-data-library/pull/63)) 

#### Deployment Changes
  - user.yaml should be updated to include library_owner role. See 
    https://github.com/uc-cdis/gen3-user-data-library/blob/47ab4040f6947d02ea37823a4a8a39c979b46b59/README.md#authz
    for more details. ([#64](https://github.com/uc-cdis/gen3-user-data-library/pull/64)) 

## uc-cdis/guppy

#### Dependency Updates
  - update `@babel/runtime-corejs3` to 7.27.1 ([#318](https://github.com/uc-cdis/guppy/pull/318)) 
  - Bumps 
    [@babel/runtime](https://github.com/babel/babel/tree/HEAD/packages/babel-runtime)
    from 7.25.7 to 7.27.0. (#314)
  - Bumps 
    [@babel/helpers](https://github.com/babel/babel/tree/HEAD/packages/babel-helpers)
    from 7.25.7 to 7.26.10. (#310)
  - Bumps [tar-fs](https://github.com/mafintosh/tar-fs) from 2.1.1 to 2.1.2. 
    (#311)

## uc-cdis/manifestservice

#### Dependency Updates
  - bump `jinja2` to `>=3.1.6`. ([#66](https://github.com/uc-cdis/manifestservice/pull/66)) 

## uc-cdis/pelican

#### Improvements
  - Adds cdislogging to pelican, allowing operators to change the log levels 
    for pelican ([#96](https://github.com/uc-cdis/pelican/pull/96))

## uc-cdis/sheepdog

#### Improvements
  - Fix the validation of dictionaries that include nested subgroups of links 
    ([#436](https://github.com/uc-cdis/sheepdog/pull/436))

#### Dependency Updates
  - Use `gen3datamodel` version `3.2.4` and `dictionaryutils` version 3.5.0, 
    which use the `gen3dictionary` Pypi package instead of the `gdcdictionary` 
    git package ([#436](https://github.com/uc-cdis/sheepdog/pull/436))

