# Core Gen3 Release 2025.08 (Cuprite)

## Release Highlights and Announcements

#### We've added generic IdP support in Fence. 
- For details, see the [new features](#new-features-2) section of the Fence release notes, below.
  (Note that some previous configuration options have been deprecated and will _eventually_ be removed.)

## uc-cdis/audit-service

#### New Features
  - Adds IP column to login table ([#82](https://github.com/uc-cdis/audit-service/pull/82)) 

#### Bug Fixes
  - Fixed issue where in API mode you could not POST with 'fence_idp': None, 
    'shib_idp': None, 'client_id': None, ([#82](https://github.com/uc-cdis/audit-service/pull/82)) 

## uc-cdis/cloud-automation

#### Improvements
  - add `data.mendeley.com` to squid wl ([#2810](https://github.com/uc-cdis/cloud-automation/pull/2810)) 
  - reduce wts liveness probe to every 60s to reduce DB load ([#2808](https://github.com/uc-cdis/cloud-automation/pull/2808)) 

## uc-cdis/data-portal

#### New Features
  - Adds UI for new (upcoming) search functionality ([#1706](https://github.com/uc-cdis/data-portal/pull/1706)). The complete
    feature will be included in a subsequent release.

#### Improvements
  - Clarify the documentation of the `loginForDownload` setting ([#1708](https://github.com/uc-cdis/data-portal/pull/1708)) 

## uc-cdis/fence

#### New Features
  - Usersync now uses arborist bulk endpoint for granting policies to users. 
    ([#1265](https://github.com/uc-cdis/fence/pull/1265))
  - Generic support of upstream identity providers. Deprecate the 
    `LOGIN_OPTIONS.fence_idp` (string) setting in favor of the new, generic 
    `LOGIN_OPTIONS.upstream_idps` (list of strings) setting. ([#1260](https://github.com/uc-cdis/fence/pull/1260)) 
  - Generic support of upstream identity provider discovery. Add 
    `OPENID_CONNECT.<idp>.idp_discovery` and 
    `OPENID_CONNECT.<idp>.authorization_url_param_map` settings. The discovery 
    currently supports data formats "xml-mdq-v1.0" and "shibboleth". ([#1260](https://github.com/uc-cdis/fence/pull/1260)) 
  - Replace `fence_idp` with `upstream_idp` in code, metrics gathering, and 
    information returned by the user info endpoint (`fence_idp` still returned 
    as well for backwards compatibility) ([#1260](https://github.com/uc-cdis/fence/pull/1260)) 
  - Login audit log will have ip info ([#1254](https://github.com/uc-cdis/fence/pull/1254)) 

#### Improvements
  - Add unit tests for errors from create blank record ([#1276](https://github.com/uc-cdis/fence/pull/1276)) 
  - User registration can now handle a configuration without a 
    `REGISTERED_USERS_GROUP` ([#1260](https://github.com/uc-cdis/fence/pull/1260)) 
  - Cache the results of upstream identity provider discovery for 24 hours 
    (instead of caching until the service is restarted as was the case with the 
    previous Shibboleth discovery support) ([#1260](https://github.com/uc-cdis/fence/pull/1260)) 
  - Updates openapi docs to include GA4GH endpoint for data access with 
    passports. ([#1273](https://github.com/uc-cdis/fence/pull/1273))

#### Dependency Updates
  - Add `defusedxml` dependency and update all dependencies ([#1260](https://github.com/uc-cdis/fence/pull/1260)) 

## uc-cdis/gen3-user-data-library

#### Bug Fixes
  - Fixes first PUT request returning a 401 ([#78](https://github.com/uc-cdis/gen3-user-data-library/pull/78)) 

## uc-cdis/indexs3client

#### Improvements
  - Add a log message for a 403 error from `UpdateIndexdRecord` ([#46](https://github.com/uc-cdis/indexs3client/pull/46)) 

## uc-cdis/metadata-service

#### New Features
  - adds filter "strip_leading_double_underscore" which will remove __ from 
    dictionary object and replace them with _key. ([#138](https://github.com/uc-cdis/metadata-service/pull/138)) 

#### Bug Fixes
  - getting tags in Windber adapter ([#137](https://github.com/uc-cdis/metadata-service/pull/137)) 

## uc-cdis/sower-jobs

#### Improvements
  - batch-export job includes external files ([#69](https://github.com/uc-cdis/sower-jobs/pull/69)) 

#### Dependency Updates
  - Upgrades boto3 to 1.38.31 ([#69](https://github.com/uc-cdis/sower-jobs/pull/69)) 
  - Adds heal-sdk==1.1.1 ([#69](https://github.com/uc-cdis/sower-jobs/pull/69))

## uc-cdis/workspace-token-service

#### Improvements
  - Simplify DB call for health check ([#106](https://github.com/uc-cdis/workspace-token-service/pull/106)) 

