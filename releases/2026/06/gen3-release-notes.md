# Core Gen3 Release 2026.06 (Gadolinite)
## uc-cdis/cloud-automation

#### New Features
  - Adding National Sleep Research Resource to squid whitelist ([#2864](https://github.com/uc-cdis/cloud-automation/pull/2864)) 

#### Improvements
  - make `es port-forward` cmd works with AWS SIgV4 proxy deployment ([#2871](https://github.com/uc-cdis/cloud-automation/pull/2871)) 

## uc-cdis/data-portal

#### Improvements
  - Discovery: downloaded file manifests now will have hostname, identifier and 
    date information in their filenames ([#1796](https://github.com/uc-cdis/data-portal/pull/1796)) 
  - Discovery: multiple file manifests generated for downloading will be put 
    into a single archive file ([#1796](https://github.com/uc-cdis/data-portal/pull/1796)) 

## uc-cdis/gen3-workflow

#### New Features
  - Add a basic integrated UI at `/ui` for listing and canceling TES tasks 
    ([#120](https://github.com/uc-cdis/gen3-workflow/pull/120))
  - Add performance testing script ([#112](https://github.com/uc-cdis/gen3-workflow/pull/112)) 
  - Support running TES tasks on GPU nodes ([#109](https://github.com/uc-cdis/gen3-workflow/pull/109)) 
  - Support connecting to another S3-compatible service than AWS S3 ([#109](https://github.com/uc-cdis/gen3-workflow/pull/109)) 

#### Breaking Changes
  - Remove the deprecated `/storage/info` endpoint, which is now 
    `/storage/setup` ([#109](https://github.com/uc-cdis/gen3-workflow/pull/109))

#### Bug Fixes
  - Set the content-length header to 0 when returning a 403 error from S3, 
    since the error details are hidden from the end-user ([#109](https://github.com/uc-cdis/gen3-workflow/pull/109)) 

#### Improvements
  - Use the `ENABLE_OPTIMIZED_NODE_SCHEDULING` setting to enable or disable 
    optimized node scheduling (enabled by default) ([#115](https://github.com/uc-cdis/gen3-workflow/pull/115)) 
  - Configuration file forward compatibility: allow unknown configuration keys 
    so that the app remains functional when using configuration files from 
    newer versions ([#115](https://github.com/uc-cdis/gen3-workflow/pull/115))
  - Do not expose the list of all internal tags in error responses ([#109](https://github.com/uc-cdis/gen3-workflow/pull/109)) 
  - Log the client ID in addition to the user ID in the S3 endpoint ([#109](https://github.com/uc-cdis/gen3-workflow/pull/109)) 

#### Dependency Updates
  - Update dependencies ([#114](https://github.com/uc-cdis/gen3-workflow/pull/114)) 

## uc-cdis/guppy

#### Improvements
  - Adds support for nested authz fields. MC2D is using `gen3_discovery.authz` 
    and without this addition, the query returns an error. ([#378](https://github.com/uc-cdis/guppy/pull/378)) 

## uc-cdis/hatchery

#### New Features
  - share workspace feature ([#146](https://github.com/uc-cdis/hatchery/pull/146)) 

#### Dependency Updates
  - update to Go 1.26.2 explicitly and update deps ([#151](https://github.com/uc-cdis/hatchery/pull/151)) 

## uc-cdis/indexd

#### New Features
  - Pre-computed stats table replaces full-table `COUNT(*)/SUM(size)` on GET 
    /_stats ([#435](https://github.com/uc-cdis/indexd/pull/435))
  - Historical stats queries: GET /_stats?month=X&year=Y ([#435](https://github.com/uc-cdis/indexd/pull/435)) 

#### Deployment Changes
  - reconcile_stats.py can be used in the container for stats reconciliation. 
    Could be a Cronjob? ([#435](https://github.com/uc-cdis/indexd/pull/435))

## uc-cdis/sower

#### Dependency Updates
  - update to Go 1.26.2 ([#63](https://github.com/uc-cdis/sower/pull/63))
  - update deps ([#63](https://github.com/uc-cdis/sower/pull/63))
  - update pre-commit hooks versions ([#63](https://github.com/uc-cdis/sower/pull/63)) 

