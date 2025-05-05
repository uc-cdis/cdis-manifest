# Core Gen3 Release 2025.05 (Cordierite)
## uc-cdis/cloud-automation

#### New Features
  - remove old Google Bucket manifest job (outdated/unsupported) ([#2757](https://github.com/uc-cdis/cloud-automation/pull/2757)) 
  - add two PROMETHEUS account to ECR permissions ([#2759](https://github.com/uc-cdis/cloud-automation/pull/2759)) 

#### Improvements
  - use squid wildcard whitelist for figshare ([#2763](https://github.com/uc-cdis/cloud-automation/pull/2763)) 
  - add figshare.com to squid whitelist (repo for HEAL interoperability) 
    ([#2761](https://github.com/uc-cdis/cloud-automation/pull/2761))
  - slightly increase webapi timeout to not conflict with gen3 one ([#2752](https://github.com/uc-cdis/cloud-automation/pull/2752)) 
  - Gen3 Workflow service account supports s3:DeleteBucket action ([#2742](https://github.com/uc-cdis/cloud-automation/pull/2742)) 

#### Dependency Updates
  - assumes gen3 timeout is at 15 min (900 sec) ([#2752](https://github.com/uc-cdis/cloud-automation/pull/2752)) 

## uc-cdis/data-portal

#### Bug Fixes
  - Re-initiates search after loading has completed for search queries entered 
    while loading ([#1684](https://github.com/uc-cdis/data-portal/pull/1684))
  - The "Switch to Graph/Flat model" button on the Query page is now displayed 
    when using the `explorerConfig` setting instead of the deprecated 
    `dataExplorerConfig` setting in the data-portal configuration ([#1683](https://github.com/uc-cdis/data-portal/pull/1683)) 
  - Misc: Add an default blank icon for nav bar buttons to prevent it from 
    crashing ([#1687](https://github.com/uc-cdis/data-portal/pull/1687))
  - Discovery: fixed a bug causing checkbox in discovery table gets enabled 
    incorrectly for studies doesn't have file manifest and external file 
    metadata ([#1679](https://github.com/uc-cdis/data-portal/pull/1679))

#### Improvements
  - The data-portal configuration now describes the `explorerConfig` setting 
    instead of the deprecated `dataExplorerConfig` and `fileExplorerConfig` 
    settings ([#1683](https://github.com/uc-cdis/data-portal/pull/1683))
  - Discovery: the discovery details page's data download list component will 
    only show the first 200 files in the manifest for direct download, and 
    display a banner if the limit has reached ([#1681](https://github.com/uc-cdis/data-portal/pull/1681)) 
  - Discovery: the discovery details page's data download list component will 
    now sort the entries in the list by their titles ([#1681](https://github.com/uc-cdis/data-portal/pull/1681)) 

## uc-cdis/fence

#### Improvements
  - IP Address of user is now logged ([#1245](https://github.com/uc-cdis/fence/pull/1245))
  - Run gunicorn as a `gen3` user as opposed to `root` user ([#1228](https://github.com/uc-cdis/fence/pull/1228)) 
  - Add the database migrations directory to the unit test coverage report 
    ([#1232](https://github.com/uc-cdis/fence/pull/1232))

#### Bug Fixes
  - Fix the `_version` endpoint not to return empty values ([#1232](https://github.com/uc-cdis/fence/pull/1232)) 

## uc-cdis/hatchery

#### Improvements
  - Don't advocate mounting `/data` into `/pd` ([#122](https://github.com/uc-cdis/hatchery/pull/122)) 

## uc-cdis/indexd

#### Bug Fixes
  - Fix the `_version` endpoint not to return empty values ([#391](https://github.com/uc-cdis/indexd/pull/391)) 

#### Dependency Updates
  - Update dependencies ([#391](https://github.com/uc-cdis/indexd/pull/391))

## uc-cdis/manifestservice

#### Dependency Updates
  - Bump `cryptography` to `44.0.1` ([#64](https://github.com/uc-cdis/manifestservice/pull/64)) 

## uc-cdis/pelican

#### Improvements
  - Speeding up the build time for Pelican Dockerfiles. ([#94](https://github.com/uc-cdis/pelican/pull/94)) 

## uc-cdis/peregrine

#### Bug Fixes
  - Fix the `_version` endpoint not to return empty values ([#235](https://github.com/uc-cdis/peregrine/pull/235)) 

#### Dependency Updates
  - Bumping `cryptography` to `44.0.1`, bump `authutils` to `6.2.7`. ([#236](https://github.com/uc-cdis/peregrine/pull/236)) 
  - Update dependencies ([#235](https://github.com/uc-cdis/peregrine/pull/235))

## uc-cdis/sheepdog

#### Bug Fixes
  - Fixes the /template endpoint to not error when using json file format 
    ([#429](https://github.com/uc-cdis/sheepdog/pull/429))

#### Improvements
  - `Cache arborist requests for 1 second` to reduce multiple frequent requets. 
    ([#432](https://github.com/uc-cdis/sheepdog/pull/432))
  - Remove references to `GDC` in docstrings and comments. ([#434](https://github.com/uc-cdis/sheepdog/pull/434)) 
  - Add more workers to sheepdog's gunicorn server to improve responsiveness 
    during bottlenecks ([#433](https://github.com/uc-cdis/sheepdog/pull/433))

#### Dependency Updates
  - bump `cryptography` to `44.0.1` ([#437](https://github.com/uc-cdis/sheepdog/pull/437)) 

## uc-cdis/sower

#### Dependency Updates
  - Bumps [github.com/golang-jwt/jwt/v4](https://github.com/golang-jwt/jwt) 
    from 4.5.1 to 4.5.2. (#53)

## uc-cdis/tube

#### Improvements
  - Bumping cryptography to 44.0.1 ([#297](https://github.com/uc-cdis/tube/pull/297)) 
  - Remove unnecessary `version_data` logic ([#296](https://github.com/uc-cdis/tube/pull/296)) 

## uc-cdis/workspace-token-service

#### Bug Fixes
  - Fixed KeyError when handling token responses without 'jti' field ([#99](https://github.com/uc-cdis/workspace-token-service/pull/99)) 
  - Added fallback UUID generation for missing JWT IDs ([#99](https://github.com/uc-cdis/workspace-token-service/pull/99)) 
  - Added warning logs when JTI field is missing from token response ([#99](https://github.com/uc-cdis/workspace-token-service/pull/99)) 
  - Improved error handling in refresh token creation process ([#99](https://github.com/uc-cdis/workspace-token-service/pull/99)) 
  - Fix the `_version` endpoint not to return empty values ([#97](https://github.com/uc-cdis/workspace-token-service/pull/97)) 

#### Improvements
  - Fix the documentation and tests to mention the right configuration field 
    name, "id_token_username_field", instead of "id_token_username" ([#98](https://github.com/uc-cdis/workspace-token-service/pull/98)) 

#### Dependency Updates
  - Bumped `cryptography` to `44.0.1` ([#100](https://github.com/uc-cdis/workspace-token-service/pull/100)) 
  - Update dependencies ([#97](https://github.com/uc-cdis/workspace-token-service/pull/97)) 

