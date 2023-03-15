# Core Gen3 Release 2023.03 (Olivine)

## uc-cdis/arborist

#### Improvements
  - Fix misleading `/auth/proxy` endpoint documentation. The endpoint does not 
    return an `ok` field ([#155](https://github.com/uc-cdis/arborist/pull/155))

## uc-cdis/gen3-statics

#### Improvements
  - Add CSP directives in response ([#27](https://github.com/uc-cdis/gen3-statics/pull/27)) 

#### Dependency Updates
  - Adpoted `helmet` ([#27](https://github.com/uc-cdis/gen3-statics/pull/27))
  - Adpoted `cors` ([#27](https://github.com/uc-cdis/gen3-statics/pull/27))

#### Deployment Changes
  - This change will add some CSP and CORS related header to the response that 
    returned from the dashboard services. They should not be interruptive, but 
    each team is encouraged to double check their webpages hosted by dashboard 
    to ensure they still works ([#27](https://github.com/uc-cdis/gen3-statics/pull/27)) 
  - Because of these CSP directives being added, starting from this version, if 
    anyone what to load remote scripts in their dashboard-hosted webpages, they 
    will need to update the CSP directives in this dashboard service if the 
    current directives doesn't fit, or to ship the script files with the page 
    ([#27](https://github.com/uc-cdis/gen3-statics/pull/27))

## uc-cdis/fence

#### New Features
  - Use the `fence-create client-rotate` command to receive a new set of 
    credentials for a client without deleting the old credentials first. This 
    allows for a rotation without downtime. ([#1068](https://github.com/uc-cdis/fence/pull/1068)) 

#### Deployment Changes
  - Requires a Fence DB migration ([#1068](https://github.com/uc-cdis/fence/pull/1068)) 

#### Dependency Updates
  - Python to 3.9 ([#1069](https://github.com/uc-cdis/fence/pull/1069))
  - `authutils` to ^6.2.2, `PyJWT` to ^2.4.0 ([#1069](https://github.com/uc-cdis/fence/pull/1069)) 

#### Bug Fixes
  - Fix "non-unique client name" migration to delete all the "unique client name" constraints it finds, instead of assuming there is exactly one [#1075](https://github.com/uc-cdis/fence/pull/1075)

## uc-cdis/pidgin

#### Improvements
  - Use central github workflow actions for image build and push ([#45](https://github.com/uc-cdis/pidgin/pull/45)) 

## uc-cdis/data-portal

#### Improvements
  - Update the default `createdby` image ([#1230](https://github.com/uc-cdis/data-portal/pull/1230)) 
  - Fix misleading use of `fetch()` response `.ok` when calling `/auth/proxy` 
    ([#1220](https://github.com/uc-cdis/data-portal/pull/1220))
  - Prevent portal from updating `_unique_id` to 
    `${commonsName}_${x._unique_id}_${index}` to bring consistency to the id of 
    the studies regardless of their order in MDS ([#1205](https://github.com/uc-cdis/data-portal/pull/1205)) 

#### New Features
  - Bug fix for virtual tour: https://github.com/uc-cdis/data-portal/pull/1217 
    ([#1227](https://github.com/uc-cdis/data-portal/pull/1227))
  - Unified flow table selection: 
    https://github.com/uc-cdis/data-portal/pull/1215 ([#1227](https://github.com/uc-cdis/data-portal/pull/1227)) 
  - disable retries of failed requests at a global level for the GWAS app, 
    align storybook request config , throw web service errors: 
    https://github.com/uc-cdis/data-portal/pull/1216 ([#1227](https://github.com/uc-cdis/data-portal/pull/1227)) 
  - Fix SelectCohort errors: https://github.com/uc-cdis/data-portal/pull/1218 
    ([#1227](https://github.com/uc-cdis/data-portal/pull/1227))
  - Added and reverted addition of React Library (following accidental merge) 
    https://github.com/uc-cdis/data-portal/pull/1221 and 
    https://github.com/uc-cdis/data-portal/pull/1223 ([#1227](https://github.com/uc-cdis/data-portal/pull/1227)) 
  - Support hiding DICOM pop-out buttons for N/A DICOM images. ([#1173](https://github.com/uc-cdis/data-portal/pull/1173)) 
  - Add new config field `guppyConfig.manifestMapping.useFilterForCounts` to 
    data explorer. Set to `true` to use the explore filter to query for file 
    counts. This requires the fields that has been specified in the explorer 
    tab of a certain index must have all those fields injected into its 
    corresponding File index ([#1173](https://github.com/uc-cdis/data-portal/pull/1173)) 
  - VADC-378 Integrate the virtual tour into the new GWAS (#1207). This 
    integrates the virtual tour into the new GWAS app ([#1211](https://github.com/uc-cdis/data-portal/pull/1211)) 
  - VADC-393: fix query config import (#1202). Imports queryConfig from 
    cohortMiddlewareApi.js instead of react-query for cohort listing. ([#1211](https://github.com/uc-cdis/data-portal/pull/1211)) 
  - VADC-373: Feat/gwas unified flow style steps2 and3 (#1203). This updates 
    the styles for views 2.1, 2.2, 3.1 and 3.2, so that the buttons are to be 
    positioned on the top right above the charts. ([#1211](https://github.com/uc-cdis/data-portal/pull/1211)) 
  - VADC-366: Feat/gwas unified flow outcome card (#1201). This adds an outcome 
    card that shows in the the sidebar after a user selects an outcome. It has 
    been styled to match the design. ([#1211](https://github.com/uc-cdis/data-portal/pull/1211)) 
  - VADC-364: Feat/gwas style sidebars (#1195). This styles the sidebars. 
    ([#1211](https://github.com/uc-cdis/data-portal/pull/1211))
  - VADC-382: feat: add JEST tests for dichotomous(case/control) scenario 
    (#1191). Adds new JEST tests for SelectHareDropDown component, adds 
    documentation to main README.md on how to run JEST unit tests and ([#1211](https://github.com/uc-cdis/data-portal/pull/1211)) 
  - removes some unnecessary code ([#1211](https://github.com/uc-cdis/data-portal/pull/1211)) 
  - Homepage: added options to exclude File nodes from the charts ([#1208](https://github.com/uc-cdis/data-portal/pull/1208)) 

#### Bug Fixes
  - Removes ref to non-working server in TestSchema.sh ([#1226](https://github.com/uc-cdis/data-portal/pull/1226)) 
  - Hook was calling multiple times for every checkbox click ([#1209](https://github.com/uc-cdis/data-portal/pull/1209)) 

#### Dependency Updates
  - Bumps [glob-parent](https://github.com/gulpjs/glob-parent) from 3.1.0 to 
    5.1.2. (#1105)

#### Deployment Changes
  - New portal config options to exclude File nodes from the charts added: use 
    `"graphql.chartNodesExcludeFiles"` to exclude File nodes from graphql 
    chart, or use `"components.index.homepageChartNodesExcludeFiles"` to 
    exclude File nodes from homepage chart. Note both of them are default to 
    `false` so you have to explicitly set them to `true` to enable them ([#1208](https://github.com/uc-cdis/data-portal/pull/1208)) 

## uc-cdis/sheepdog

#### Improvements
  - Log actual `grant_read_permissions_to_graph` errors ([#388](https://github.com/uc-cdis/sheepdog/pull/388)) 
  - The unit tests have been refactored so that some of the duplicated setup is 
    now shared ([#387](https://github.com/uc-cdis/sheepdog/pull/387))

#### Dependency Updates
  - Python 3.9 ([#387](https://github.com/uc-cdis/sheepdog/pull/387))
  - `indexclient` to 2.1.1 ([#387](https://github.com/uc-cdis/sheepdog/pull/387)) 
  - Use Poetry for dependency management. Update and clean up dependencies. Set 
    more flexible dependency versions. ([#387](https://github.com/uc-cdis/sheepdog/pull/387)) 
  - upgrade `cryptography` to latest version (and other necessary deps) ([#381](https://github.com/uc-cdis/sheepdog/pull/381)) 

#### Deployment Changes
  - Sheepdog does not rely on configuration files in the cloud-automation 
    repository anymore. The Sheepdog configuration files are in the Sheepdog 
    repository. ([#387](https://github.com/uc-cdis/sheepdog/pull/387))

## uc-cdis/tube

#### New Features
  - Add the option to specify the relation type of parent nodes should be 
    either `1-1` or `1-n` ([#220](https://github.com/uc-cdis/tube/pull/220))

#### Bug Fixes
  - Fix the case when data is array and nested in array field of file index 
    ([#223](https://github.com/uc-cdis/tube/pull/223))
  - Fix issue with the same name of non-leaf properties and leaf properties 
    ([#222](https://github.com/uc-cdis/tube/pull/222))

