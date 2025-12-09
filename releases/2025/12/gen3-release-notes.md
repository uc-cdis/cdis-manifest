# Core Gen3 Release 2025.12 (Enstatite)

## Release Highlights and Announcements
#### Note the deployment changes for Fence
  - alembic migration must be run to account for amr and acr columns in the authorization\_code table.
    - alembic migration is automatically run if ENABLE_DB_MIGRATION is enabled in the fence configuration.

## uc-cdis/audit-service

#### Dependency Updates
  - Authutils and authlib updated ([#99](https://github.com/uc-cdis/audit-service/pull/99)) 

## uc-cdis/cloud-automation

#### New Features
  - NLB squid auto setup ([#2829](https://github.com/uc-cdis/cloud-automation/pull/2829)) 

## uc-cdis/data-portal

#### Improvements
  - Added note for tab2 `COVID-19 in Illinois` saying, IDPH stopped publishing 
    vaccination and mobility data in 
    https://chicagoland.pandemicresponsecommons.org/ ([#1737](https://github.com/uc-cdis/data-portal/pull/1737)) 

#### New Features
  - Removes links from Discovery Page. ([#1735](https://github.com/uc-cdis/data-portal/pull/1735)) 

#### Bug Fixes
  - If the jobId is falsy, end checkJobStatus process before the API call . 
    ([#1736](https://github.com/uc-cdis/data-portal/pull/1736))

## uc-cdis/fence

#### New Features
  - Allow a `HIDE_IDPS` configuration option when `shib_ipds=*` ([#1304](https://github.com/uc-cdis/fence/pull/1304)) 

#### Bug Fixes
  - Fix arborist timeouts on usersync ([#1307](https://github.com/uc-cdis/fence/pull/1307)) 

#### Improvements
  - add global username denial regex to configuration ([#1299](https://github.com/uc-cdis/fence/pull/1299)) 

#### Dependency Updates
  - gen3authz >= 2.3.2 ([#1307](https://github.com/uc-cdis/fence/pull/1307))
  - authutils >= 7.10 ([#1301](https://github.com/uc-cdis/fence/pull/1301))
  - authlibs >= 1.6.4 ([#1301](https://github.com/uc-cdis/fence/pull/1301))

#### Deployment Changes
  - alembic migration must be run to account for amr and acr columns in the 
    `authorization_code` table. ([#1301](https://github.com/uc-cdis/fence/pull/1301))
    - alembic migration is automatically run if ENABLE_DB_MIGRATION is enabled in the fence configuration.

## uc-cdis/guppy

#### Bug Fixes
  - Fixes schema and autocomplete for Gen3 GraphQL Query sandbox ([#337](https://github.com/uc-cdis/guppy/pull/337)) 

## uc-cdis/hatchery

#### New Features
  - Adds Pod Tracker that tracks when a workspace pod launches and terminates 
    ([#137](https://github.com/uc-cdis/hatchery/pull/137))
  - Track cost of Trial Workspaces ([#137](https://github.com/uc-cdis/hatchery/pull/137)) 
  - Adds `bmh_workspace_id` as new annotation in workspace pod ([#137](https://github.com/uc-cdis/hatchery/pull/137)) 

## uc-cdis/manifestservice

#### Dependency Updates
  - Authutils and authlib updated ([#72](https://github.com/uc-cdis/manifestservice/pull/72)) 

## uc-cdis/metadata-service

#### Dependency Updates
  - Bump Authutils ([#153](https://github.com/uc-cdis/metadata-service/pull/153)) 
  - removed click as dependency ([#155](https://github.com/uc-cdis/metadata-service/pull/155)) 
  - removed colored log formatting; now logs with a plain logger.info ([#155](https://github.com/uc-cdis/metadata-service/pull/155)) 
  - added dev dependency: deptry ([#155](https://github.com/uc-cdis/metadata-service/pull/155)) 
  - used deptry to remove unused dependencies ([#155](https://github.com/uc-cdis/metadata-service/pull/155)) 

## uc-cdis/peregrine

#### Dependency Updates
  - Authutils and authlib updated ([#252](https://github.com/uc-cdis/peregrine/pull/252)) 
  - authlib to 1.6.5 ([#251](https://github.com/uc-cdis/peregrine/pull/251))
  - botocore to 1.40.49 ([#251](https://github.com/uc-cdis/peregrine/pull/251))
  - flask to 3.1.2 ([#251](https://github.com/uc-cdis/peregrine/pull/251))
  - requests to 2.32.5 ([#251](https://github.com/uc-cdis/peregrine/pull/251))

## uc-cdis/workspace-token-service

#### Dependency Updates
  - Authutils and authlib updated ([#112](https://github.com/uc-cdis/workspace-token-service/pull/112)) 

