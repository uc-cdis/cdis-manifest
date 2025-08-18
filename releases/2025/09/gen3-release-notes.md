# Core Gen3 Release 2025.09 (Danburite)
## uc-cdis/cloud-automation

#### New Features
  - Added startup script for single instance squid ([#2818](https://github.com/uc-cdis/cloud-automation/pull/2818)) 

#### Improvements
  - Increase WTS readinessProbe interval to 20 seconds ([#2811](https://github.com/uc-cdis/cloud-automation/pull/2811)) 

## uc-cdis/data-portal

#### New Features
  - Re-triggers search following check-box selection in Discovery Page Search 
    Bar ([#1712](https://github.com/uc-cdis/data-portal/pull/1712))

#### Improvements
  - include `external_file_metadata` as part of inputs for the `batch-export` 
    job ([#1710](https://github.com/uc-cdis/data-portal/pull/1710))

#### Dependency Updates
  - Bumps [store2](https://github.com/nbubna/store) from 2.14.2 to 2.14.4. 
    (#1667)

## uc-cdis/fence

#### Dependency Updates
  - Requests 2.32.3 -> 2.32.4 ([#1287](https://github.com/uc-cdis/fence/pull/1287)) 

#### Bug Fixes
  - Fix the `/login` endpoint to set the providers cache correctly after it 
    expires ([#1285](https://github.com/uc-cdis/fence/pull/1285))
  - Admin endpoints support "client_credentials" tokens again ([#1284](https://github.com/uc-cdis/fence/pull/1284)) 

#### Improvements
  - Request logs now include the client ID, if any ([#1284](https://github.com/uc-cdis/fence/pull/1284)) 

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [on-headers](https://github.com/jshttp/on-headers) and 
    [compression](https://github.com/expressjs/compression). These dependencies 
    needed to be updated together. (#324)

#### Bug Fixes
  - Fixed a bug causing numeric aggregation query to crash if any of 
    `rangeStart/rangeEnd/rangeStep/binCount` is in use ([#328](https://github.com/uc-cdis/guppy/pull/328)) 
  - Fixed a bug causing auth premisssions are not correctly updated when 
    testing locally with `INTERNAL_LOCAL_TEST=true` ([#328](https://github.com/uc-cdis/guppy/pull/328)) 

## uc-cdis/indexd

#### Improvements
  - `authutils` to version 7.0.0 ([#403](https://github.com/uc-cdis/indexd/pull/403)) 

## uc-cdis/metadata-service

#### Dependency Updates
  - Bumps [requests](https://github.com/psf/requests) from 2.32.3 to 2.32.4. 
    (#133)

#### Improvements
  - Add logs to admin authorization logic ([#143](https://github.com/uc-cdis/metadata-service/pull/143)) 

## uc-cdis/peregrine

#### Dependency Updates
  - Requests 2.32.3 -> 2.32.4 ([#247](https://github.com/uc-cdis/peregrine/pull/247)) 
  - `authutils` to 7.0.0, `sheepdog` to 2025.07 ([#245](https://github.com/uc-cdis/peregrine/pull/245)) 

#### Bug Fixes
  - Fix "Authentication Error: Audience doesn't match" errors in Peregrine 
    running in a local Helm instance ([#245](https://github.com/uc-cdis/peregrine/pull/245)) 

## uc-cdis/tube

#### Dependency Updates
  - Bumps [requests](https://github.com/psf/requests) from 2.32.3 to 2.32.4. 
    ([#302](https://github.com/uc-cdis/tube/pull/302))

## uc-cdis/workspace-token-service

#### Bug Fixes
  - Fix "Authentication Error: Audience doesn't match" errors in WTS running in 
    a local Helm instance ([#108](https://github.com/uc-cdis/workspace-token-service/pull/108)) 

#### Dependency Updates
  - `authutils` to 7.0.0 ([#108](https://github.com/uc-cdis/workspace-token-service/pull/108)) 

