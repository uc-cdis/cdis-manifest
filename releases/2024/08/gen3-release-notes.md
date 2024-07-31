# Core Gen3 Release 2024.08 (Brazilianite)

## Release Highlights and Announcements

#### Breaking change in Fence
This release of Gen3 includes a breaking change to Fence due to a major upgrade to the underlying OIDC library. 
When updating to Gen3 2024.08 (or Fence 10.0), Gen3 administrators must run a Fence database migration when they update the version of fence. 

Fence database migrations can be run using the `fence-create` client included with Fence. See `fence-create --help` for the commands.  If you need assistance, please ask on the Gen3 Community Slack channel.  The release is here: https://github.com/uc-cdis/fence/releases/tag/10.0.0 .

Since Fence uses the database library `alembic` for safe upgrades and downgrades of db schemas, there is a way to downgrade Fence if necessary after the upgrade. Nonetheless, we recommend a snapshot or backup before any major migration, like this one. 

#### Community Contributions

Sower has been updated with [support for configurable job TTL](#new-features-2).
Thanks to Liam from OHSU for contributing this to the Gen3 product codebase!

## uc-cdis/arborist

#### Improvements
  - `/auth/request` endpoint: add a debug log when an anonymous access request 
    is rejected ([#166](https://github.com/uc-cdis/arborist/pull/166))

## uc-cdis/audit-service

#### Dependency Updates
  - Bumps [authlib](https://github.com/lepture/authlib) from 1.3.0 to 1.3.1. 
    (#57)

## uc-cdis/cloud-automation

#### Improvements
  - Add access Hatchery was missing to launch Nextflow workspaces in blanket 
    billing mode ([#2592](https://github.com/uc-cdis/cloud-automation/pull/2592)) 
  - Remove selenium container from jenkins controller pods. Selenium is 
    available in the kubernetes worker pod launched for each PR. ([#2585](https://github.com/uc-cdis/cloud-automation/pull/2585)) 
  - HEAL CEDAR ingestion: this script will now query clinicaltrials.gov API and 
    pull latest metadata from there during each run ([#2570](https://github.com/uc-cdis/cloud-automation/pull/2570)) 
  - removing unneeded nginx configuration ([#2575](https://github.com/uc-cdis/cloud-automation/pull/2575)) 
  - Updated kube-setup-argo.sh to create a ClusterRole with specific 
    permissions for Argo resources and bind it across multiple namespaces for 
    enhanced security. ([#2566](https://github.com/uc-cdis/cloud-automation/pull/2566)) 

#### New Features
  - Simply adding https://data.qdr.syr.edu/ to the whitelist to allow for HEAL 
    functionality ([#2578](https://github.com/uc-cdis/cloud-automation/pull/2578)) 
  - check and update fence cronjobs during gitops sync to make sure they use 
    the latest image specified in the manifest. ([#2564](https://github.com/uc-cdis/cloud-automation/pull/2564)) 

#### Bug Fixes
  - HEAL CEDAR ingestion: fixed a bug causing platform citation texts disappear 
    ([#2569](https://github.com/uc-cdis/cloud-automation/pull/2569))
  - HEAL CEDAR ingestion: fixed a bug causing some repository citation texts to 
    be incorrect ([#2569](https://github.com/uc-cdis/cloud-automation/pull/2569)) 
  - Fix a small bug that loaded DICOM studies over http instead of https 
    ([#2568](https://github.com/uc-cdis/cloud-automation/pull/2568))

#### Dependency Updates
  - Jenkins to 2.452.2-lts-jdk21 ([#2585](https://github.com/uc-cdis/cloud-automation/pull/2585)) 

## uc-cdis/data-portal

#### New Features
  - Update Team Projects Modal for use case where user does not have teams 
    available ([#1557](https://github.com/uc-cdis/data-portal/pull/1557))
  - Add storybook page for new Modal ([#1557](https://github.com/uc-cdis/data-portal/pull/1557)) 
  - Updates the Discovery Action Bar so that filtered metadata is sent to the 
    ```${manifestServiceApiPath}/metadata``` after the user clicks the export 
    to workspace button, pending that they have enabled 
    ```discoveryConfig.features.exportToWorkspace.enableExportFullMetadata```. 
    The filtering removes any field that has been defined in 
    ```discoveryConfig.features.exportToWorkspace.excludedMetadataFields```, if 
    that config field exists. Note that field names in 
    ```discoveryConfig.features.exportToWorkspace.excludedMetadataFields``` can 
    represent nested fields, for example ```study_metadata.username```. ([#1534](https://github.com/uc-cdis/data-portal/pull/1534)) 
  - add html mark for accessibility ([#1546](https://github.com/uc-cdis/data-portal/pull/1546)) 
  - add NVM file to allow for using nvm command to run correct version of node 
    and npm ([#1542](https://github.com/uc-cdis/data-portal/pull/1542))
  - update documentation ([#1542](https://github.com/uc-cdis/data-portal/pull/1542)) 

#### Bug Fixes
  - Consider `*` as one of the included values when checking for `create` and 
    `update` permissions ([#1566](https://github.com/uc-cdis/data-portal/pull/1566)) 
  - Study reg: fixed a bug causing pre-defined data repository metadata got 
    overwritten by user ([#1560](https://github.com/uc-cdis/data-portal/pull/1560)) 
  - Fix explorer table header sorting issue ([#1554](https://github.com/uc-cdis/data-portal/pull/1554)) 
  - remove already selected covariates from list to eliminate ability to add 
    multiple times ([#1549](https://github.com/uc-cdis/data-portal/pull/1549))
  - allow for valueSummary to be null without crashing application ([#1546](https://github.com/uc-cdis/data-portal/pull/1546)) 

#### Improvements
  - Add support for hyperlinks in the study viewer detailed description. 
    ([#1565](https://github.com/uc-cdis/data-portal/pull/1565))
  - Misc: added descriptions about `fileCountField` into docs ([#1563](https://github.com/uc-cdis/data-portal/pull/1563)) 
  - Discovery: re-org some data avalibility icons and states. `Pending` has 
    been renamed to `Waiting` and has became the default state for metadata 
    that doesn't have an `authz` value. `Not Avaliable` now is a state that 
    need to be explicitly set from a metadata field. ([#1558](https://github.com/uc-cdis/data-portal/pull/1558)) 
  - The DiscoveryActionBar component has been modularized into separate 
    components, utils, constants and interfaces. ([#1534](https://github.com/uc-cdis/data-portal/pull/1534)) 
  - Updates deprecated "classic" endpoint for ClinicalTrials.gov and replaces 
    it with new ClinicalTrials.gov API v2.0 ([#1540](https://github.com/uc-cdis/data-portal/pull/1540)) 

#### Deployment Changes
  - Discovery: The `Pending` state has been renamed to `Waiting` and has became 
    the default state for metadata that doesn't have an `authz` value. If an 
    env is using this state, it needs to update its portal config accordingly 
    ([#1558](https://github.com/uc-cdis/data-portal/pull/1558))
  - Need to update to CEDAR wrapper 0.5.0 
    https://github.com/uc-cdis/cedar-wrapper-service/releases/tag/0.5.0 for 
    this feature ([#1540](https://github.com/uc-cdis/data-portal/pull/1540))

#### Bugfix
  - Adds spinner until studies are available, preventing user from entering 
    information before form is ready for it ([#1540](https://github.com/uc-cdis/data-portal/pull/1540)) 

## uc-cdis/fence

#### Breaking Changes
  - New Database Migration (using `alembic`) was added and is required. ([#1114](https://github.com/uc-cdis/fence/pull/1114)) 

#### Dependency Updates
  - Update Authlib Version by Major Version to post-1.0 release: 1.2.1 ([#1114](https://github.com/uc-cdis/fence/pull/1114)) 

#### Improvements
  - Add debug log when the authorization header cannot be parsed ([#1151](https://github.com/uc-cdis/fence/pull/1151)) 
  - Print stack trace when usersync cannot downloaded files from an ftp/sftp 
    server ([#1151](https://github.com/uc-cdis/fence/pull/1151))
  - Removes travis CI, replace with GH Actions ([#1116](https://github.com/uc-cdis/fence/pull/1116)) 

## uc-cdis/gen3-fuse

#### Dependency Updates
  - move from old & unsupported Go 1.12 and Alpine to Go 1.22 and Debian 
    Bullseye ([#44](https://github.com/uc-cdis/gen3-fuse/pull/44))

## uc-cdis/hatchery

#### Improvements
  - Add more details to container authorization docs ([#113](https://github.com/uc-cdis/hatchery/pull/113)) 

## uc-cdis/manifestservice

#### Dependency Updates
  - Bumps [zipp](https://github.com/jaraco/zipp) from 3.17.0 to 3.19.1. (#54)
  - Bumps [certifi](https://github.com/certifi/python-certifi) from 2024.2.2 to 
    2024.7.4. (#53)
  - Bumps [urllib3](https://github.com/urllib3/urllib3) from 1.26.18 to 
    1.26.19. (#52)
  - Bumps [authlib](https://github.com/lepture/authlib) from 1.3.0 to 1.3.1. 
    (#50)

#### Improvements
  - change exported metadata filenames to `metadata-<timestamp>.json` ([#51](https://github.com/uc-cdis/manifestservice/pull/51)) 
  - updated README and OpenAPI docs with regards to the new `/metadata` API 
    endpoints ([#51](https://github.com/uc-cdis/manifestservice/pull/51))

## uc-cdis/metadata-service

#### Bug Fixes
  - fix token aud issue ([#112](https://github.com/uc-cdis/metadata-service/pull/112)) 

#### Dependency Updates
  - `authutils` to 6.2.5 ([#111](https://github.com/uc-cdis/metadata-service/pull/111)) 
  - `authlib` to 1.3.1 ([#111](https://github.com/uc-cdis/metadata-service/pull/111)) 
  - Bumps [requests](https://github.com/psf/requests) from 2.31.0 to 2.32.0. 
    (#106)
  - Bumps [urllib3](https://github.com/urllib3/urllib3) from 1.26.18 to 
    1.26.19. (#107)

## uc-cdis/peregrine

#### Dependency Updates
  - Bumps [authlib](https://github.com/lepture/authlib) from 1.3.0 to 1.3.1. 
    (#220)

## uc-cdis/requestor

#### Dependency Updates
  - Bumps [authlib](https://github.com/lepture/authlib) from 1.3.0 to 1.3.1. 
    (#70)

## uc-cdis/sheepdog

#### Dependency Updates
  - Bumps [authlib](https://github.com/lepture/authlib) from 1.3.0 to 1.3.1. 
    (#413)

## uc-cdis/sower-jobs

#### Dependency Updates
  - Bumps [zipp](https://github.com/jaraco/zipp) from 3.17.0 to 3.19.1. (#58)
  - Bumps [certifi](https://github.com/certifi/python-certifi) from 2024.2.2 to 
    2024.7.4. (#57)
  - Bumps [urllib3](https://github.com/urllib3/urllib3) from 2.0.7 to 2.2.2. 
    (#56)

## uc-cdis/sower

#### New Features
  - Support for configurable Job TTL ([#42](https://github.com/uc-cdis/sower/pull/42)) 

#### Improvements
  - Adds support for Job TTL so that users can see the status of the job after 
    it has completed. ([#42](https://github.com/uc-cdis/sower/pull/42))
  - Defaults to 1 hour after Job completion ([#42](https://github.com/uc-cdis/sower/pull/42)) 
  - Configurable in Sower Config (`TTLSecondsAfterFinished`) ([#42](https://github.com/uc-cdis/sower/pull/42)) 
  - ```yaml ([#42](https://github.com/uc-cdis/sower/pull/42))
  - sower: ([#42](https://github.com/uc-cdis/sower/pull/42))
  - sowerConfig: ([#42](https://github.com/uc-cdis/sower/pull/42))
  - name: fhir-import-export ([#42](https://github.com/uc-cdis/sower/pull/42))
  - action: fhir_import_export ([#42](https://github.com/uc-cdis/sower/pull/42))
  - TTLSecondsAfterFinished: 86400 <--- Job TTL (24 hours here, 1 hour if not 
    specified) ([#42](https://github.com/uc-cdis/sower/pull/42))
  - ``` ([#42](https://github.com/uc-cdis/sower/pull/42))

## uc-cdis/workspace-token-service

#### Dependency Updates
  - Bumps [urllib3](https://github.com/urllib3/urllib3) from 2.2.1 to 2.2.2. 
    (#82)

