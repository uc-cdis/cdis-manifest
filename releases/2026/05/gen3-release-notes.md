# Core Gen3 Release 2026.05 (Friedelite)
## uc-cdis/arborist

#### Bug Fixes
  - Support deleting users with a slash in their username ([#189](https://github.com/uc-cdis/arborist/pull/189)) 

#### Improvements
  - Return error details when failing to revoke a user's policy because the 
    specified user does not have the specified policy ([#188](https://github.com/uc-cdis/arborist/pull/188)) 

## uc-cdis/audit-service

#### Dependency Updates
  - Update black and authutils dependency versions ([#106](https://github.com/uc-cdis/audit-service/pull/106)) 

## uc-cdis/cloud-automation

#### New Features
  - Allow all of aws api domains so we can use s3files ([#2862](https://github.com/uc-cdis/cloud-automation/pull/2862)) 
  - Added s3files endpoint ([#2861](https://github.com/uc-cdis/cloud-automation/pull/2861)) 
  - Add cloudflare storage to squid for pulling certain docker images ([#2859](https://github.com/uc-cdis/cloud-automation/pull/2859)) 

#### Improvements
  - Migrate `crates.io` to wildcard list ([#2860](https://github.com/uc-cdis/cloud-automation/pull/2860)) 
  - Add rust registry 'crates.io' to whitelist for software-library VM ([#2858](https://github.com/uc-cdis/cloud-automation/pull/2858)) 

## uc-cdis/cohort-middleware

#### New Features
  - new endpoint to return cohort1 and cohort2 overlap with prior cohort2 entry 
    ([#140](https://github.com/uc-cdis/cohort-middleware/pull/140))

## uc-cdis/data-portal

#### Bug Fixes
  - fix get unique key for tags in discovery table ([#1790](https://github.com/uc-cdis/data-portal/pull/1790)) 

#### Improvements
  - hostname, date of download and platform identifier (if available) will be 
    use to generate the filename for downloaded SLMD adn VLMD files from the 
    Discovery page ([#1794](https://github.com/uc-cdis/data-portal/pull/1794))
  - allow `maximumDisplayItem` to be customized for each explorer charts 
    ([#1783](https://github.com/uc-cdis/data-portal/pull/1783))

#### Dependency Updates
  - Bumps [defu](https://github.com/unjs/defu) from 6.1.2 to 6.1.6. (#1793)
  - Bumps [lodash](https://github.com/lodash/lodash) from 4.17.23 to 4.18.1. 
    (#1792)
  - Bumps [lodash-es](https://github.com/lodash/lodash) from 4.17.23 to 4.18.1. 
    (#1791)
  - Bumps and 
    [brace-expansion](https://github.com/juliangruber/brace-expansion). These 
    dependencies needed to be updated together. (#1787)
  - Bumps [picomatch](https://github.com/micromatch/picomatch) from 2.3.1 to 
    2.3.2. (#1785)
  - Bumps [yaml](https://github.com/eemeli/yaml) from 1.10.2 to 1.10.3. (#1784)
  - Bumps [jsonpath](https://github.com/dchester/jsonpath) from 1.2.1 to 1.3.0. 
    (#1782)
  - Bumps [flatted](https://github.com/WebReflection/flatted) from 3.4.1 to 
    3.4.2. (#1781)

## uc-cdis/fence

#### New Features
  - new **admin** endpoint to allow for reactivation of soft-deleted users: 
    `POST /users/<username>/reactivate` ([#1339](https://github.com/uc-cdis/fence/pull/1339)) 

#### Bug Fixes
  - Fix usersync edge case of removing users before attempting to grant them 
    access ([#1343](https://github.com/uc-cdis/fence/pull/1343))
  - Fix `grant_user_policy` and `grant_bulk_user_policy` function calls error 
    checking ([#1343](https://github.com/uc-cdis/fence/pull/1343))
  - Return explicitly matching bucket name over regex-matched if available 
    (ensures order of configured S3_BUCKETS doesn't change expected behavior) 
    ([#1341](https://github.com/uc-cdis/fence/pull/1341))
  - Adding missing audit bytes, duration and user-agent for presigned-urls 
    audit logs ([#1322](https://github.com/uc-cdis/fence/pull/1322))
  - Correctly check whether `revoke_user_policy` and 
    `revoke_all_policies_for_user` calls to Arborist were successful ([#1336](https://github.com/uc-cdis/fence/pull/1336)) 

#### Improvements
  - Allow request header size of 128kb to support users with large cookie sizes 
    ([#1337](https://github.com/uc-cdis/fence/pull/1337))
  - User registration: only add newly registered user to the authorization 
    database if they also need to be added to a registration group ([#1336](https://github.com/uc-cdis/fence/pull/1336)) 
  - During access syncing, remove users without access from the authorization 
    database ([#1336](https://github.com/uc-cdis/fence/pull/1336))

#### Dependency Updates
  - many ([#1342](https://github.com/uc-cdis/fence/pull/1342))

#### Deployment Changes
  - Requires `gen3authz` 3.1.0 ([#1336](https://github.com/uc-cdis/fence/pull/1336)) 

## uc-cdis/gen3-user-data-library

#### Improvements
  - Updated and fixed linting ([#83](https://github.com/uc-cdis/gen3-user-data-library/pull/83)) 

## uc-cdis/gen3-workflow

#### New Features
  - Allow copying files between multiple S3 locations through gen3-workflow's 
    S3 endpoint ([#107](https://github.com/uc-cdis/gen3-workflow/pull/107))

#### Bug Fixes
  - fix linting config in CI ([#108](https://github.com/uc-cdis/gen3-workflow/pull/108)) 

#### Improvements
  - S3 endpoint: return 499 instead of 500 in case of a ClientDisconnect error 
    ([#106](https://github.com/uc-cdis/gen3-workflow/pull/106))

## uc-cdis/guppy

#### Dependency Updates
  - apollo-server to 5.5.0 ([#377](https://github.com/uc-cdis/guppy/pull/377))
  - qs to 4.16.2 ([#377](https://github.com/uc-cdis/guppy/pull/377))
  - Bumps [brace-expansion](https://github.com/juliangruber/brace-expansion) 
    from 1.1.12 to 1.1.13. (#375)
  - Bumps [path-to-regexp](https://github.com/pillarjs/path-to-regexp) from 
    0.1.12 to 0.1.13. (#372)
  - Bumps [handlebars](https://github.com/handlebars-lang/handlebars.js) from 
    4.7.8 to 4.7.9. (#371)
  - Bumps [picomatch](https://github.com/micromatch/picomatch) from 2.3.1 to 
    2.3.2. (#369)
  - Bumps [yaml](https://github.com/eemeli/yaml) from 1.10.2 to 1.10.3. (#368)
  - Bumps [flatted](https://github.com/WebReflection/flatted) from 3.3.1 to 
    3.4.2. (#367)

## uc-cdis/hatchery

#### Bug Fixes
  - fix for an unhandled panic ([#143](https://github.com/uc-cdis/hatchery/pull/143)) 

#### Dependency Updates
  - toolchain go1.26.1 ([#147](https://github.com/uc-cdis/hatchery/pull/147))

## uc-cdis/indexd

#### Bug Fixes
  - Indexclient: fix library imports ([#436](https://github.com/uc-cdis/indexd/pull/436)) 

#### Improvements
  - Moves indexclient to indexd to allow easier updates to indexclient when 
    indexd changes ([#426](https://github.com/uc-cdis/indexd/pull/426))

#### Dependency Updates
  - The indexclient version now matches the indexd version. Indexclient verions 
    4 and 5 are skipped. Going from v3 to v6. ([#436](https://github.com/uc-cdis/indexd/pull/436)) 
  - Removes circular dependency between indexd and indexclient. ([#426](https://github.com/uc-cdis/indexd/pull/426)) 

## uc-cdis/manifestservice

#### Dependency Updates
  - Update dependencies ([#78](https://github.com/uc-cdis/manifestservice/pull/78)) 

## uc-cdis/metadata-service

#### Dependency Updates
  - Update dependencies ([#172](https://github.com/uc-cdis/metadata-service/pull/172)) 

## uc-cdis/peregrine

#### Dependency Updates
  - Update dependencies ([#263](https://github.com/uc-cdis/peregrine/pull/263))

## uc-cdis/sheepdog

#### Dependency Updates
  - Update authutils and indexclient ([#470](https://github.com/uc-cdis/sheepdog/pull/470)) 

## uc-cdis/ssjdispatcher

#### Improvements
  - Update aws method signatures to be in line with aws sdk v2 ([#73](https://github.com/uc-cdis/ssjdispatcher/pull/73)) 

#### Dependency Updates
  - Update go toolchain to `1.26.2` ([#74](https://github.com/uc-cdis/ssjdispatcher/pull/74)) 
  - Update aws-sdk-go to v2 ([#73](https://github.com/uc-cdis/ssjdispatcher/pull/73)) 

## uc-cdis/workspace-token-service

#### Dependency Updates
  - Updated authutils to latest version (7.2.6) ([#136](https://github.com/uc-cdis/workspace-token-service/pull/136)) 
  - Bumps [authlib](https://github.com/authlib/authlib) from 1.6.7 to 1.6.9. 
    (#128)

