# Core Gen3 Release 2026.01 (Eosphorite)
## uc-cdis/arborist

#### Dependency Updates
  - go-authutils to 1.3.0 ([#182](https://github.com/uc-cdis/arborist/pull/182))
  - Replace deprecated `square/go-jose.v2` with `go-jose/go-jose/v3` ([#181](https://github.com/uc-cdis/arborist/pull/181)) 

## uc-cdis/audit-service

#### Dependency Updates
  - starlette >=0.49.3 ([#100](https://github.com/uc-cdis/audit-service/pull/100)) 
  - fastapi >= 0.121.3 ([#100](https://github.com/uc-cdis/audit-service/pull/100)) 

## uc-cdis/cloud-automation

#### Bug Fixes
  - Fix source destination check for squid script running on AL23 ([#2837](https://github.com/uc-cdis/cloud-automation/pull/2837)) 

#### Improvements
  - Add the following domains to the alphabetized whitelist: ([#2838](https://github.com/uc-cdis/cloud-automation/pull/2838)) 
  - cdn-lfs.huggingface.co (Hugging Face Git LFS content) ([#2838](https://github.com/uc-cdis/cloud-automation/pull/2838)) 
  - huggingface.co (weights model) ([#2838](https://github.com/uc-cdis/cloud-automation/pull/2838)) 

## uc-cdis/data-portal

#### Improvements
  - add `secure` attribute to system warning popup cookie ([#1748](https://github.com/uc-cdis/data-portal/pull/1748)) 
  - Explorer page: Do not allow users to click "download manifest" button when 
    the query to ElasticSearch would fail due to having too many terms in the 
    query. Instead, let the user know: "too many rows to download at once; make 
    a smaller selection" ([#1746](https://github.com/uc-cdis/data-portal/pull/1746)) 
  - Currently the Portal header and profile popover display the raw OIDC 
    username claim (e.g. google-oauth2|12345678901234567890). This is confusing 
    for users. Fence already returns the user’s email in /user. We should 
    render the email address instead, falling back to other available claims. 
    ([#1734](https://github.com/uc-cdis/data-portal/pull/1734))
  - Before:** ([#1734](https://github.com/uc-cdis/data-portal/pull/1734))
  - <img width="364" height="124" alt="image" 
    src="https://github.com/user-attachments/assets/e8aafc72-5521-4c7a-8453-1b684dc653ca"
    /> ([#1734](https://github.com/uc-cdis/data-portal/pull/1734))
  - After:** ([#1734](https://github.com/uc-cdis/data-portal/pull/1734))
  - <img width="341" height="121" alt="image" 
    src="https://github.com/user-attachments/assets/09303b7c-7eb8-462d-8a7c-df4995fc6132"
    /> ([#1734](https://github.com/uc-cdis/data-portal/pull/1734))

#### Dependency Updates
  - Bumps [express](https://github.com/expressjs/express) from 4.21.2 to 
    4.22.1. (#1745)
  - Bumps and [js-yaml](https://github.com/nodeca/js-yaml). These dependencies 
    needed to be updated together. (#1742)
  - Bumps [node-forge](https://github.com/digitalbazaar/forge) from 1.3.1 to 
    1.3.2. (#1744)
  - Bumps [min-document](https://github.com/Raynos/min-document) from 2.19.0 to 
    2.19.2. (#1741)

## uc-cdis/fence

#### Breaking Changes
  - This change will set the default url to Arborist for all fence deployments. 
    If you want to continue to use fence without arborist, you must explicitly 
    set `ARBORIST: null` in your fence configuration. ([#1235](https://github.com/uc-cdis/fence/pull/1235)) 
  - Support for `local_settings.py` is removed completely. ([#1302](https://github.com/uc-cdis/fence/pull/1302)) 

#### Bug Fixes
  - Lower audit schema cache to 30 minutes, fixing issues where fence would use 
    the wrong schema for 24 hours in cases where audit-service took longer than 
    fence to start. ([#1310](https://github.com/uc-cdis/fence/pull/1310))

#### Improvements
  - Set default arborist url in default configuration. ([#1235](https://github.com/uc-cdis/fence/pull/1235)) 

#### Dependency Updates
  - Cleanup unused dependencies using deptry, add transitive dependencies in 
    pyproject.toml ([#1302](https://github.com/uc-cdis/fence/pull/1302))

#### Deployment Changes
  - This change will set the default url to Arborist for all fence deployments. 
    If you want to continue to use fence without arborist, you must explicitly 
    set `ARBORIST: null` in your fence configuration. ([#1235](https://github.com/uc-cdis/fence/pull/1235)) 
  - Deployment changes are being done as a part of this gen3-helm PR ([#426](https://github.com/uc-cdis/gen3-helm/pull/426)) 
    ([#1302](https://github.com/uc-cdis/fence/pull/1302))

## uc-cdis/gen3-user-data-library

#### New Features
  - Upgrade to python3.13 ([#81](https://github.com/uc-cdis/gen3-user-data-library/pull/81)) 

#### Dependency Updates
  - Removed requests and httpx ([#81](https://github.com/uc-cdis/gen3-user-data-library/pull/81)) 

#### Deployment Changes
  - use python3.13 base image ([#81](https://github.com/uc-cdis/gen3-user-data-library/pull/81)) 

## uc-cdis/guppy

#### Improvements
  - "askGuppyForTotalCounts": Facilitate debugging by printing the actual error 
    messages instead of "[object Object]" ([#340](https://github.com/uc-cdis/guppy/pull/340)) 

#### Dependency Updates
  - Bumps and [js-yaml](https://github.com/nodeca/js-yaml). These dependencies 
    needed to be updated together. (#339)

## uc-cdis/hatchery

#### Dependency Updates
  - Bumps [golang.org/x/oauth2](https://github.com/golang/oauth2) from 0.25.0 
    to 0.27.0. (#136)

## uc-cdis/metadata-service

#### Bug Fixes
  - fixed an issue with processing ES mapping for plain array of strings fields 
    ([#160](https://github.com/uc-cdis/metadata-service/pull/160))

#### Dependency Updates
  - starlette ^0.49.3 ([#157](https://github.com/uc-cdis/metadata-service/pull/157)) 
  - authutils >= 7.1.1 ([#156](https://github.com/uc-cdis/metadata-service/pull/156)) 

## uc-cdis/sheepdog

#### Bug Fixes
  - Fix "Authentication Error: Audience doesn't match" errors in Sheepdog 
    running in a local Helm instance ([#450](https://github.com/uc-cdis/sheepdog/pull/450)) 

#### Improvements
  - `sqlalchemy` 1.4 support ([#450](https://github.com/uc-cdis/sheepdog/pull/450)) 
  - Fix typos in logs and comments ([#450](https://github.com/uc-cdis/sheepdog/pull/450)) 

#### Dependency Updates
  - `sqlalchemy` to 1.4.54, `authutils` to 7.0.0, `datamodelutils` to 1.1.1, 
    `psqlgraph` to 3.0.2, `gen3datamodel` to 3.2.6 ([#450](https://github.com/uc-cdis/sheepdog/pull/450)) 
  - Sheepdog no longer depends on Indexd to run unit tests ([#450](https://github.com/uc-cdis/sheepdog/pull/450)) 

