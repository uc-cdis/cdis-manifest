#
# # Core Gen3 Release 202103 (North Center) 

## uc-cdis/fence

#### Bug Fixes
  - Fix bug caused by an empty url list when attempting to delete a record. 
    (#870)
  - checks the value of no_force_sign query parameter on 
    /user/data/download/\<guid\> and proceeds to sign urls where this value is 
    false (#873)

#### New Features
  - Implemented support for specifying lifetime of refresh token at the 
    /authorize endpoint via param expires_in (#848)
  - Sync user's authorization information using visas as a source of 
    information post login. (#875)
  - Create base class for syncing visas (#860)
  - Parse RAS visa to usersync readable format (#860)
  - Sync users using visa in usersync. (#860)
  - added logic to update all user visas and refresh tokens. (#869)

#### Deployment Changes
  - REQUIRES A FENCE DB MIGRATION, since with this update there is now an 
    additional column in the authorization_code table 
    "refresh_token_expires_in" (#848)

#### Improvements
  - Let fence refreashes access token in cookie before the current one expires 
    (#874)
  - New config option `RENEW_ACCESS_TOKEN_BEFORE_EXPIRATION` is added, default 
    value is `false` (#874)
  - make sure to set httponly on all cookies (#872)

## uc-cdis/guppy

#### Improvements
  - If slider is blank, do not display. Checking for `"count": 0` (#110)

#### New Features
  - Tiered-access settings can now be optionally specified at the index-level 
    rather than the site-wide level. This change is backwards compatible with 
    existing site-wide tiered-access settings. Specify index-scoped 
    tiered-access settings in the guppy block of a common's manifest. See 
    `doc/index_scoped_tiered_access.md` for more information. (#104)

#### Dependency Update
  - Update @gen3/ui-component dependency to version 0.6.5 (#109)

## uc-cdis/hatchery

#### Improvements
  - Add vim to the image and add a debug log for "more-configs" (#7)

## uc-cdis/indexd

#### Bug Fixes
  - all url query parameters sent to the DRS signed url endpoint now propagate 
    to the corresponding Fence request (instead of stripping off all query 
    params) (#303)

## uc-cdis/pelican

#### New Features
  - updating to pypfb 0.5.8 (#40)
  - install python 3.8 in github action for release (#41)

#### Dependency Updates
  - pypfb = ">=0.5.8" (#40)
  - gen3datamodel = "<3.0.2" (#40)
  - dictionaryutils = "<4.0.0,>=3.2.0" (#40)
  - python_version = ">=3.6" (#40)

## uc-cdis/data-portal

#### Improvements
  - Updated session monitor and logout inactive user logic, fixing various bugs 
    (401 requests in middle of session, wrongly displayed logout popups, 
    etc...) (#806)
  - hide slider filters in the exploration page when empty (#810)

#### Dependency Updates
  - Should be used with Fence 
    [4.26.1](https://github.com/uc-cdis/fence/releases/tag/4.26.1) (#806)
  - updating guppy version to 0.11.1 (#810)
  - updated NPM to v7 package-lock.json changes (#810)

#### New Features
  - Adds support for index-scoped tiered access. New optional config property, 
    tierAccessLevel, in each tab of the explorerConfig block in the portal 
    config. Index-scoped tiered-access only available since Guppy server 
    version 0.11.0. See README for more information. (#802)

#### Deployment Changes
  - New optional config property, tierAccessLevel, in each tab of the 
    explorerConfig block in the portal config. Used to enable index-scoped 
    tiered-access, which is only available starting with Guppy server version 
    0.11.0. See README for more information. (#802)

#### Bug Fixes
  - added backup if api call fails to refresh user (#804)
  - added listeners to iframe when on workspace page (#804)

## uc-cdis/tube

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#140)

## uc-cdis/gen3-fuse

#### Improvements
  - Sleep and retry for WTS every 15s, exit as failed after 5 mins (#33)

## uc-cdis/mariner

#### New Features
  - Brought back ExpressionTools with EBS, this means ExpressionTools for any 
    given workflow is now executed in its own task pod. Note, EBS was 
    implemented in Mariner release 
    [1.1.0](https://github.com/uc-cdis/mariner/releases/tag/1.1.0) (#45)
  - Update Mariner codebase to use go modules (#44)
  - Pin dependencies (#44)
  - Remove `vendor/` folder (#44)
  - Update Docker to `1.15-buster` (#44)

#### Deployment Changes
  - ExpressionTools now dispatches as a K8s job outside of the MarinerEngine 
    (#45)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#45)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#44)

