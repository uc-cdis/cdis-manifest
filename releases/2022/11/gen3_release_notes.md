# Core Gen3 Release 2022.11

## uc-cdis/gen3-statics

#### Improvements
  - Removing Veracode scanning pipeline (#13)

## uc-cdis/fence

#### Improvements
  - Removing Veracode scanning pipeline (#1052)
  - Return a 500 error instead of a 401 error when an S3 bucket is not 
    configured properly (#1051)

#### New Features
  - Allow specifying the bucket to upload to (endpoints `/data/upload` and 
    `/data/upload/<GUID>`) (#1051)

#### Deployment Changes
  - Configure the `ALLOWED_DATA_UPLOAD_BUCKETS` setting to allow users to 
    upload to buckets other than `DATA_UPLOAD_BUCKET` (#1051)
  - B/c the default session expiration changed from 30 minutes to 15 minutes to 
    comply with FedRAMP, you MUST ensure that an instance that should comply 
    with FedRAMP does NOT override this fence configuration (e.g. it should be 
    15 minutes) `SESSION_TIMEOUT: 900` (#1040)

#### Breaking Changes
  - Default session expiration changed from 30 minutes to 15 minutes to comply 
    with FedRAMP (#1040)

## uc-cdis/guppy

#### Improvements
  - Removing Veracode scanning pipeline (#148)

## uc-cdis/indexd

#### Improvements
  - Removing Veracode scanning pipeline (#339)
  - allow passing of fence config for authz mapping to the acl migration script 
    (#336)

#### Breaking Changes
  - Ensure you are using Fence>=2021.10. Remove deprecated GA4GH access 
    endpoints. these have existed (and been used) from the Fence microservice 
    since last year. See cloud automation change 
    [here](https://github.com/uc-cdis/cloud-automation/blob/f10f04f7957eb2ba179504f7df9d6429f7298835/gen3/bin/kube-setup-revproxy.sh#L78-L79)
    (#336)

## uc-cdis/pelican

#### Improvements
  - Removing Veracode scanning pipeline (#66)

## uc-cdis/data-portal

#### New Features
  - This makes the whole of the cards on the Gen3 GWAS clickable. (#1109)
  - It also allows for the user to navigate to them using their keyboard (by 
    pressing the tab key) and trigger them using either the space bar or enter 
    key. Adds a hover state for the cards modeled after hover state used on 
    cards on previous page (App selection UI) (#1109)
  - Include basic ADA accessibility code (tabIndex and aria-labels) (#1109)
  - Removes checkbox interaction (#1109)
  - add attrition table to gwas ui (#1098)
  - Add Workspace Registration feature where users can have an option to 
    request for workspace access directly from dataportal (#1067)

#### Breaking Changes
  - Replaced loading the data in `iframes` in Workspace page with Redirect 
    component. (#1067)
  - Deprecating the use of `default-workspaces` i. e an individual commons will 
    no longer be able to deploy standalone jupyterhub images, they may use 
    [hatchery service](https://github.com/uc-cdis/hatchery) instead. (#1067)
  - `studyRegistrationConfig` in `gitops.json` must now be placed within the 
    `regsitrationConfigs.features` block [[Refer this 
    PR](https://github.com/uc-cdis/cdis-manifest/pull/5095)] (#1067)

#### Bug Fixes
  - Fix discovery page errors when tags are empty (#1118)
  - Discovery: fixed a bug which causes study with `authz == null` incorrectly 
    showing as `OTHER` accessibility level (#1110)
  - Fix discovery page errors when `features.authorization` is enabled but 
    `features.authorization.supportedValues` is not configured (#1108)
  - return local arborist if no externally connected commons (#1106)
  - updating Guppy to version 0.15.2 to fix bug with download TSV/CSV formats 
    button in Explorer (#1102)
  - fixes the bug where an attrition row would not always update: when removing 
    a covariate just above another one that is 100% missing, the latter one 
    would get the counts of the previous one (i.e. the counts were not updated) 
    (#1103)
  - fix the column type for dichotomous covariate (#1101)
  - update corresponding storybook test (#1101)
  - reactour for next in quant (#1100)
  - Add `clinicalTrialFields` in `studyRegistrationConfig` that was 
    accidentally deleted in `portal_confg.md`. (#1099)
  - make cohort overlap message more apparent (#1093)

#### Improvements
  - Removing Veracode scanning pipeline (#1116)
  - Apply the discovery detail active-tab fix to the back button. (#1112)
  - Addition of hover state and accessibility code (#1109)
  - reactour for attrition table (#1100)
  - Created a new `/403Error` page to redirect all users for a non-workspace 
    related Unauthorized requests (#1067)

#### ## Before: Screenshot Showing That Navigation Occurs Via Check-Boxes Below The Cards.
  - ![image](https://user-images.githubusercontent.com/113449836/193657314-3d59e084-2b27-4992-a3dc-c93b1957fafd.png)
    (#1109)

#### ## After: Gif Showing Navigation Via Keyboard Using Tab And Enter Or Spacebar, Following By Navigation With Mouse.
  - ![output](https://user-images.githubusercontent.com/113449836/193657012-87949075-af8c-4f00-9a8f-7df56c88e2c9.gif)
    (#1109)

#### Testing
  - <img width="777" alt="Screen Shot 2022-09-18 at 11 32 42 PM" 
    src="https://user-images.githubusercontent.com/86243966/190973967-728dc01b-203c-4799-842f-c1544fa758d7.png">
    (#1093)

## uc-cdis/sheepdog

#### Improvements
  - Removing Veracode scanning pipeline (#372)

## uc-cdis/sower-jobs

#### Improvements
  - Removing Veracode scanning pipeline (#40)

## uc-cdis/tube

#### New Features
  - Also write empty dataframe with full columns (#202)

#### Bug Fixes
  - Fix empty injection index due to lack of selecting prop (#205)

#### Improvements
  - Removing Veracode scanning pipeline (#209)

## uc-cdis/workspace-token-service

#### Improvements
  - use GH action to build and push images (#48)
  - double default pool and overflow for SQLAlchemy engine to allow for more 
    concurrency (#47)

## uc-cdis/metadata-service

#### Improvements
  - Removing Veracode scanning pipeline (#76)

#### New Features
  - Adds adapter class for MPS (#62)

#### Bug Fixes
  - Removes deprecated metadata keys in rows that were missed by migration 
    [4d93784a25e5_add_authz_column.py](https://github.com/uc-cdis/metadata-service/blob/master/migrations/versions/4d93784a25e5_add_authz_column.py).
    (#73)

## uc-cdis/dcf-dataservice

#### Improvements
  - Removing Veracode scanning pipeline (#112)

#### New Features
  - Implemented slack webhook, send notification at beginning and completion of 
    scripts. Webhook URL configuration in dcf_dataservice_settings file on 
    dcfprod. (#111)

## uc-cdis/cloud-automation

#### New Features
  - Added script to cleanup tf plugin dirs (#1896)
  - Added report cronjob (#2046)

#### Bug Fixes
  - add extra labels so argo-wrapper will properly work with `gen3 roll` (#2053)
  - Extract the IP address from dig command output from CNAME records and IP 
    address. (#2049)
  - Fixed prometheus scrape configs and prometheus script endpoint (#2041)

#### Improvements
  - Add BRH to ECR allowed accounts (#2045)
  - Remove LogDNA (#2033)
  - Make csoc logging optional (#2033)

## uc-cdis/audit-service

#### Improvements
  - Removing Veracode scanning pipeline (#20)

## uc-cdis/requestor

#### Improvements
  - Removing Veracode scanning pipeline (#47)

#### Bug Fixes
  - Consolidate the `get_auto_policy_id` methods (#43)
  - Consolidate the `create_arborist_policy_for_role_ids` and 
    `create_arborist_policy` methods (#43)
  - Consolidate the tests for unallowed parameters (#43)
  - Cleanup of parameter checks (#43)

