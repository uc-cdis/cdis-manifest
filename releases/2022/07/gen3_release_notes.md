# Core Gen3 Release 2022.07 (Citrine)

## uc-cdis/arborist

#### Improvements
  - Add a log when the user or client is unauthorized for `/auth/proxy` to 
    match `/auth/request` (#146)

#### Deployment Changes
  - Replace Travis with a GitHub workflow for CI (#150)

## uc-cdis/fence

#### New Features
  - Add idp_to_user table that maps multiple IdP's to a single user (Currently 
    only using for RAS) #963 (#964)
  - Cronjob for removing expired Google Data Access if expiration is set #968 
    (#964)
  - Support multi-passport validation #967 (#964)
  - Visa validation and authz sync for POST /data/download/{guid} endpoint #973 
    (#964)
  - Set expiration for created user policies when a passport is POSTed to DRS 
    endpoint #986 (#964)
  - Change username in Arborist when a user POSTs to DRS endpoint and then logs 
    in #986 (#964)
  - project id to authz resource mapping is now persisted in the database from 
    user.yaml #987 (#964)
  - Populate iss_sub_pair_to_user table using User table's id_from_idp column 
    #995 (#964)
  - usersync no longer updates visas and Access Token Polling now both gets 
    updated passport(s) for a user and updates authorization #988 (#964)
  - A frequently-running cronjob handles the removal of expired visas #988 
    (#964)

#### Breaking Changes
  - URL Signing when no_force_sign query param is provided: Previously Fence 
    would make a decision based off if the data was public and no_force_sign 
    provided. Fence will now NEVER sign if no_force_sign is provided (since the 
    concept of "public" data has been abstracted out of Fence. Data access - 
    public or not - is the sole responsibility of the policy engine). In other 
    words, if no_force_sign is provided at the API level, Fence will respect 
    that regardless of whether the resulting URL will actually work. The 
    default Fence behavior should remain the same. #988 (#964)

#### Bug Fixes
  - Fix granting of storage access so that `expires` is honored (#1026)

#### Improvements
  - Syncing to Google storage backend supports supplying an expiration for 
    Google Data Access #968 (#964)
  - Use validate_jwt from Fence instead of authutils #967 (#964)
  - Passport sync now uses persisted project id to authz resource mapping from 
    the database if available when syncing authz #987 (#964)
  - Passport cache for substantially increasing speed of subsequent parsing of 
    the same, valid passport #999 (#964)
  - Significantly improve sync_single_user_visas performance by use of a single 
    Arborist policy to represent access #1005 (#964)
  - fix issue where Fence was not finding the newest Service Account for a user 
    b/c of an existing SA under a previous username (this situation occurs when 
    a user uses a Passport and THEN logs in with their eRA Commons) #1001 (#964)

#### Dependency Updates
  - Update gen3authz to 1.5.1 #1007 #1005 #986 (#964)

#### Deployment Changes
  - Requires database migration for a new table to Fence, google Access 
    expiration to add new `expires` column, and to create iss_sub_pair_to_user 
    table #968 #963 #973 (#964)
  - Requires Arborist >= `2022.04` OR >=`3.4.0` 
    https://github.com/uc-cdis/arborist/pull/143 (#964)
  - To enable Passports -> DRS in an environment you must update Fence 
    Configuration to at a minimum specify `GA4GH_PASSPORTS_TO_DRS_ENABLED: 
    true` (**only do this after coordinating with the environment owner as this 
    has several requirements before it can be enabled, including the need to 
    use Indexd's `authz` field in ALL records rather than `acl`**) (#964)

## uc-cdis/guppy

#### Improvements
  - Catch errors while querying total counts (#142)

## uc-cdis/indexd

#### New Features
  - new /mint/guid endpoint to return a valid GUID for this instance without 
    creating a new record (#290)

#### Improvements
  - ensure version in pyproject.toml matches release tag (#334)

## uc-cdis/data-portal

#### Dependency Updates
  - Bumps [dset](https://github.com/lukeed/dset) from 3.1.1 to 3.1.2. (#995)

#### New Features
  - Track datadog action for export to workspace (#1001)
  - Configuration to pull in footer from frontend framework (#1001)
  - add flag to specify field for external file download (#996)
  - Study viewer: add flag to check for idp login type before allowing user to 
    request access (#991)

#### Improvements
  - Make `navTitle` supports customized `homepageHref` (#998)
  - Catch errors while querying total counts (#997)
  - Fix `detailView` docs (#992)

## uc-cdis/sower

#### New Features
  - add GitHub Action for Golang CI (#33)

## uc-cdis/ssjdispatcher

#### New Features
  - add GitHub Action for Golang CI (#45)

## uc-cdis/gen3-fuse

#### New Features
  - add GitHub Action for Golang CI (#38)

## uc-cdis/indexs3client

#### New Features
  - add GitHub Action for Golang CI (#38)

## uc-cdis/ws-storage

#### New Features
  - add GitHub Action for Golang CI (#5)

## uc-cdis/cloud-automation

#### New Features
  - deployment for cedar wrapper service (#1933)
  - code to let Atlas send "keep session alive" messages to its parent (when 
    Atlas is running in iframe) (#1927)
  - Kubecost (#1923)
  - Update datadog agents (#1945)
  - Allow to choose which services (portal or gen3-frontend-framework [gen3ff]) 
    to be the root frontend service (path `/`) (#1918)
  - Removing `jenkins-perf` from the pool of jenkins test environment so we can 
    do performance tests without the environment being reset. (#1938)

#### Bug Fixes
  - Fixes a bug where the state bucket for TF is not created with the right 
    location constraint, resulting in cloud automation breaking. (#1942)

#### Improvements
  - Added a variable to the management-logs module to allow configuring the 
    destination bucket for logs. This variable will default to the 
    cdis-default: management-logs-remote-accounts . (#1944)
  - DICOM viewer: add readinessProbe and livenessProbe (#1946)
  - DICOM server: add readinessProbe and livenessProbe (#1939)

#### Deployment Changes
  - To put `gen3ff` on `/` and `portal` on `/portal` requires gen3ff version 
    0.1.0 and portal version 3.23.0 (#1918)

## uc-cdis/audit-service

#### Improvements
  - Do not accept string "sub" in login logs anymore (#15)

## uc-cdis/requestor

#### New Features
  - `/request` endpoint now supports filtering through query parameters similar 
    to the `/request/user` endpoint. (#30)

