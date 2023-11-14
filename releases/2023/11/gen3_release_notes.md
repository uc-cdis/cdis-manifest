# Core Gen3 Release 2023.11 (Tourmaline)

## uc-cdis/audit-service

#### Dependency Updates
  - Bumps [urllib3](https://github.com/urllib3/urllib3) from 1.26.15 to 
    1.26.17. (#38)
  - Bumps [certifi](https://github.com/certifi/python-certifi) from 2022.12.7 
    to 2023.7.22. (#35)
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 41.0.3 to 
    41.0.4. (#37)
  - Bumps [requests](https://github.com/psf/requests) from 2.28.2 to 2.31.0. 
    (#32)
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 40.0.1 to 
    41.0.3. (#36)

## uc-cdis/cloud-automation

#### New Features
  - Update Hatchery's service account permissions to include access required to 
    run Nextflow workflows in AWS Batch ([#2369](https://github.com/uc-cdis/cloud-automation/pull/2369)) 

#### Bug Fixes
  - HEAL CEDAR ingestion script: ignore study metadata record that is neither 
    unregistered nor registered ([#2381](https://github.com/uc-cdis/cloud-automation/pull/2381)) 
  - Updated fluentd to work with cri parser plugin ([#2367](https://github.com/uc-cdis/cloud-automation/pull/2367)) 

#### Improvements
  - Updated instance types to latest/greatest and removed consolidation ([#2364](https://github.com/uc-cdis/cloud-automation/pull/2364)) 
  - Populate study info metadata tags from search filters ([#2343](https://github.com/uc-cdis/cloud-automation/pull/2343)) 
  - Update sslpolicy to only allow tls1.3 in alb ([#2312](https://github.com/uc-cdis/cloud-automation/pull/2312)) 
  - no need for `-z "$JENKINS_HOME"` for kube-setup-cohort-middleware ([#2361](https://github.com/uc-cdis/cloud-automation/pull/2361)) 

#### Dependency Updates
  - Moving datadog to govcloud site. ([#2341](https://github.com/uc-cdis/cloud-automation/pull/2341)) 

## uc-cdis/data-portal

#### Bug Fixes
  - Misc: fixed a bug caused by the webpack startup script cannot correctly 
    execute if there are directories in config path ([#1434](https://github.com/uc-cdis/data-portal/pull/1434)) 
  - SystemUsePopup: fixed a bug causing the acceptance cookie cannot be set due 
    to incorrect domain values ([#1434](https://github.com/uc-cdis/data-portal/pull/1434)) 
  - this PR reverts the prototype Atlas starter step introduced in 
    https://github.com/uc-cdis/data-portal/pull/1401 ([#1431](https://github.com/uc-cdis/data-portal/pull/1431)) 
  - fix loading of gitops.css locally ([#1421](https://github.com/uc-cdis/data-portal/pull/1421)) 
  - Explorer: fixed a bug that causes some field is missing from aggregated 
    data ([#1427](https://github.com/uc-cdis/data-portal/pull/1427))
  - Fix import of ddEnv in NCT ([#1423](https://github.com/uc-cdis/data-portal/pull/1423)) 
  - Discovery: fixed a bug causing the details page to crash when encountering 
    null values ([#1422](https://github.com/uc-cdis/data-portal/pull/1422))
  - Discovery: tags and access descriptors can be rendered correctly in tabbed 
    view details page ([#1418](https://github.com/uc-cdis/data-portal/pull/1418)) 
  - Fixed a bug that casts all numeric field in filter into text fields ([#1404](https://github.com/uc-cdis/data-portal/pull/1404)) 
  - Fixes bug in GWAS app related to next button being enabled after user 
    navigates to previous steps following submission ([#1414](https://github.com/uc-cdis/data-portal/pull/1414)) 
  - Fix query page styling issue ([#1402](https://github.com/uc-cdis/data-portal/pull/1402)) 
  - Fix issue when loading local stylesheets for dev server ([#1402](https://github.com/uc-cdis/data-portal/pull/1402)) 
  - fix study viewer alphabetical ordering ([#1407](https://github.com/uc-cdis/data-portal/pull/1407)) 

#### New Features
  - Updates the storybook npm command so that it works without needing to run 
    additional commands first ([#1426](https://github.com/uc-cdis/data-portal/pull/1426)) 
  - New placeholder state variable for setting and passing the selected "team 
    project" in the /submit request to argo-wrapper ([#1426](https://github.com/uc-cdis/data-portal/pull/1426)) 
  - Discovery: `link` and `linkList` typed field now support customize titles 
    for hyperlinks (Note: to have customized titles, each link has to be an 
    object in the format of `{ "link": "http://i.am.a.link.example", "title": 
    "I am a Link Title" }`) ([#1418](https://github.com/uc-cdis/data-portal/pull/1418)) 
  - Add a new Guppy Explorer config field `filters.tabs.asTextAggFields` to 
    explicitly specify the filter field names that to be casted from numeric to 
    text ([#1404](https://github.com/uc-cdis/data-portal/pull/1404))
  - This updates the error message for Manhattan plot errors ([#1414](https://github.com/uc-cdis/data-portal/pull/1414)) 
  - Updates GWAS App so when user has a finalPopulationSize containing an 
    object with a size value of zero, it renders a warning message and prevents 
    the user from advancing to the next step ([#1414](https://github.com/uc-cdis/data-portal/pull/1414)) 
  - Fixes Atlas URL on QA env ([#1414](https://github.com/uc-cdis/data-portal/pull/1414)) 
  - Removes duplicate code between the GWAS and Results app by placing 
    instances of duplicate code into a shared util folder ([#1414](https://github.com/uc-cdis/data-portal/pull/1414)) 
  - Adjusts Atlas starter to first display list of "team project" options 
    available to the user, before opening Atlas ([#1414](https://github.com/uc-cdis/data-portal/pull/1414)) 

#### Improvements
  - new configuration variable for DICOM Viewer URL, similar to 
    `dicomViewerId`; have default value to support old deployments ([#1432](https://github.com/uc-cdis/data-portal/pull/1432)) 
  - new configuration variable for DICOM Server URL, similar to 
    `dicomViewerId`; have default value to support old deployments ([#1432](https://github.com/uc-cdis/data-portal/pull/1432)) 
  - Adds unit tests for home table filtering in Results App ([#1426](https://github.com/uc-cdis/data-portal/pull/1426)) 
  - Discovery: better styling for fields with no label from config ([#1418](https://github.com/uc-cdis/data-portal/pull/1418)) 
  - Update VLMD workflow name in kayako template ([#1413](https://github.com/uc-cdis/data-portal/pull/1413)) 
  - Move ddUrl for RUM to configuration, instead of hardcoding - This is 
    necessary for the move to datadog govcloud. ([#1410](https://github.com/uc-cdis/data-portal/pull/1410)) 
  - change idp based access check conditions on buttons for ICPSR studies in 
    HEAL ([#1409](https://github.com/uc-cdis/data-portal/pull/1409))
  - use callback hook ([#1409](https://github.com/uc-cdis/data-portal/pull/1409)) 
  - housekeeping Fix dev dependency lint errors when running eslint locally 
    ([#1406](https://github.com/uc-cdis/data-portal/pull/1406))

#### Dependency Updates
  - Bumps 
    [import-in-the-middle](https://github.com/DataDog/import-in-the-middle) 
    from 1.3.4 to 1.4.2. (#1379)
  - Bumps [postcss](https://github.com/postcss/postcss) from 8.4.27 to 8.4.31. 
    (#1429)
  - Guppy to `0.17.1` ([#1427](https://github.com/uc-cdis/data-portal/pull/1427)) 
  - Guppy to 0.17.0 ([#1404](https://github.com/uc-cdis/data-portal/pull/1404))

## uc-cdis/fence

#### Improvements
  - Downloads through GA4GH DRS are recorded in audit service ([#1117](https://github.com/uc-cdis/fence/pull/1117)) 

## uc-cdis/guppy

#### Improvements
  - Add note to documentation for Ubuntu generate_data not running correctly 
    ([#235](https://github.com/uc-cdis/guppy/pull/235))
  - Update ES6 image for local dev helper to support running on Apple Silicon 
    Macs ([#234](https://github.com/uc-cdis/guppy/pull/234))

#### Dependency Updates
  - Bumps [postcss](https://github.com/postcss/postcss) from 8.4.25 to 8.4.31. 
    (#240)
  - Bumps [graphql](https://github.com/graphql/graphql-js) from 16.7.1 to 
    16.8.1. (#237)
  - Bumps 
    [import-in-the-middle](https://github.com/DataDog/import-in-the-middle) 
    from 1.4.1 to 1.4.2. (#230)
  - Bumps 
    [@apollo/server](https://github.com/apollographql/apollo-server/tree/HEAD/packages/server)
    from 4.7.5 to 4.9.3. (#232)

#### Bug Fixes
  - fixed an issue that causes the connected filters to crash ([#239](https://github.com/uc-cdis/guppy/pull/239)) 
  - Fixed a bug that casts all numeric field in filter into text fields ([#234](https://github.com/uc-cdis/guppy/pull/234)) 

#### New Features
  - Add a new Guppy Explorer config field `filters.tabs.asTextAggFields` to 
    explicitly specify the filter field names that to be casted from numeric to 
    text ([#234](https://github.com/uc-cdis/guppy/pull/234))

## uc-cdis/hatchery

#### Bug Fixes
  - Fix Nextflow Batch compute environment to be user-specific ([#82](https://github.com/uc-cdis/hatchery/pull/82)) 

#### New Features
  - Support Nextflow on AWS Batch through workspaces ([#77](https://github.com/uc-cdis/hatchery/pull/77)) 

## uc-cdis/indexd

#### Bug Fixes
  - Add version endpoint now works with content_create_date and 
    content_update_date. ([#365](https://github.com/uc-cdis/indexd/pull/365))

## uc-cdis/manifestservice

#### Improvements
  - fix(docs): fix issues with openapi generation, add required deps, push 
    updated docs ([#33](https://github.com/uc-cdis/manifestservice/pull/33))

## uc-cdis/metadata-service

#### Improvements
  - don't throw error if there is no record from MDS in AggMDS ([#89](https://github.com/uc-cdis/metadata-service/pull/89)) 

## uc-cdis/sheepdog

#### Improvements
  - Remove unused oauth2 blueprint and its settings and dependencies ([#402](https://github.com/uc-cdis/sheepdog/pull/402)) 
  - fix(travis): remove travis CI, replace with GH Actions ([#400](https://github.com/uc-cdis/sheepdog/pull/400)) 

#### Dependency Updates
  - Remove `cdis_oauth2client` dependency ([#402](https://github.com/uc-cdis/sheepdog/pull/402)) 

## uc-cdis/sower

#### Dependency Updates
  - Bumps [golang.org/x/net](https://github.com/golang/net) from 
    0.0.0-20220121210141-e204ce36a2ba to 0.7.0. (#39)

## uc-cdis/tube

#### Breaking Changes
  - fix data type of count of the field from index ([#243](https://github.com/uc-cdis/tube/pull/243)) 

#### Bug Fixes
  - Fix wait_for_quay ([#242](https://github.com/uc-cdis/tube/pull/242))

## uc-cdis/workspace-token-service

#### Dependency Updates
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 39.0.1 to 
    41.0.3. (#66)
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 2.8 to 
    39.0.1. (#54)
