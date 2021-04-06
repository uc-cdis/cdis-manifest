# Core Gen3 Release 202104 (Old Town)

## uc-cdis/fence

#### Improvements
  - Fix broken link: reference to the #create-user-access-file readme section 
    (#881)
  - Add a docstring for `login_user` function (#877)
  - Let fence refreashes access token in cookie before the current one expires 
    (#874)
  - New config option `RENEW_ACCESS_TOKEN_BEFORE_EXPIRATION` is added, default 
    value is `false` (#874)

#### Bug Fixes
  - Fix oauth flow to work even when fence idp not in LOGIN_OPTIONS config 
    (#880)
  - during usersync - update existing roles in Arborist by hitting the new PUT 
    /role/{roleID} endpoint (#843)
  - Fix `/user` endpoint so that idp field is populated for the user. (#877)
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

## uc-cdis/cdis-data-client

#### Improvements
  - `auth` command will checks for `authz` section (Arborist premissions) 
    first, and fallback to check for `project_access` section (Fence 
    premissions) if `authz` section is empty or missing (#86)

#### Bug Fixes
  - Use go module in dockerfile (#85)

## uc-cdis/guppy

#### Improvements
  - adopted helmet for remediating clickjack vulnerability (#115)
  - If slider is blank, do not display. Checking for `"count": 0` (#110)

#### Dependency Updates
  - helmet: 4.4.1 (#115)

#### Dependency Update
  - Update @gen3/ui-component dependency to version 0.6.6 (#113)

#### New Features
  - Tiered-access settings can now be optionally specified at the index-level 
    rather than the site-wide level. This change is backwards compatible with 
    existing site-wide tiered-access settings. Specify index-scoped 
    tiered-access settings in the guppy block of a common's manifest. See 
    `doc/index_scoped_tiered_access.md` for more information. (#104)

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
  - make data dictionary button color will honor the secondary button color 
    (#822)
  - Display warning banner to user and disable job submission button if the 
    user don't have mariner access permission (#815)
  - Updated session monitor and logout inactive user logic, fixing various bugs 
    (401 requests in middle of session, wrongly displayed logout popups, 
    etc...) (#806)
  - hide slider filters in the exploration page when empty (#810)

#### Deployment Changes
  - envs with customized color schemes no longer need to overwrite dictionary 
    button color in their `gitops.css` (#822)
  - New optional config property, tierAccessLevel, in each tab of the 
    explorerConfig block in the portal config. Used to enable index-scoped 
    tiered-access, which is only available starting with Guppy server version 
    0.11.0. See README for more information. (#802)

#### Bug Fixes
  - fix Homepage maps sometimes showing no data/ gray (#821)
  - added backup if api call fails to refresh user (#804)
  - added listeners to iframe when on workspace page (#804)

#### New Features
  - make gray slightly darker to pass WCAG AAA accessibility guidelines (#820)
  - allow charts to wrap when they do not have room to display (#820)
  - update stylelint to newer version (#820)
  - Add Workspace Page Title property to display a title on Workspace Page 
    (#816)
  - Convert workspace Description to have a div holder so more html can be used 
    in description (#816)
  - update map ranges (#814)
  - change component logic so it does not run unnecessarily (#814)
  - Adds support for index-scoped tiered access. New optional config property, 
    tierAccessLevel, in each tab of the explorerConfig block in the portal 
    config. Index-scoped tiered-access only available since Guppy server 
    version 0.11.0. See README for more information. (#802)

#### Dependency Update
  - Update @gen3/ui-component dependency to version 0.6.6 (#820)
  - Update @gen3/guppy dependency to version 0.11.2 (#820)

#### Dependency Updates
  - Should be used with Fence 
    [4.26.1](https://github.com/uc-cdis/fence/releases/tag/4.26.1) (#806)
  - updating guppy version to 0.11.1 (#810)
  - updated NPM to v7 package-lock.json changes (#810)

## uc-cdis/metadata-service

#### Bug Fixes
  - Update GitHub actions to use Coveralls rather than Codacy (#19)
  - add `POSTGRES_HOST_AUTH_METHOD` config in `docker-compose` to fix an error 
    on postgres initialization (#18)
  - remove `--no-dev` from `poetry install` so that `pytest` and other dev 
    dependencies are in the docker image (#18)

#### New Features
  - add `init.sh` script for `docker-compose` to automatically create the test 
    DB (#18)

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

## uc-cdis/mariner

#### New Features
  - Brought back ExpressionTools with EBS, this means ExpressionTools for any 
    given workflow is now executed in its own task pod. Note, EBS was 
    implemented in Mariner release 
    [1.1.0](https://github.com/uc-cdis/mariner/releases/tag/1.1.0) (#45)

#### Deployment Changes
  - ExpressionTools now dispatches as a K8s job outside of the MarinerEngine 
    (#45)

## uc-cdis/mariner

#### New Features
  - Brought back ExpressionTools with EBS, this means ExpressionTools for any 
    given workflow is now executed in its own task pod. Note, EBS was 
    implemented in Mariner release 
    [1.1.0](https://github.com/uc-cdis/mariner/releases/tag/1.1.0) (#45)

#### Deployment Changes
  - ExpressionTools now dispatches as a K8s job outside of the MarinerEngine 
    (#45)

## uc-cdis/cloud-automation

#### New Features
  - Add kube-setup-cogwheel, automate generation of most of the Cogwheel 
    configuration files, log whatever still needs manual configuration, update 
    Cogwheel setup doc to reflect new automation (#1545)
  - Added new optional flag "--get-route-table" (#1534)
  - adding Qualys cloud agent to the squid whitelist (#1541)
  - Add deployment files for the audit service (#1540)
  - Add k8s service, revproxy, other setup, and documentation for new Cogwheel 
    service (#1522)
  - Dynamodb helper script for ACCESS (#1454)
  - Added cron job to update all user visas hourly. (#1513)

#### Bug Fixes
  - Strategically set `https_proxy` to unblock apache beam's GCS upload 
    operations and unset right before g3kubectl cmds. (#1537)

#### Improvements
  - when the older script was taking manual entries for route table, this will 
    allow an option to programmatically get route table(s) from the accepter 
    VPC (#1534)
  - Slack notification for ETL job or cronjob in case of both success or 
    failure (#1543)
  - Add a few additional metrics to the reports-cronjob (#1542)
  - Number of logins per provider (#1542)
  - API invocation rates and response codes for `/ga4gh/drs/v1/objects` 
    endpoint (#1542)
  - Signed URL rates split by provider (s3, gcs etc) (#1542)
  - Slack webhook for visa-update-cronjob (#1532)
  - The nb-etl job now takes several days to run (5 days in QA) - change the 
    schedule to weekly (Thursday 6:00PM Chicago time) (#1536)

#### Deployment Changes
  - Adopting Python 3.8.0 (potentially, several scripts will have to be 
    modified). (#1529)

