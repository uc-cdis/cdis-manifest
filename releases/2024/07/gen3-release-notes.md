# Core Gen3 Release 2024.07 (Beryllonite)
## Release Highlights and Announcements

### Advance Notice of Upcoming Breaking Change in _Next_ Release (2024.08) 
Please be advised the the _next_ release of Gen3 will include a breaking change to Fence due to a major upgrade to the underlying OIDC library. The Fence changes have been merged but will be part of the 2024.08 release, not the current release. Gen3 administrators will need to run a Fence database migration when they update. 

More information will be provided with the 2024.08 release.

## uc-cdis/audit-service

#### Dependency Updates
  - Bumps [requests](https://github.com/psf/requests) from 2.31.0 to 2.32.0. 
    (#56)

## uc-cdis/cloud-automation

#### New Features
  - adding [r7iz](https://aws.amazon.com/ec2/instance-types/r7iz/) nodes to 
    workflows for GWAS, related to 
    https://github.com/uc-cdis/vadc-genesis-cwl/pull/77. ([#2561](https://github.com/uc-cdis/cloud-automation/pull/2561)) 
  - cleanup statefulset ([#2560](https://github.com/uc-cdis/cloud-automation/pull/2560)) 
  - new config to enable "global cohorts" feature in Atlas and 
    cohort-middleware ([#2544](https://github.com/uc-cdis/cloud-automation/pull/2544)) 
  - Pass user.yaml to the indexd authz migration job if available (so job has 
    same authz mapping fence uses) ([#2040](https://github.com/uc-cdis/cloud-automation/pull/2040)) 
  - Added cdis helm repo to squid whitelist ([#2043](https://github.com/uc-cdis/cloud-automation/pull/2043)) 
  - Image Builder Pipeline for Nextflow FIPS enabled AMI's ([#2384](https://github.com/uc-cdis/cloud-automation/pull/2384)) 
  - Give hatchery access to Cost Usage Report in AWS, so that hatchery can 
    report on user level compute costs. ([#2401](https://github.com/uc-cdis/cloud-automation/pull/2401)) 
  - Upgrade OpenVPN to latest ([#2492](https://github.com/uc-cdis/cloud-automation/pull/2492)) 
  - Edit scripts with the ability to run on FIPS'd Amazon Linux 2 nodes ([#2492](https://github.com/uc-cdis/cloud-automation/pull/2492)) 
  - Use easyrsa3 to build certificates ([#2492](https://github.com/uc-cdis/cloud-automation/pull/2492)) 
  - Upgraded karpenter version support in kube-setup-karpenter ([#2530](https://github.com/uc-cdis/cloud-automation/pull/2530)) 

#### Bug Fixes
  - Added route table associations for all of the new subnets ([#1999](https://github.com/uc-cdis/cloud-automation/pull/1999)) 
  - Fixed jenkins tests ([#2178](https://github.com/uc-cdis/cloud-automation/pull/2178)) 
  - Revproxy needs the CPU/ Memory during load or connections gets torn down 
    prematurely ([#2210](https://github.com/uc-cdis/cloud-automation/pull/2210))
  - Persist CDE tags and filters in cedar-ingestion job ([#2551](https://github.com/uc-cdis/cloud-automation/pull/2551)) 

#### Improvements
  - HEAL CEDAR ingestion: don't update clinicaltrials.gov from CEDAR values 
    ([#2556](https://github.com/uc-cdis/cloud-automation/pull/2556))
  - increase fence cpu ([#1921](https://github.com/uc-cdis/cloud-automation/pull/1921)) 
  - better default user.yaml for access-backend ([#2305](https://github.com/uc-cdis/cloud-automation/pull/2305)) 
  - pass `AGG_MDS_DEFAULT_DATA_DICT_FIELD` to MDS as env var ([#2550](https://github.com/uc-cdis/cloud-automation/pull/2550)) 

#### Deployment Changes
  - disable prometheus setup in roll all ([#2559](https://github.com/uc-cdis/cloud-automation/pull/2559)) 

## uc-cdis/data-portal

#### New Features
  - Adds a search bar message in VADC Data Dictionary that is revealed when the 
    user searches for a result whose column is hidden on the current page due 
    to their column management selection. This message includes a button that 
    allows the user to reset their column management selections to display the 
    hidden information. ([#1548](https://github.com/uc-cdis/data-portal/pull/1548)) 

#### Bug Fixes
  - Removes the delay that occurs when opening GWAS Results after switching 
    teams, such as after Selecting team1, Open GWAS Results, wait 5s, Select 
    team2, Open GWAS Results. Before you would see team1 results for first 5s 
    or so ([#1548](https://github.com/uc-cdis/data-portal/pull/1548))
  - CheckSearchTermUtils updated to handle user searches including commas and 
    percentages, fixes bug with zeros (before searching for zero did not work 
    correctly nor highlight). Added new function formatForSearchComparison to 
    support this. ([#1548](https://github.com/uc-cdis/data-portal/pull/1548))
  - Discovery: fixed a bug that button incorrectly disabled because of 
    duplicated required IDP tags ([#1545](https://github.com/uc-cdis/data-portal/pull/1545)) 
  - Discovery: fix another bug cause the page to crash due to incorrectly 
    handling optional tags field ([#1544](https://github.com/uc-cdis/data-portal/pull/1544)) 
  - Discovery: fixed a bug causing the page to crash due to inappropriately 
    handling optional tags field ([#1543](https://github.com/uc-cdis/data-portal/pull/1543)) 

#### Improvements
  - Adds debouncing for search input on VADC Atlas Data Dictionary application 
    to improve UX when typing searches with large table data sizes ([#1548](https://github.com/uc-cdis/data-portal/pull/1548)) 
  - Updates column names and formats numbers with commas to improve readability 
    ([#1548](https://github.com/uc-cdis/data-portal/pull/1548))
  - Update attrition table component to dynamically generate breakdown columns 
    instead of relying on hardcoded value ([#1548](https://github.com/uc-cdis/data-portal/pull/1548)) 
  - Discovery: use file manifest instead of study IDs for direct download 
    ([#1545](https://github.com/uc-cdis/data-portal/pull/1545))
  - Remove the nginx routing regex pattern specific to file extensions, so it 
    won't match for project IDs that contain a "." ([#1538](https://github.com/uc-cdis/data-portal/pull/1538)) 

#### Dependency Updates
  - Globally renames react state ```data``` to ```displayedData``` to improve 
    code clarity. ([#1548](https://github.com/uc-cdis/data-portal/pull/1548))

## uc-cdis/fence

#### Dependency Updates
  - many dep updates, including security update for werkzeug ([#1146](https://github.com/uc-cdis/fence/pull/1146)) 

## uc-cdis/hatchery

#### Improvements
  - Nextflow: enable KMS encryption on Nextflow-managed S3 buckets ([#108](https://github.com/uc-cdis/hatchery/pull/108)) 

## uc-cdis/manifestservice

#### Dependency Updates
  - Bumps [requests](https://github.com/psf/requests) from 2.31.0 to 2.32.0. 
    (#49)
  - Bumps [idna](https://github.com/kjd/idna) from 3.6 to 3.7. (#46)
  - Bumps [jinja2](https://github.com/pallets/jinja) from 3.1.3 to 3.1.4. (#48)
  - Bumps [werkzeug](https://github.com/pallets/werkzeug) from 3.0.1 to 3.0.3. 
    (#47)

#### New Features
  - Added 3 new endpoints: ([#43](https://github.com/uc-cdis/manifestservice/pull/43)) 
  - POST /metadata, allows to POST a json object containing discovery metadata 
    for a given study, returns file name stored in s3 bucket. ([#43](https://github.com/uc-cdis/manifestservice/pull/43)) 
  - GET /metadata, List all exported metadata objects associated with user 
    ([#43](https://github.com/uc-cdis/manifestservice/pull/43))
  - GET /metadata/<filename.json>, Read the contents of an exported metadata 
    object in the user's folder ([#43](https://github.com/uc-cdis/manifestservice/pull/43)) 

## uc-cdis/peregrine

#### Bug Fixes
  - Fix a bug when querying datanode with `first` filter. The bug was mitigated 
    by datanode queries now returning the first `<first>` items for each file 
    node. ([#218](https://github.com/uc-cdis/peregrine/pull/218))

#### Dependency Updates
  - werkzeug to 3.0.3 ([#217](https://github.com/uc-cdis/peregrine/pull/217))
  - jinja2 to 3.1.4 ([#217](https://github.com/uc-cdis/peregrine/pull/217))
  - cryptography to 42.0.7 ([#217](https://github.com/uc-cdis/peregrine/pull/217)) 

## uc-cdis/requestor

#### Dependency Updates
  - Bumps [requests](https://github.com/psf/requests) from 2.31.0 to 2.32.0. 
    (#69)

## uc-cdis/sheepdog

#### Dependency Updates
  - Minor version updates for various dependencies ([#412](https://github.com/uc-cdis/sheepdog/pull/412)) 

## uc-cdis/sower-jobs

#### Dependency Updates
  - Bumps [tqdm](https://github.com/tqdm/tqdm) from 4.66.2 to 4.66.3. (#54)
  - Bumps [requests](https://github.com/psf/requests) from 2.31.0 to 2.32.0. 
    (#55)

## uc-cdis/tube

#### Bug Fixes
  - We always flatten nested array for parent properties ([#270](https://github.com/uc-cdis/tube/pull/270)) 

## uc-cdis/workspace-token-service

#### Dependency Updates
  - `cryptography -> ">= 42.0.0"` ([#79](https://github.com/uc-cdis/workspace-token-service/pull/79)) 
  - `pyyaml -> "^6.0.1"` ([#79](https://github.com/uc-cdis/workspace-token-service/pull/79)) 

