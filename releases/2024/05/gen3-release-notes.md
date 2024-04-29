# Core Gen3 Release 2024.05 (Aragonite)
## uc-cdis/arborist

#### New Features
  - `POST /auth/mapping`: return "anonymous" access when the user is 
    unauthenticated, matching the behavior of the `GET /auth/mapping` endpoint 
    (previously the `POST` endpoint returned an error in this case) ([#164](https://github.com/uc-cdis/arborist/pull/164)) 

## uc-cdis/cloud-automation

#### New Features
  - Adding External QDR Repository for HEAL project to whitelist ([#2509](https://github.com/uc-cdis/cloud-automation/pull/2509)) 
  - Let Hatchery assume the role configured in the Hatchery configuration's 
    `nextflow-global.imagebuilder-reader-role-arn` setting ([#2504](https://github.com/uc-cdis/cloud-automation/pull/2504)) 

#### Bug Fixes
  - ECR access job: fix conflict during role creating when the role name 
    already exists for a different namespace in the same AWS account ([#2515](https://github.com/uc-cdis/cloud-automation/pull/2515)) 
  - Update tls cipher suites ([#2506](https://github.com/uc-cdis/cloud-automation/pull/2506)) 

#### Improvements
  - Instead of deleting existing fence-client, we want the script to fail if 
    `fence-create create-client` command fails. ([#2514](https://github.com/uc-cdis/cloud-automation/pull/2514)) 
  - ECR access job: fix Slack notifications in case of failure ([#2504](https://github.com/uc-cdis/cloud-automation/pull/2504)) 
  - Add alt text to maintenance page images ([#2500](https://github.com/uc-cdis/cloud-automation/pull/2500)) 
  - Archived studies will no long show up as related studies ([#2498](https://github.com/uc-cdis/cloud-automation/pull/2498)) 

## uc-cdis/data-portal

#### New Features
  - Improves form usability by updating registration form with new messages 
    including an email link ([#1515](https://github.com/uc-cdis/data-portal/pull/1515)) 
  - Add username column to results table ([#1519](https://github.com/uc-cdis/data-portal/pull/1519)) 
  - Adds column management to VADC Atlas Data Dictionary ([#1518](https://github.com/uc-cdis/data-portal/pull/1518)) 
  - Retrieve covariates by concept type ([#1518](https://github.com/uc-cdis/data-portal/pull/1518)) 
  - add guppy defaultFilter functionality ([#1508](https://github.com/uc-cdis/data-portal/pull/1508)) 
  - Discovery: added an optional config field to allow displaying a subheader 
    under header ([#1507](https://github.com/uc-cdis/data-portal/pull/1507))
  - Updates Atlas Data Dictionary to use an integrated approach to handling UI 
    events, allowing different UI table updates to update each other. This 
    improves UX by enabling pagination resets and avoids problems such as being 
    on page 3 when there is no longer enough data to populate 3 pages. ([#1509](https://github.com/uc-cdis/data-portal/pull/1509)) 
  - Updates the Download Study Level Metadata button to not render a popover 
    ([#1505](https://github.com/uc-cdis/data-portal/pull/1505))
  - Add openICPSR as an option for repo selection ([#1503](https://github.com/uc-cdis/data-portal/pull/1503)) 
  - Adds charts to VADC Data Dictionary ([#1497](https://github.com/uc-cdis/data-portal/pull/1497)) 
  - Adds button to OHDSI Atlas app to open VADC Data Dictionary App in a new 
    tab ([#1497](https://github.com/uc-cdis/data-portal/pull/1497))
  - Updates value for cohort in Job Details from the cohort ID to the cohort 
    name ([#1497](https://github.com/uc-cdis/data-portal/pull/1497))
  - Ensures data source used by CohortMiddlewareApi getSources function is 
    delivered in expected format or throws error. ([#1497](https://github.com/uc-cdis/data-portal/pull/1497)) 

#### Improvements
  - Styles the global banner on data portal ([#1518](https://github.com/uc-cdis/data-portal/pull/1518)) 
  - Globally updates all instances of the variable nr_persons to personCount to 
    improve code maintainability, clarity and communication ([#1518](https://github.com/uc-cdis/data-portal/pull/1518)) 
  - more consistent naming between quantitative and case-control gwas modules 
    ([#1518](https://github.com/uc-cdis/data-portal/pull/1518))
  - Adds unit test to ensure study level metadata button does not render when 
    the resourceInfo does not include ([#1516](https://github.com/uc-cdis/data-portal/pull/1516)) 
  - the study metadata field name reference from the discovery config ([#1516](https://github.com/uc-cdis/data-portal/pull/1516)) 
  - Adds file name sanitation for zipped JSON files as part of VLMD download. 
    ([#1512](https://github.com/uc-cdis/data-portal/pull/1512))
  - Adds space in error message for failed VLMD downloads. ([#1512](https://github.com/uc-cdis/data-portal/pull/1512)) 
  - Populate both the Gen3 tag and the data_repositories when only a repository 
    name is indicated during study registration ([#1501](https://github.com/uc-cdis/data-portal/pull/1501)) 
  - Refactored Actions Buttons Test to increase coverage and concision ([#1505](https://github.com/uc-cdis/data-portal/pull/1505)) 
  - Discovery: for AggWTS feature, deal with the fact that some `commons_url` 
    from config has portocol prefixes instead of a clean hostname ([#1499](https://github.com/uc-cdis/data-portal/pull/1499)) 
  - Refactors Discovery Details page to use modularized components ([#1500](https://github.com/uc-cdis/data-portal/pull/1500)) 
  - Updates unit test for Discovery page to pass following this update ([#1500](https://github.com/uc-cdis/data-portal/pull/1500)) 

#### Bug Fixes
  - Updates the logic for the study level metadata button so it is not disabled 
    even when there is noData ([#1516](https://github.com/uc-cdis/data-portal/pull/1516)) 
  - Fixes issue with entries header showing incorrect values ([#1509](https://github.com/uc-cdis/data-portal/pull/1509)) 
  - Fixes stylelint issues in AtlasDataDictionary.css ([#1509](https://github.com/uc-cdis/data-portal/pull/1509)) 
  - Fixes issue with incorrect number of entries shown on the second page when 
    there are more entries than one page can hold but less than three pages 
    ([#1509](https://github.com/uc-cdis/data-portal/pull/1509))
  - Introduced an onClear prop that clears tags in data-portal when you hit the 
    "X" clear button. Previously, pressing the button would result in no 
    action. ([#1504](https://github.com/uc-cdis/data-portal/pull/1504))

#### Dependency Updates
  - Bumps [ip](https://github.com/indutny/node-ip) from 2.0.0 to 2.0.1. (#1489)

## uc-cdis/fence

#### New Features
  - Added upload bucket selection support for multipart upload ([#1112](https://github.com/uc-cdis/fence/pull/1112)) 
  - Add support for non-aws s3 buckets for multipart upload ([#1112](https://github.com/uc-cdis/fence/pull/1112)) 

#### Improvements
  - Update base user.yaml in documentation to pass validation ([#1140](https://github.com/uc-cdis/fence/pull/1140)) 

#### Dependency Updates
  - cryptography to 42.0.5 ([#1141](https://github.com/uc-cdis/fence/pull/1141))

## uc-cdis/guppy

#### Improvements
  - Improved logging for GraphQL queries (include timing) ([#258](https://github.com/uc-cdis/guppy/pull/258)) 
  - Use POST instead of GET /auth/mapping endpoint to enable client_credentials 
    authentication ([#254](https://github.com/uc-cdis/guppy/pull/254))

#### Dependency Updates
  - Bumps [express](https://github.com/expressjs/express) from 4.18.2 to 
    4.19.2. (#261)
  - Bumps 
    [webpack-dev-middleware](https://github.com/webpack/webpack-dev-middleware) 
    from 5.3.3 to 5.3.4. (#259)
  - Bumps [ip](https://github.com/indutny/node-ip) from 2.0.0 to 2.0.1. (#256)

## uc-cdis/hatchery

#### New Features
  - Add `nextflow.instance-ami-builder-arn` setting: the ARN of an AWS image 
    builder pipeline. Can be overridden by the existing `nextflow.instance-ami` 
    setting. The `nextflow-global.imagebuilder-reader-role-arn` setting must be 
    configured as well for this to work; see docs at 
    https://github.com/uc-cdis/hatchery/blob/master/doc/explanation/nextflow.md#nextflow-globalimagebuilder-reader-role-arn
    ([#96](https://github.com/uc-cdis/hatchery/pull/96))

#### Bug Fixes
  - Fix the logic when handling errors around creating instance profiles for 
    nextflow/ batch ([#103](https://github.com/uc-cdis/hatchery/pull/103))
  - Allow `/terminate` to complete when dynamodb query returns nil values 
    ([#100](https://github.com/uc-cdis/hatchery/pull/100))

#### Improvements
  - The Nextflow sample configuration now includes a public image that is 
    configurable instead of hardcoded ([#102](https://github.com/uc-cdis/hatchery/pull/102)) 
  - Cancel Nextflow jobs on workspace termination ([#101](https://github.com/uc-cdis/hatchery/pull/101)) 
  - Update Hatchery configuration docs to include missing settings ([#96](https://github.com/uc-cdis/hatchery/pull/96)) 
  - Update Nextflow sample configuration to use an accessible image from 
    `nextflow-approved/public` ([#96](https://github.com/uc-cdis/hatchery/pull/96)) 
  - Manages gen3-licensed notebook users in dynamoDB table ([#89](https://github.com/uc-cdis/hatchery/pull/89)) 
  - Read prismacloud console version from config, but fallback to v32.02. ([#97](https://github.com/uc-cdis/hatchery/pull/97)) 

#### Deployment Changes
  - No longer utilizes the `distribute-licenses` cloud-automation cron job 
    ([#89](https://github.com/uc-cdis/hatchery/pull/89))

## uc-cdis/indexd

#### New Features
  - Locking poetry dependencies ([#377](https://github.com/uc-cdis/indexd/pull/377)) 

## uc-cdis/peregrine

#### Improvements
  - add GraphQL query itself to existing log about GraphQL timing ([#216](https://github.com/uc-cdis/peregrine/pull/216)) 

## uc-cdis/sheepdog

#### Improvements
  - add a bit more clarity regarding setup prereqs ([#408](https://github.com/uc-cdis/sheepdog/pull/408)) 

## uc-cdis/tube

#### New Features
  - Add test for count aggregation ([#259](https://github.com/uc-cdis/tube/pull/259)) 

#### Improvements
  - Add documentation about dataframe unit tests ([#261](https://github.com/uc-cdis/tube/pull/261)) 

#### Dependency Updates
  - removing ipaddress from dependencies to resolve vulnerability issue ([#262](https://github.com/uc-cdis/tube/pull/262)) 

