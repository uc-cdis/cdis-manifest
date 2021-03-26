# 

## uc-cdis/fence

#### Improvements
  - Add _status and _version endpoints to Swagger doc (#888)

#### New Features
  - Audit Service integration: Fence creates audit logs for data downloads and 
    user logins (#885)

#### Deployment Changes
  - Audit logs for user logins and data downloads can be enabled by deploying 
    the audit-service and adding setting `ENABLE_AUDIT_LOGS` to the fence 
    config (see 
    https://github.com/uc-cdis/fence/blob/1c850d07e54f8527dbde182fdd9dd593d18f660e/fence/config-default.yaml#L586-L588)
    (#885)

#### Bug Fixes
  - allow user to authenticate to gen3 successfully even if we fail to retrieve 
    RAS visa during login. (#834)

## uc-cdis/cdis-data-client

#### Improvements
  - `auth` command will checks for `authz` section (Arborist premissions) 
    first, and fallback to check for `project_access` section (Fence 
    premissions) if `authz` section is empty or missing (#86)

## uc-cdis/guppy

#### Improvements
  - adopted helmet for remediating clickjack vulnerability (#115)

#### Dependency Updates
  - helmet: 4.4.1 (#115)

#### Dependency Update
  - Update @gen3/ui-component dependency to version 0.6.6 (#113)

## uc-cdis/pelican

#### New Features
  - adding authz fields to guid pfb export (#46)
  - Updating readme and releasing (#45)
  - fixed all instances of github action tokens (#44)
  - updating readme for new release (#43)
  - updating to pypfb 0.5.8 (#40)
  - install python 3.8 in github action for release (#41)

#### Bug Fixes
  - Fixed github token definition for release action (#42)

#### Dependency Updates
  - pypfb = ">=0.5.8" (#40)
  - gen3datamodel = "<3.0.2" (#40)
  - dictionaryutils = "<4.0.0,>=3.2.0" (#40)
  - python_version = ">=3.6" (#40)

## uc-cdis/data-portal

#### Improvements
  - Clarified documentation on study viewer. (#817)
  - Add `ellipsis` and `width` options to `studyColumns` (#828)
  - make map legend slightly transparent (#827)
  - Fixed Pentest Info Disclosure: Support Packages & Config Files 
    vulnerability (#824)
  - Fixed Pentest Outdated Nginx Version vulnerability (#824)
  - Use NPM 7 in dockerfile (#824)
  - Use Ubuntu 20.04 as base image in dockerfile (#824)
  - Use Nginx 1.18 in dockerfile (#824)

## uc-cdis/sheepdog

#### Bug Fixes
  - Fix 500 error from Sheepdog when Indexd is unavailable (#335)
  - Fix mapping files for any node category ending in `"_file"` (#334)
  - Fix duplication of application logging messages by not propagating (#334)
  - Accept TSV submissions with empty link columns, for links that are not 
    required (#331)
  - Only write acl and authz fields of corresponding Indexd record during data 
    submission iff both fields are empty to begin with. Prevents authz field 
    from being unintentionally populated in commons not using authz. (#330)
  - Using streaming to export large amount of data (#327)
  - This should address the compatibility issue with authlib `0.14.3` (#325)
  - When exporting entities as a tsv file Null values would have 'None' instead 
    of an empty string. This would cause an error when resubmitting. Fixed by 
    checking file format and making Null values an empty string when the format 
    is tsv. (#323)
  - Fix sheepdog X.0 integer handling (#322)

#### Improvements
  - Set application log level based on 
    [`GEN3_DEBUG`](https://github.com/uc-cdis/cloud-automation/blob/a49af964e3b440883c3294f6138295d81855fc86/kube/services/sheepdog/sheepdog-deploy.yaml#L120)
    environment variable (#334)
  - Existing links can be removed by explicitly setting them to None in 
    submissions (use null in JSON, empty values in TSV/CSV) (#331)
  - The formats of exported and imported files (JSON and TSV) now match (#318)

#### Dependency Updates
  - dictionaryutils to 3.4.0 (#331)
  - dictionaryutils to 3.1.0 (#320)
  - pin cryptography 2.8 b/c of known bug with 2.9 (#324)

#### Breaking Changes
  - Note that this PR will cause Sheepdog behavior to change slightly during a 
    data submission flow in which the acl and/or authz field are previously 
    populated in the corresponding Indexd record and the Indexd uploader field 
    is not null and the Sheepdog submitter does not match the Indexd uploader. 
    While the existing behavior will cause data submission to fail and report 
    an error message to the user, this PR’s changes will mean that data 
    submission can still succeed in this case of populated acl/authz and 
    uploader mismatch. I believe this change in behavior is not problematic in 
    that it would be unexpected in any commons for uploader and (acl and/or 
    authz) to both be populated. (#330)
  - Having admin: true in user.yaml no longer allows a user to do 
    program/project CRUD in Sheepdog. Users now need to have the Sheepdog admin 
    policy in Arborist. (#319)

#### Deployment Changes
  - The environment's user.yaml needs to be updated to add the new Sheepdog 
    admin policy/resources/roles; for each user that has admin: true, grant 
    them the new policy. See https://github.com/uc-cdis/commons-users/pull/810 
    for an example. (#319)

#### New Features
  - Implemented the ability to remove values from fields that are not required 
    in existing entities (use null in JSON, empty values in TSV/CSV). (#320)
  - Switch checks guarding program/project CRUD to centralized auth (instead of 
    checking for "admin" in JWT, check for Sheepdog admin policy in Arborist) 
    (#319)

## uc-cdis/ssjdispatcher

#### Improvements
  - Link to cloud-automation setup docs (#37)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#37)

## uc-cdis/tube

#### Bug Fixes
  - Fix bug where whitespace is unintentionally left in name (#143)

## uc-cdis/metadata-service

#### New Features
  - add DELETE /objects/{guid} endpoint to delete indexd and metadata records 
    (#20)
  - add `init.sh` script for `docker-compose` to automatically create the test 
    DB (#18)

#### Bug Fixes
  - Update GitHub actions to use Coveralls rather than Codacy (#19)
  - add `POSTGRES_HOST_AUTH_METHOD` config in `docker-compose` to fix an error 
    on postgres initialization (#18)
  - remove `--no-dev` from `poetry install` so that `pytest` and other dev 
    dependencies are in the docker image (#18)

#### Improvements
  - `docker-compose` update to add the `PATH` for app binaries at `/env`, which 
    removes the need for `poetry run` prefixes on some commands (#18)

## uc-cdis/mariner

#### New Features
  - Brought back ExpressionTools with EBS, this means ExpressionTools for any 
    given workflow is now executed in its own task pod. Note, EBS was 
    implemented in Mariner release 
    [1.1.0](https://github.com/uc-cdis/mariner/releases/tag/1.1.0) (#45)

#### Deployment Changes
  - ExpressionTools now dispatches as a K8s job outside of the MarinerEngine 
    (#45)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#45)

## uc-cdis/cloud-automation

#### New Features
  - Make copies of the "nb-etl" files; rename them "covid19-notebook-etl". The 
    new "covid19-notebook-etl" job (daily) only runs notebooks. The old files 
    will stay here until we can completely deprecate the "nb-etl" job (weekly), 
    which runs notebooks + the Bayes model. The "nb-etl" job will eventually be 
    replaced by a "covid19-bayes-model" job that only runs the Bayes model. 
    (#1556)

#### Dependency Updates
  - Bumps [ini](https://github.com/isaacs/ini) from 1.3.5 to 1.3.7. (#1470)

#### Improvements
  - Roll all: deploy audit-service before fence (#1548)

