# Core Gen3 Release

## uc-cdis/arborist

#### New Features
  - Add `PATCH /user/{username}` endpoint (#140)

#### Improvements
  - `/auth/request` now can take `user_id` in body instead of just `token` to 
    check user's access (#139)

## uc-cdis/gen3-statics

#### Improvements
  - Use Quay image for node 12 to fix "too many requests" from DockerHub (#10)

## uc-cdis/fence

#### Bug Fixes
  - Fix issue with IdP subject being sent to audit log on login instead of Gen3 
    subject (#982)
  - Fix the redirection to the default IDP in the `/oauth2/authorize` endpoint: 
    when the default IDP is "fence", include `idp` and `shib_idp` query 
    parameters (#977)

#### Improvements
  - scopes and discovery_url are overridable per oauth client in the 
    configuration (#994)
  - Update the unit tests so we don't make real requests to get the list of 
    InCommon IDPs (#977)

## uc-cdis/cdis-data-client

#### Bug Fixes
  - Misc: version checker will only check relevant tag formats (monthly-monthly 
    or sematic-sematic) (#105)

#### Improvements
  - Misc: various linter fixer (#105)

## uc-cdis/hatchery

#### New Features
  - adding golangci-lint (#37)

## uc-cdis/indexd

#### Dependency Updates
  - Use new Python base image (now: Debian, before: Alpine) (#324)

## uc-cdis/manifestservice

#### Bug Fixes
  - update to latest base image to avoid issue with dockerrun (#27)

## uc-cdis/peregrine

#### Bug Fixes
  - update to latest base image to avoid issue with dockerrun (#183)

## uc-cdis/pidgin

#### Bug Fixes
  - update base image to fix issue in dockerrun (#42)

## uc-cdis/data-portal

#### New Features
  - Study viewer: hide empty fields with new `hideEmptyFields` flag (#952)
  - Add button to export study to workspace (#949)
  - Add documentation for new button (#949)
  - Add messaging for when export is in progress (#949)
  - persist discovery page state when navigating tabs (#942)
  - reload prior discovery page state and download/export action after logging 
    in (#942)
  - hide empty fields with new flag (#950)

#### Improvements
  - Do not display the "Export PFB to workspace" button to users without 
    workspace access (#953)
  - don't require clicking "OK" to filter by data accessibility (#942)
  - redirect back to `dev.html` when logging out in dev mode (#942)
  - remove lots of redundant filtering from whenever discovery component 
    renders (#942)

#### Bug Fixes
  - keep tags filters consistent between discovery table and dropdown tag 
    viewer (#942)
  - correctly handle job status response when status code is 200 but user isn't 
    logged in (#942)
  - Fixed a bug causing webpack script to errors out if no `featureFlags` 
    blocks in portal config (#947)

## uc-cdis/sheepdog

#### Bug Fixes
  - update to latest base image to avoid issue with dockerrun (#361)

## uc-cdis/sower

#### New Features
  - adding golangci-lint (#27)

#### Bug Fixes
  - fix `Error: the given key ID was not found in the JWKs`, it was looking 
    into the wrong URL for JWKs... (#31)
  - fix for incorrect usage of `log.Debug` vs `log.Debugf` (#30)
  - Fix for `x509: certificate signed by unknown authority` (#25)

#### Improvements
  - do not output authentication token to logs (#29)
  - Proper verification of JWT token (#25)
  - Update Go 1.17 (requirements to properly verify JWT token (#25)
  - Build flags to make GitCommit and GitVersion available for the code (#25)

#### Dependency Updates
  - Remove unused dependencies with go mod tidy (#28)

#### Deployment Changes
  - PS: This is follow-up on this one: #24 (#25)

## uc-cdis/sower-jobs

#### Bug Fixes
  - update to latest base image to avoid issue with dockerrun (#36)

#### New Features
  - New python base image (#32)
  - New python base image (#33)
  - New python base image (#34)
  - New python base image (#35)

## uc-cdis/ssjdispatcher

#### New Features
  - golangci-lint (#42)

#### Improvements
  - Build flags to make GitCommit and GitVersion available for the code (#41)

## uc-cdis/tube

#### Bug Fixes
  - missing multi level nested field in array_config (#162)

## uc-cdis/gen3-fuse

#### New Features
  - adding golangci-lint (#37)

## uc-cdis/dcf-dataservice

#### New Features
  - Add logic for modifying validation process when files are expected to be 
    redacted (#98)
  - Validation process still error out as it did previously, but when 
    FORCE_CREATE_MANIFEST True it will proceed to create a manifest output 
    instead of halt the entire validation process (#98)

#### Improvements
  - Change logic so that when `FORCE_CREATE_MANIFEST` is true, the resulting 
    manifest file does not contain a `FAIL_` prefix (#99)
  - Add more logs surrounding creating validation output manifest (#99)

#### Dependency Updates
  - Change order of install for apache beam and setuptools packages based on 
    https://stackoverflow.com/questions/61078477/apache-beam-2-19-0-not-running-on-cloud-dataflow-anymore-due-to-could-not-find-a
    as a solution to error during google replicate job (#100)

## uc-cdis/ws-storage

#### New Features
  - adding golangci-lint (#4)

#### Improvements
  - Build flags to make GitCommit and GitVersion available for the code (#3)

## uc-cdis/ws-storage

#### New Features
  - adding golangci-lint (#4)

#### Improvements
  - Build flags to make GitCommit and GitVersion available for the code (#3)

## uc-cdis/cloud-automation

#### New Features
  - Updated psql client to version 13, so that it can work with new rds psql 
    version (#1809)
  - New cronjob to remove expired Google Access based on expirations set in 
    Fence (#1750)
  - Adding cronjob version check to the `gitops-sync` function (#1785)
  - Deploy and configure Atlas (#1705)
  - Add FORCE_CREATE_MANIFEST var to env section of yaml file, additional pr to 
    finish task from https://github.com/uc-cdis/cloud-automation/pull/1793 
    (#1797)
  - Expose Arborist's "/policy" endpoint for users with access (#1796)
  - Add param FORCE_CREATE_MANIFEST to dcf-dataservice validation job (#1793)
  - Add new job and cron job for the Rt & Daily Cases - Cook County (Generative 
    Bayes Model) (#1775)

#### Bug Fixes
  - Updated whitelist to include new file locations needed for selenium (#1803)
  - Fixed bug around covid19 cronjob setup in gitops-sync (#1798)
  - Ensured jq is installed so that healtcheck script can function correctly 
    (#1786)

#### Improvements
  - Increase timeout for `aws-es-proxy` client (#1801)

#### Deployment Changes
  - Newer versions of fence + Google enabled = new cronjob to remove temporary 
    Google access from GA4GH Passports (#1750)
  - Envs that is using `AggMDS` should consider to use `aws-es-proxy: 1.2+` 
    (#1801)
  - New jobs must be deployed using `gen3 job run covid19-bayes S3_BUCKET 
    <S3_BUCKET>` and `gen3 job run covid19-bayes-cronjob S3_BUCKET <S3_BUCKET>` 
    (#1775)

