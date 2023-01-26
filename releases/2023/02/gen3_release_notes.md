# Core Gen3 Release 2023.02

## uc-cdis/cdis-data-client

#### Dependency Updates
  - update gopkg.in/yaml.v2 to 2.4.0 ([#109](https://github.com/uc-cdis/cdis-data-client/pull/109)) 
  - update gopkg.in/yaml.v3 to 3.0.1 ([#109](https://github.com/uc-cdis/cdis-data-client/pull/109)) 

#### Deployment Changes
  - [PPS-169]: 
    https://ctds-planx.atlassian.net/browse/PPS-169?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#109](https://github.com/uc-cdis/cdis-data-client/pull/109))

## uc-cdis/guppy

#### Dependency Updates
  - update `trim-newlines` to 3.0.1 ([#165](https://github.com/uc-cdis/guppy/pull/165)) 
  - update `gen3-ui-component` to 0.11.2 ([#165](https://github.com/uc-cdis/guppy/pull/165)) 
  - update `isomorphic-fetch` to 3.0.0 ([#165](https://github.com/uc-cdis/guppy/pull/165)) 
  - [PPS-173]: 
    https://ctds-planx.atlassian.net/browse/PPS-173?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#165](https://github.com/uc-cdis/guppy/pull/165))
  - Bumps [moment](https://github.com/moment/moment) from 2.29.1 to 2.29.2. 
    (#137)

## uc-cdis/hatchery

#### Bug Fixes
  - Set enableServiceLinks to false in workspace pods. ([#54](https://github.com/uc-cdis/hatchery/pull/54)) 
  - [GPE-735]: 
    https://ctds-planx.atlassian.net/browse/GPE-735?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#54](https://github.com/uc-cdis/hatchery/pull/54))

## uc-cdis/data-portal

#### Improvements
  - updatedprops passed to some antd components since some of them will be 
    deprecated ([#1196](https://github.com/uc-cdis/data-portal/pull/1196))
  - Access Request (Study/Workspace): now can prevent user from creating extra 
    tickets if they already have a same request pending ([#1189](https://github.com/uc-cdis/data-portal/pull/1189)) 
  - Access Request (Study/Workspace): Improved message display ([#1189](https://github.com/uc-cdis/data-portal/pull/1189)) 
  - Discovery: filter AND/OR logic toggle button will not be disabled ([#1187](https://github.com/uc-cdis/data-portal/pull/1187)) 
  - Hiding DICOM Viewer button for the imaging studies that doesn't have one 
    ([#1174](https://github.com/uc-cdis/data-portal/pull/1174))
  - Discovery: add `advSearchFilters.displayName` config to customize Filter 
    button title ([#1160](https://github.com/uc-cdis/data-portal/pull/1160))
  - Discovery: enlarged search bar size ([#1160](https://github.com/uc-cdis/data-portal/pull/1160)) 
  - Discovery: add `Reset` button to filter component ([#1160](https://github.com/uc-cdis/data-portal/pull/1160)) 
  - Discovery: add `AND/OR` toggle to filter component, defaults to `AND` 
    ([#1160](https://github.com/uc-cdis/data-portal/pull/1160))
  - Discovery: Filter component won't shrink smaller than its size ([#1160](https://github.com/uc-cdis/data-portal/pull/1160)) 
  - Study Registration: update "Data Repository" tag in metadata during 
    registration ([#1160](https://github.com/uc-cdis/data-portal/pull/1160))
  - Move linter configs so they can be shared by npm commands and super-linter 
    GH action ([#1175](https://github.com/uc-cdis/data-portal/pull/1175))

#### Dependency Updates
  - update `trim-newlines` to 3.0.1 ([#1196](https://github.com/uc-cdis/data-portal/pull/1196)) 
  - update `gen3-ui-component` to 0.11.2 ([#1196](https://github.com/uc-cdis/data-portal/pull/1196)) 
  - update `guppy` to 0.15.4 ([#1196](https://github.com/uc-cdis/data-portal/pull/1196)) 
  - update `isomorphic-fetch` to 3.0.0 ([#1196](https://github.com/uc-cdis/data-portal/pull/1196)) 
  - [PPS-173]: 
    https://ctds-planx.atlassian.net/browse/PPS-173?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1196](https://github.com/uc-cdis/data-portal/pull/1196))

#### New Features
  - This is the sprint branch for sprint 25 and includes new functionality, 
    features and revisions including: ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Add Scrolling functionality to Attrition Table ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - FE for View 4.1 - Modal ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Cleanup - change inline styles to CSS referenced via class names ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Cleanup - Configure GWAS ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - FE for View 4.2 - Congratulations ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Change Text in Progress Bar to always say "Select" and not "Edit" for each 
    step ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - Cleanup - Move isEnterOrSpace to Shared Folder. Rename Shared Folder to 
    Utils ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - Add Selected Hare Functionality to Configure GWAS ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Cherry Pick FE Code and Deploy to QA ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Integrate histogram into GWAS++ flow ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - [VADC-240]: 
    https://ctds-planx.atlassian.net/browse/VADC-240?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-244]: 
    https://ctds-planx.atlassian.net/browse/VADC-244?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-369]: 
    https://ctds-planx.atlassian.net/browse/VADC-369?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-375]: 
    https://ctds-planx.atlassian.net/browse/VADC-375?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-245]: 
    https://ctds-planx.atlassian.net/browse/VADC-245?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-379]: 
    https://ctds-planx.atlassian.net/browse/VADC-379?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-370]: 
    https://ctds-planx.atlassian.net/browse/VADC-370?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-324]: 
    https://ctds-planx.atlassian.net/browse/VADC-324?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-368]: 
    https://ctds-planx.atlassian.net/browse/VADC-368?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))

#### Bug Fixes
  - Discovery: disable filter button if studies are still loading ([#1187](https://github.com/uc-cdis/data-portal/pull/1187)) 
  - Fixed an Aggregate authz related bug where a `null` response from a key in 
    `wts/aggregate/authz/mapping` is gracefully handled by Data-Portal ([#1186](https://github.com/uc-cdis/data-portal/pull/1186)) 
  - Workspace: do callback within debounce time ([#1183](https://github.com/uc-cdis/data-portal/pull/1183)) 

## uc-cdis/sower

#### Dependency Updates
  - update gopkg.in/yaml.v2 to 2.4.0 ([#36](https://github.com/uc-cdis/sower/pull/36)) 
  - update gopkg.in/yaml.v3 to 3.0.1 ([#36](https://github.com/uc-cdis/sower/pull/36)) 

#### Deployment Changes
  - [PPS-169]: 
    https://ctds-planx.atlassian.net/browse/PPS-169?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#36](https://github.com/uc-cdis/sower/pull/36))

## uc-cdis/sower-jobs

#### New Features
  - Add a new sower-job which can delete all the expired objects from 
    `Indexd/fence` and `Metadata Service` ([#39](https://github.com/uc-cdis/sower-jobs/pull/39)) 

## uc-cdis/ssjdispatcher

#### New Features
  - moving to GitHub Actions for building Docker image ([#47](https://github.com/uc-cdis/ssjdispatcher/pull/47)) 

#### Dependency Updates
  - update gopkg.in/yaml.v2 to 2.4.0 ([#46](https://github.com/uc-cdis/ssjdispatcher/pull/46)) 
  - update gopkg.in/yaml.v3 to 3.0.1 ([#46](https://github.com/uc-cdis/ssjdispatcher/pull/46)) 

#### Deployment Changes
  - [PPS-169]: 
    https://ctds-planx.atlassian.net/browse/PPS-169?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#46](https://github.com/uc-cdis/ssjdispatcher/pull/46))

## uc-cdis/tube

#### Bug Fixes
  - Fix query failure with auth_resource_path ([#216](https://github.com/uc-cdis/tube/pull/216)) 

#### Improvements
  - Move `test_config_helper.py` so it runs with other standalone tests ([#216](https://github.com/uc-cdis/tube/pull/216)) 

## uc-cdis/metadata-service

#### New Features
  - Introduced 3 new Data Adapters for GDC, PDC and CIDC ([#85](https://github.com/uc-cdis/metadata-service/pull/85)) 

#### Improvements
  - Eliminated a few warnings related invalid operator `|` between `'dict' | 
    'dict'` --> `'dict' or 'dict'` ([#85](https://github.com/uc-cdis/metadata-service/pull/85)) 
  - [BRH-326]: 
    https://ctds-planx.atlassian.net/browse/BRH-326?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#85](https://github.com/uc-cdis/metadata-service/pull/85))

## uc-cdis/cloud-automation

#### New Features
  - Add the `metadata-delete-expired-objects` job, which removes expired 
    objects from `indexd`, `fence` and `Metadata Service`. Set it up by running 
    the `gen3 kube-setup-metadata-delete-expired-objects-cronjob` command 
    ([#1941](https://github.com/uc-cdis/cloud-automation/pull/1941))
  - Updated health check script to clear Evicted pods ([#2125](https://github.com/uc-cdis/cloud-automation/pull/2125)) 

#### Deployment Changes
  - To set up the `metadata-delete-expired-objects` job, run the `gen3 
    kube-setup-metadata-delete-expired-objects-cronjob` command. Note that the 
    `metadata-delete-expired-objects-job` client must be granted access to 
    `(resource=/mds_gateway, method=access, service=mds_gateway)` and 
    `(resource=/programs, method=delete, service=fence)` ([#1941](https://github.com/uc-cdis/cloud-automation/pull/1941)) 
  - [PXP-9516]: 
    https://ctds-planx.atlassian.net/browse/PXP-9516?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1941](https://github.com/uc-cdis/cloud-automation/pull/1941))

#### Dependency Updates
  - Update metrics-server to version 0.6.2 ([#2129](https://github.com/uc-cdis/cloud-automation/pull/2129)) 

#### Bug Fixes
  - Updated values yaml image locations to match chart changes. ([#2123](https://github.com/uc-cdis/cloud-automation/pull/2123)) 
  - https://github.com/prometheus-community/helm-charts/commit/f528fe820fa0f8d4eabada1b158854487e0563d8
    ([#2123](https://github.com/uc-cdis/cloud-automation/pull/2123))

#### Improvements
  - improving resource management for OHDSI Atlas and WebAPI ([#2119](https://github.com/uc-cdis/cloud-automation/pull/2119)) 
  - decreasing requests for nginx containers ([#2119](https://github.com/uc-cdis/cloud-automation/pull/2119)) 
  - increasing limits for WebAPI container ([#2119](https://github.com/uc-cdis/cloud-automation/pull/2119)) 
  - Daily 24h report jobs ([#2086](https://github.com/uc-cdis/cloud-automation/pull/2086)) 
  - Update filter metadata compoment in HEAL CEDAR ingestion script ([#2093](https://github.com/uc-cdis/cloud-automation/pull/2093)) 

