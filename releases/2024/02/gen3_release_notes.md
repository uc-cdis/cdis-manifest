# Core Gen3 Release 2024.02 (Amazonite)

## uc-cdis/cloud-automation

#### Improvements
  - Add CSRF protection for Guppy paths ([#2430](https://github.com/uc-cdis/cloud-automation/pull/2430)) 
  - Protect Guppy paths from CSRF ([#2425](https://github.com/uc-cdis/cloud-automation/pull/2425)) 
  - Skip `Gender` tags for HEAL Cedar ingestion script ([#2376](https://github.com/uc-cdis/cloud-automation/pull/2376)) 
  - Adds creation of cedar-client and secret if not already present ([#2407](https://github.com/uc-cdis/cloud-automation/pull/2407)) 

#### Deployment Changes
  - After merging this, envs must use a data-portal version that contains 
    https://github.com/uc-cdis/data-portal/pull/1464. Otherwise the 
    communication between portal and guppy will be interrupted ([#2430](https://github.com/uc-cdis/cloud-automation/pull/2430)) 


## uc-cdis/data-portal

#### New Features
  - add ability to hide login link in navigation ([#1469](https://github.com/uc-cdis/data-portal/pull/1469)) 
  - Updates Cohort Middleware API endpoints to use team project, updates 
    storybooks associated with Cohort Middleware API calls with team project 
    ([#1472](https://github.com/uc-cdis/data-portal/pull/1472))
  - Adds buttons for Download Study-Level Metadata, Download File Manifest and 
    Download All Files ([#1450](https://github.com/uc-cdis/data-portal/pull/1450)) 
  - adds Login dropdown for single-entry InCommon login ([#1466](https://github.com/uc-cdis/data-portal/pull/1466)) 
  - Adds placeholder application for VADC data dictionary ([#1463](https://github.com/uc-cdis/data-portal/pull/1463)) 
  - Updates the three VADC analysis apps, Gen3 GWAS, GWAS Results and OHDSI 
    Atlas to use API request including query parameter for team projects. 
    ([#1451](https://github.com/uc-cdis/data-portal/pull/1451))
  - Adds selected team project in each of the apps: Atlas, GWAS App and Results 
    App and reroutes user back to Analysis Apps view if they do not have a team 
    project selected ([#1451](https://github.com/uc-cdis/data-portal/pull/1451))

#### Improvements
  - Shows error message now for error status from Cohort Definitions endpoint 
    request ([#1472](https://github.com/uc-cdis/data-portal/pull/1472))
  - Replace nested empty values with 'null' in explorer display ([#1468](https://github.com/uc-cdis/data-portal/pull/1468)) 
  - Use new Guppy version which supports handling with CSRF tokens ([#1464](https://github.com/uc-cdis/data-portal/pull/1464)) 
  - Ensure CSRF token is passed to Guppy ([#1464](https://github.com/uc-cdis/data-portal/pull/1464)) 
  - remove webform from NCT homepage ([#1452](https://github.com/uc-cdis/data-portal/pull/1452)) 
  - Lints TeamProjectModal.test.jsx to abide by code formatting style guide 
    ([#1451](https://github.com/uc-cdis/data-portal/pull/1451))

#### Bug Fixes
  - Adds an additional check to DiscoverySummary `renderAggregation` to only 
    sum strings or number values. If the value is something other than a string 
    or number, an array, for example, the sum value explodes. ([#1467](https://github.com/uc-cdis/data-portal/pull/1467)) 
  - Fixed a bug about misconfigured webpack publicPath ([#1464](https://github.com/uc-cdis/data-portal/pull/1464)) 
  - Fix problem where previously submitted outcome phenotype interfered with 
    generating histogram for newly selected variable. ([#1463](https://github.com/uc-cdis/data-portal/pull/1463)) 
  - fix error handling in /workflows endpoint response processing (in 
    fetchGwasWorkflows()) ([#1457](https://github.com/uc-cdis/data-portal/pull/1457)) 
  - Discovery: the display of system-level popup (DUA) will take precedence 
    over the Discovery Details drawer ([#1454](https://github.com/uc-cdis/data-portal/pull/1454)) 
  - revert back the GWAS app names so navigation can work again as before 
    (follow-up fix after https://github.com/uc-cdis/data-portal/pull/1446) 
    ([#1451](https://github.com/uc-cdis/data-portal/pull/1451))
  - Fixes the an issue introduced in 
    https://github.com/uc-cdis/data-portal/pull/1444, where the url of some 
    applications would not work anymore. ([#1451](https://github.com/uc-cdis/data-portal/pull/1451)) 

#### Dependency Updates
  - Update Guppy to 0.18.0 ([#1464](https://github.com/uc-cdis/data-portal/pull/1464)) 
  - Bumps 
    [browserify-sign](https://github.com/crypto-browserify/browserify-sign) 
    from 4.2.1 to 4.2.2. (#1442)

#### Deployment Changes
  - After merging this https://github.com/uc-cdis/cloud-automation/pull/2430 
    any env that is using Guppy and Portal should update their portal 
    deployment to include changes in this PR ([#1464](https://github.com/uc-cdis/data-portal/pull/1464)) 

#### Features
  - Implements redirect functionality for users with expired team project names 
    stored locally ([#1457](https://github.com/uc-cdis/data-portal/pull/1457))

## uc-cdis/fence

#### Bug Fixes
  - Another CI fix ([#1129](https://github.com/uc-cdis/fence/pull/1129))
  - Fixed a bug causing the metadata ingestion CI test to fail ([#1128](https://github.com/uc-cdis/fence/pull/1128)) 
  - Fixes issue with usersync and MFA policy management in cases where a user 
    has not been persisted by Fence. ([#1125](https://github.com/uc-cdis/fence/pull/1125)) 
  - Fixes issue where users not present in arborist would have blank resources 
    and authz fields when they should have values for open access data within 
    the commons. ([#1122](https://github.com/uc-cdis/fence/pull/1122))

#### Improvements
  - Add a new log that includes data information per signed URL generation 
    which includes the size, bucket used, authz, acl, and requesting user 
    ([#1124](https://github.com/uc-cdis/fence/pull/1124))

## uc-cdis/guppy

#### Improvements
  - Guppy will send CSRF token in request headers if available ([#251](https://github.com/uc-cdis/guppy/pull/251)) 

#### Dependency Updates
  - Remove unused dep `csurf` ([#251](https://github.com/uc-cdis/guppy/pull/251)) 
  - Bumps 
    [@babel/traverse](https://github.com/babel/babel/tree/HEAD/packages/babel-traverse)
    to 7.23.2 and updates ancestor dependency 
    [storybook](https://github.com/storybookjs/storybook/tree/HEAD/code/lib/cli).
    These dependencies need to be updated together. (#245)

#### Bug Fixes
  - Fixed a bug cause inaccurate total count being returned from query after 
    updating to ES7 ([#250](https://github.com/uc-cdis/guppy/pull/250))

## uc-cdis/hatchery

#### New Features
  - New endpoints `GET /mount-files` and `GET /mount-files?id=foobar` return 
    files to be mounted to the workspace container ([#86](https://github.com/uc-cdis/hatchery/pull/86)) 
  - New endpoint `GET /options?id=foobar` returns information about the 
    specified workspace option only ([#86](https://github.com/uc-cdis/hatchery/pull/86)) 

#### Improvements
  - Add ability to authenticate AWS batch with ECR repositories via user data 
    ([#87](https://github.com/uc-cdis/hatchery/pull/87))
  - Nextflow in Batch: Ignore "invalid" state before updating a compute 
    environment, instead of waiting for it to be valid ([#88](https://github.com/uc-cdis/hatchery/pull/88)) 
  - Set environment variable `WORKSPACE_FLAVOR` in the workspace and sidecar 
    containers for downstream use ([#86](https://github.com/uc-cdis/hatchery/pull/86)) 

## uc-cdis/indexd

#### Dependency Updates
  - Upgrade Flask ([#371](https://github.com/uc-cdis/indexd/pull/371))

## uc-cdis/manifestservice

#### Improvements
  - Remediate path traversal vulnerability ([#36](https://github.com/uc-cdis/manifestservice/pull/36)) 


## uc-cdis/metadata-service

#### Bug Fixes
  - A limit to the amount of nested objects was created in ES7. 
    https://github.com/elastic/elasticsearch/issues/26962 ([#100](https://github.com/uc-cdis/metadata-service/pull/100)) 
  - In order to resolve this error from occurring when running the aggMDS job- 
    we must increase this limit. ([#100](https://github.com/uc-cdis/metadata-service/pull/100)) 

## uc-cdis/peregrine

#### Dependency Updates
  - PyYAML to >=5.4.1 ([#208](https://github.com/uc-cdis/peregrine/pull/208))
  - gen3dictionary to >= 2.0.3 ([#208](https://github.com/uc-cdis/peregrine/pull/208)) 
  - dictionaryutils to >=3.4.10 ([#208](https://github.com/uc-cdis/peregrine/pull/208)) 
  - Re-add sheepdog, v5.1.2, with upgraded flask ([#207](https://github.com/uc-cdis/peregrine/pull/207)) 
  - gen3dictionary to 2.0.3 ([#207](https://github.com/uc-cdis/peregrine/pull/207)) 

## uc-cdis/sheepdog

#### Dependency Updates
  - PyYAML to >=5.4.1 ([#404](https://github.com/uc-cdis/sheepdog/pull/404))
  - gen3dictionary to >= 2.0.3 ([#404](https://github.com/uc-cdis/sheepdog/pull/404)) 
  - dictionaryutils to >=3.4.10 ([#404](https://github.com/uc-cdis/sheepdog/pull/404)) 
  - Upgrade flask ([#403](https://github.com/uc-cdis/sheepdog/pull/403))

## uc-cdis/sower-jobs

#### Improvements
  - Use poetry for installing dependencies for `batch-export` ([#45](https://github.com/uc-cdis/sower-jobs/pull/45)) 

## uc-cdis/workspace-token-service

#### Dependency Updates
  - Bumps [setuptools](https://github.com/pypa/setuptools) from 65.4.0 to 
    65.5.1. (#52)
