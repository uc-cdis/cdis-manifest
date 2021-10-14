# Core Gen3 Release (Vittum Park)

## uc-cdis/arborist

#### Bug Fixes
  - Account for expired policies and expired group users in Auth API endpoints 
    (#134)

## uc-cdis/fence

#### Improvements
  - Update image links in example `Azure DevOps` pipeline and documentation 
    (#961)
  - Example `Azure DevOps` pipeline and documentation (#947)

## uc-cdis/cdis-data-client

#### Bug Fixes
  - Updated filename name logic when 'includesubdir' flag is on. (#97)

## uc-cdis/guppy

#### Dependency Updates
  - npm 7 (#117)
  - nodejs 14 (#117)
  - react 16.14 (#117)
  - corejs 3 (#117)

## uc-cdis/hatchery

#### Improvements
  - Updated OpenAPI doc to include the `Not Found` enum status. (#29)

## uc-cdis/indexd

#### New Features
  - Change format of uri for drs objects from hostname to compact based (#323)

#### Improvements
  - Make Dockerfile more cache friendly = improves build times (#321)

## uc-cdis/data-portal

#### Improvements
  - Add config for setting name of tags column on discovery page (#928)
  - Discovery: tags now are sorted by alphabetic orders (#927)

#### New Features
  - Discovery: new "searchable tags panel" can be enabled via config (#927)
  - Add `workspaceShutdownBanner` and `workspaceShutdownPopup` to alert user 
    that their Jupyter notebook's kernel will be or has been shutdown due to 
    inactivity. (#922)
  - If configured, check that all external OIDCs in WTS are signed in before 
    export to WS, direct download (#921)

#### Deployment Changes
  - Discovery: introduced a new config section 
    `discoveryConfig.features.search.tagSearchDropdown`, see `portal-config.md` 
    for more info (#927)
  - To enable this check, set `features.exportToWorkspace.verifyExternalLogins` 
    flag to true in gitops (#921)

#### Bug Fixes
  - Fix the need to double-click accessibility links in firefox (#925)

#### Dependency Updates
  - This feature depends on Hathcery PR: 
    https://github.com/uc-cdis/hatchery/pull/26 (#922)

#### Improvement
  - have file download button call indexd to check if user can download file 
    (#923)

## uc-cdis/sheepdog

#### Improvements
  - Add example Azure DevOps pipeline and documentation (#353)

## uc-cdis/tube

#### New Features
  - Nested ETL (#155)

## uc-cdis/metadata-service

#### Bug Fixes
  - Add check for ES service up before running populate. (#37)
  - Add timeout parameters to ElasticSearch init (#37)
  - Log warning if ES index exists instead of raising exception (#37)

#### Improvements
  - Add test DB creation to readme (#35)

## uc-cdis/mariner

#### Improvements
  - Removed redundant info that was added accidentally (#57)

## uc-cdis/mariner

#### Improvements
  - Removed redundant info that was added accidentally (#57)

## uc-cdis/mariner

#### Improvements
  - Removed redundant info that was added accidentally (#57)

## uc-cdis/cloud-automation

#### Improvements
  - Hatchery deployment: change `HOSTNAME` to `GEN3_ENDPOINT` (#1740)
  - route GA4GH DRS Access requests to more performance Fence endpoint over 
    indexd for latest fence image versions (#1726)

#### Bug Fixes
  - Added in netnolimit so DD apm services can talk to Datadog (#1732)
  - Removed prometheus from roll all, to get ready to deprecate it (#1720)

## uc-cdis/audit-service

#### Dependency Updates
  - `fastapi` to 0.65.2+ and fix `cdislogging` version (#8)

#### Bug Fixes
  - Fix querying non-string fields (#7)

