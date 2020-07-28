# Core Gen3 Release 202008 (Gold Coast)

## uc-cdis/gen3-statics

#### Improvements
  - Update dependencies to support IAM-linked service accounts. (#5)

## uc-cdis/fence

#### New Features
  - Include at_hash claim in id tokens where an access token is issued 
    alongside (#786)
  - Add ga4gh_visa_v1 table to database (#792)
  - Save user's RAS visas to db upon RAS login (#792)
  - Include ga4gh_passport_v1 claim in userinfo response (#792)
  - Implemented RAS as identity provider. (#787)
  - Handle storing backups of dbGap telemetry files in S3 (#745)
  - Separated "fence-create dbgap-download-access-files" from "fence-create 
    sync" (#745)
  - In usersync, populate user email iff email is provided in useryaml OR 
    username is an email addr (#788)

#### Improvements
  - Refactor UnsignedIDToken class in order to use both CodeIDToken and 
    ImplicitIDToken from Authlib (#786)
  - id token validation is now sensitive to present auth flow type (some claims 
    like nonce and at_hash are validated differently in implicit vs code flow) 
    (#786)

#### Breaking Changes
  - Usersync will no longer populate user's email field in Fence db with the 
    user's username, UNLESS the username is an email address, in which case 
    previous behavior applies (email field is populated with the username). In 
    other words, nothing should change except in cases where usersync was 
    putting invalid emails into user email fields anyway. (#788)

#### Bug Fixes
  - Enable a user who has access to a large number of projects to be able to 
    login successfully when loading the Gen3 authorization page. Previously, 
    for users with access to too many projects, attempting to login and load 
    the authorization page resulted in 502 and 400 errors. (#785)

#### Dependency Updates
  - Fix dependencies so pip parses correctly (#790)
  - storage-client to 1.0.1 (#790)
  - Added dependency email_validator v1.1.1 (#788)

## uc-cdis/guppy

#### New Features
  - Adopted all-new gen3-ui-component with completely refreashed filter 
    components (#92)

#### Bug Fixes
  - Fixed a problem causing `RangeFilter` upper and lower bounds not get 
    updated correctly (#92)

#### Dependency Updates
  - Gen3-ui-component: bump to 0.5.4 (#92)

#### Improvements
  - Let raw data query supports querying nested fields (for table in data 
    explorer) (#86)
  - Let sort variable supports nested fields (#86)

## uc-cdis/indexd

#### Bug Fixes
  - Fix ACL->authz migration script for "[ project, program ]" ACLs (#284)
  - The `object/<guid>/access/<access type>` endpoint throws a 500 instead of a 
    401 when the user is logged in but does not have access to the specific 
    record. (#283)
  - Added a general Fence Error handler when drs fails to catch error from 
    fence (#283)

#### Dependency Updates
  - Add sqlalchemy-utils upper bound "<=0.36.6" in addition to ">=0.33.11" 
    (#284)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#283)

## uc-cdis/data-portal

#### New Features
  - Adopted all-new gen3-ui-component with completely refreashed filter 
    components (#701)
  - Adds a "Download Manifest" button to the success panel of the indexing flow 
    at /indexing. (#694)
  - Adds a "Download Logs" button to the success panel of the generate manifest 
    flow at /indexing if logs are available. (#694)
  - Let table in data explorer support nested fields (#689)

#### Bug Fixes
  - Fixed some CSS issues (#701)
  - Fixed a bug cause `submission` page not correctly displaying `Map My Files` 
    component (#702)
  - Fix issue loading dictionary viewer for null props (#700)
  - Increase indexing GUI timeout (#697)
  - Fixed a bug causing data explorer to crash if don't have 
    `manifestMapping.referenceIdFieldInResourceIndex` in config (#689)

#### Dependency Updates
  - Gen3-ui-component: bump to 0.5.4 (#701)
  - Guppy: bump to 0.7.0 (#701)
  - Guppy 0.6.1 https://github.com/uc-cdis/guppy/pull/86 (#689)

#### Improvements
  - Handle icons and colors for new node categories in dictionary viewer and in 
    project submission page by matching them with existing category suffixes 
    (#703)
  - The project summary table now counts all file nodes instead of only the 
    "data_file" category (e.g. "index_file", "metadata_file") (same behavior as 
    Peregrine/Pidgin) (#703)
  - Refactor the multiple "getCategoryColor" functions into a single one (#703)
  - Login button will be disabled and display a spinner as well as an 
    exploantory tooltip while loading login options (#698)
  - Checks user permissions on project before routing to `ProjectSubmission` 
    component. If that fails (either project is invalid or permissions aren't 
    valid), direct to NotFound. (#695)
  - Checks if file with a given GUID exists before routing to 
    `CoreMetadataPage` component. If that fails, direct to NotFound. (#695)
  - Deal with trailing slash and duplicated slashes in URL when routing (#695)
  - Use exact matched for most of router paths (#695)
  - Homepage chart data request is now chunked to respect Postgres query limits 
    (#699)
  - Increase Indexing GUI s3 upload timeout. (#696)

#### Deployment Changes
  - Portal sould be updated to include this fix if `Indexd` is above `2.12.0` 
    or `2020.07` and user want to use Arborist UI (#702)
  - New optional config field in the index section of gitops.json called 
    homepageChartNodeChunkSize. Sets the value for paritioning requests to 
    Peregrine for the homepage chart. Defaults to 15 if not provided. (#699)

#### Note
  - ~This feature requires both config variables `useArboristUI` and 
    `showArboristAuthzOnProfile` to be set to `true`. Otherwise authorization 
    is not fetched (see 
    [here](https://github.com/uc-cdis/data-portal/blob/774c18df9f412df863e9eab6005f415703ae8a2f/src/actions.js#L484)).
    For local/dev development,~ (#695)
  - ~1. adding those variables to your 
    `[user].planx-pla.net/portal/gitops.json`~ (#695)
  - ~2. logging in~ (#695)
  - ~will enable correct routing to projects that you do have access to. I 
    believe it's outside the scope of this PR to address whether we want these 
    arborist variables to be the gateway for authorization.~ (#695)
  - (Updated by @mfshao) (#695)
  - The redirect to NotFound logic will check against the auth premissions in 
    the `authMapping` returned from Arborist but it will also check to see if a 
    program/project exists in sheepdog via querying peregrine. The reason why 
    we cannot rely complete on `authMapping` was described in 
    https://github.com/uc-cdis/data-portal/blob/master/TECHDEBT.md (#695)

## uc-cdis/sheepdog

#### Bug Fixes
  - Using streaming to export large amount of data (#327)

## uc-cdis/ssjdispatcher

#### New Features
  - Expose api for getting indexing job status (#25)

#### Improvements
  - Remove the get commands from the dockerfile. All the dependencies are 
    staged in vendor (#24)

