# Core Gen3 Release 2023.08 (Spinel)

## uc-cdis/fence

#### Bug Fixes
  - Fix usersync issue where arborist would not receive updates when Google 
    update errors occur. ([#1105](https://github.com/uc-cdis/fence/pull/1105))
  - Fixes issue where get/add/remove members for google groups weren't working. 
    ([#1100](https://github.com/uc-cdis/fence/pull/1100))
  - Usersync no longer prematurely ends when encountering google errors. 
    ([#1097](https://github.com/uc-cdis/fence/pull/1097))

#### Improvements
  - Enable client-credentials on /download/{guid} and 
    /ga4gh/drs/v1/objects/{guid}/access/{access_id} endpoints ([#1104](https://github.com/uc-cdis/fence/pull/1104)) 
  - Replacing the `and` with `,` in user scope description to improve 
    readability ([#1101](https://github.com/uc-cdis/fence/pull/1101))
  - More robust CSV parsing in `usersync` ([#1098](https://github.com/uc-cdis/fence/pull/1098)) 
  - Adds backoff for the give_service_account_billing_access calls ([#1095](https://github.com/uc-cdis/fence/pull/1095)) 

## uc-cdis/guppy

#### Deployment Changes
  - update node from 14 to 16 ([#219](https://github.com/uc-cdis/guppy/pull/219)) 

#### New Features
  - add _totalCount to guppy items ([#180](https://github.com/uc-cdis/guppy/pull/180)) 
  - remove unneeded countFields and extraAggsFieldsCardinalityCount property 
    ([#180](https://github.com/uc-cdis/guppy/pull/180))

#### Bug Fixes
  - fix performance bug where charts were being processed as filters, now only 
    processes filters ([#180](https://github.com/uc-cdis/guppy/pull/180))

## uc-cdis/hatchery

#### New Features
  - Add support for VPC's with multiple CIDR's ([#66](https://github.com/uc-cdis/hatchery/pull/66)) 

## uc-cdis/indexd

#### Bug Fixes
  - Indexd records no longer return empty strings for content_updated_date and 
    content_updated_time when not provided. ([#361](https://github.com/uc-cdis/indexd/pull/361)) 

#### Dependency Updates
  - Allow any Python 3.9.* ([#360](https://github.com/uc-cdis/indexd/pull/360))

## uc-cdis/manifestservice

#### New Features
  - Use EKS IAM service account tied to a role instead of AWS IAM user. ([#32](https://github.com/uc-cdis/manifestservice/pull/32)) 

#### Deployment Changes
  - ManifestService does not expect `aws_access_key_id` and 
    `aws_secret_access_key` settings anymore. Instead, the service relies on 
    AWS EKS IRSA credentials mounted to the pod. See 
    https://github.com/uc-cdis/manifestservice/blob/master/docs/credentials_breaking_change.md
    for more details ([#32](https://github.com/uc-cdis/manifestservice/pull/32))

## uc-cdis/peregrine

#### Improvements
  - Log more error details in the core metadata endpoint ([#200](https://github.com/uc-cdis/peregrine/pull/200)) 

## uc-cdis/data-portal

#### New Features
  - add to discovery page setup ability to select guidType for the api call, 
    this allows for displaying only select mds records on the discovery page 
    ([#1357](https://github.com/uc-cdis/data-portal/pull/1357))

#### Improvements
  - Add warning for workspace user for waiting for proxy step ([#1347](https://github.com/uc-cdis/data-portal/pull/1347)) 
  - add to requiredIdpField docs to better explain what is going on ([#1344](https://github.com/uc-cdis/data-portal/pull/1344)) 
  - File page: improve display of array values ([#1327](https://github.com/uc-cdis/data-portal/pull/1327)) 
  - use new guppy count field insted of calculating it ([#981](https://github.com/uc-cdis/data-portal/pull/981)) 
  - CSS update to handle newlines better in Discovery modal ([#1289](https://github.com/uc-cdis/data-portal/pull/1289)) 

#### Bug Fixes
  - remove duplicate padding ([#1333](https://github.com/uc-cdis/data-portal/pull/1333)) 
  - Fix Profile Page visual inconsistency ([#1333](https://github.com/uc-cdis/data-portal/pull/1333)) 
  - fix bug where filters dont reset table to page one ([#1330](https://github.com/uc-cdis/data-portal/pull/1330)) 
  - `fixed` position should fix the bug where popup appear in the hidden 
    (scrolled past) area ([#1298](https://github.com/uc-cdis/data-portal/pull/1298)) 

#### Dependency Updates
  - updating guppy to 0.16.0 ([#1309](https://github.com/uc-cdis/data-portal/pull/1309)) 

#### Deployment Changes
  - will require server to also be using guppy ^0.16.0 on backend ([#1309](https://github.com/uc-cdis/data-portal/pull/1309)) 

## uc-cdis/sheepdog

#### Bug Fixes
  - Fix validation issue when submitting null values allowed by a `oneOf/anyOf` 
    dictionary property definition ([#398](https://github.com/uc-cdis/sheepdog/pull/398)) 

## uc-cdis/tube

#### Bug Fixes
  - Left join should be applied for nested props ([#237](https://github.com/uc-cdis/tube/pull/237)) 

#### Improvements
  - Github workflow updated to use `GITBHUB_OUTPUT`, since `set-output` is 
    deprecated ([#236](https://github.com/uc-cdis/tube/pull/236))

## uc-cdis/workspace-token-service

#### Improvements
  - Update Version number to make a new release ([#58](https://github.com/uc-cdis/workspace-token-service/pull/58)) 
  - Close the session in the health check endpoint ([#60](https://github.com/uc-cdis/workspace-token-service/pull/60)) 

