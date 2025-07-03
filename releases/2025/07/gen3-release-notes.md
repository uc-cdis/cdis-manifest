# Core Gen3 Release 2025.07 (Crocoite)

## Release Highlights and Announcements

#### We've made significant updates to the audit service.
  - The major underlying change is a switch to SQLAlchemy from GINO, which provided an opportunity
    for some other improvements. Please see refer to the full list below in the [Audit Services notes](#improvements).
    
  - **Breaking changes**
    - Note that the audit-service improvements have introducted breaking changes. For the details and required actions,
      please see the [Audit Service dependency update and breaking changes notes](#dependency-updates) below.


## uc-cdis/arborist

#### Bug Fixes
  - Ensure case insensitive comparison ([#171](https://github.com/uc-cdis/arborist/pull/171)) 

## uc-cdis/audit-service

#### Improvements
  - Introduce Data Access Layer: Adds a clear separation between business logic 
    and database interaction. ([#80](https://github.com/uc-cdis/audit-service/pull/80)) 
  - Introduce Data Access Layer: All DB operations have been moved to a new 
    [db.py](https://github.com/uc-cdis/audit-service/blob/e8a8d8ed7c8571e5f97f392bcb59479ae043eb84/src/audit/db.py)
    module. ([#80](https://github.com/uc-cdis/audit-service/pull/80))
  - Schema Updates: Adds primary keys to audit tables (required by SQLAlchemy 
    ORM). ([#80](https://github.com/uc-cdis/audit-service/pull/80))
  - Schema Updates: Introduces a new Alembic migration to reflect schema 
    changes. ([#80](https://github.com/uc-cdis/audit-service/pull/80))
  - Schema Updates: Fixes partitioned table insertions by updating PostgreSQL 
    trigger functions (see [detailed 
    notes](https://docs.google.com/document/d/1dOZMCFAuv00mZyk8Bq3z-pOyyIbFJIuE0LVr-igBu4c/edit?usp=sharing)).
    ([#80](https://github.com/uc-cdis/audit-service/pull/80))
  - Migration Enhancements: Refactors Alembic migrations to support async 
    execution. ([#80](https://github.com/uc-cdis/audit-service/pull/80))
  - App Startup Improvements: Replaces deprecated FastAPI startup/shutdown 
    events with the new lifespan function. ([#80](https://github.com/uc-cdis/audit-service/pull/80)) 
  - Codebase Cleanup: Moves input validation logic to 
    `utils/validate_utils.py`. ([#80](https://github.com/uc-cdis/audit-service/pull/80)) 
  - Codebase Cleanup: Splits `models.py` into separate sections for Pydantic 
    models and ORM classes. ([#80](https://github.com/uc-cdis/audit-service/pull/80)) 
  - Codebase Cleanup: Removes all GINO dependencies. ([#80](https://github.com/uc-cdis/audit-service/pull/80)) 
  - Codebase Cleanup: Reorganizes business logic in `maintain.py` and 
    `query.py`. ([#80](https://github.com/uc-cdis/audit-service/pull/80))
  - Support for SQS Event-Based Inserts: Adds DAL support for both synchronous 
    API inserts and asynchronous SQS-based ingestion. ([#80](https://github.com/uc-cdis/audit-service/pull/80)) 
  - Testing Improvements: Fixes previously skipped unit tests that were blocked 
    by GINO. ([#80](https://github.com/uc-cdis/audit-service/pull/80))
  - Testing Improvements: Updates test suite to use async fixtures where 
    required. ([#80](https://github.com/uc-cdis/audit-service/pull/80))

#### Dependency Updates
  - These changes rely on SQLAlchemy version 2 or higher, which is a major 
    version upgrade. ([#80](https://github.com/uc-cdis/audit-service/pull/80))
  - We also need to ensure that the `DB_DRIVER` in `audit-service-config.yaml` 
    is set to `postgresql+asyncpg` instead of just `postgresql` . ([#80](https://github.com/uc-cdis/audit-service/pull/80)) 

#### Breaking Changes
  - If you have the DB_DRIVER config set, you must change it to 
    postgresql+asyncpg or remove it and let the default be used ([#80](https://github.com/uc-cdis/audit-service/pull/80)) 

## uc-cdis/cloud-automation

#### New Features
  - add .metabolomicsworkbench.org to squid ([#2802](https://github.com/uc-cdis/cloud-automation/pull/2802)) 
  - Added snorlax repo to squid ([#2786](https://github.com/uc-cdis/cloud-automation/pull/2786)) 

#### Improvements
  - Fix ETL, guppy and hatchery templating ([#2804](https://github.com/uc-cdis/cloud-automation/pull/2804)) 
  - Allow "-" characters in database names ([#2748](https://github.com/uc-cdis/cloud-automation/pull/2748)) 
  - Add error handling and message for data replicate script ([#2787](https://github.com/uc-cdis/cloud-automation/pull/2787)) 
  - Use `g3auto` secrets to pass parameters to workspace launch test ([#2790](https://github.com/uc-cdis/cloud-automation/pull/2790)) 

## uc-cdis/data-portal

#### Dependency Updates
  - Bumps [tar-fs](https://github.com/mafintosh/tar-fs) from 2.1.2 to 2.1.3. 
    (#1702)

## uc-cdis/fence

#### Improvements
  - The assumption that all migrations are executed automatically on startup is 
    not correct, and therefore it is crucial that the README of a PR in Fence 
    that adds a migration, ALWAYS contains a “Deployment changes” section. 
    ([#1267](https://github.com/uc-cdis/fence/pull/1267))
  - This PR adds a warning README in the /migrations folder to warn future 
    developers about this. ([#1267](https://github.com/uc-cdis/fence/pull/1267))
  - Clear out old, unused files and code ([#1259](https://github.com/uc-cdis/fence/pull/1259)) 
  - When a bucket is missing from the `S3_BUCKET` configuration, print an info 
    log instead of a debug log to facilitate understanding issues in production 
    ([#1251](https://github.com/uc-cdis/fence/pull/1251))

#### New Features
  - add request log support for /admin/ endpoints ([#1234](https://github.com/uc-cdis/fence/pull/1234)) 
  - add request log decorator to /admin/ endpoints ([#1234](https://github.com/uc-cdis/fence/pull/1234)) 
  - Authorization Group Syncing based on a configured OIDC IdP's JWT claim 
    ([#1233](https://github.com/uc-cdis/fence/pull/1233))
  - Job capable of updating authorization groups based on persistence of a 
    user's refresh token and periodic calls to get updated JWT claim containing 
    authz group info (Note: this is a modification of the existing "Access 
    Token Polling" support built for GA4GH Passports) ([#1233](https://github.com/uc-cdis/fence/pull/1233)) 

#### Bug Fixes
  - Ensure prometheus env var and directory exist by adding to Dockerfile 
    (eventually we should do this in the base image) ([#1259](https://github.com/uc-cdis/fence/pull/1259)) 

#### Dependency Updates
  - depends on https://github.com/uc-cdis/audit-service/pull/74 ([#1234](https://github.com/uc-cdis/fence/pull/1234)) 
  - Bumps [h11](https://github.com/python-hyper/h11) from 0.14.0 to 0.16.0. 
    (#1248)
  - Bumps [flask-cors](https://github.com/corydolphin/flask-cors) from 5.0.0 to 
    6.0.0. (#1253)
  - Bumps [flask](https://github.com/pallets/flask) from 3.1.0 to 3.1.1. (#1252)

## uc-cdis/gen3-user-data-library

#### Bug Fixes
  - Prevents data library from using all cpus available on a given node the 
    container for the service is running ([#68](https://github.com/uc-cdis/gen3-user-data-library/pull/68)) 

#### Improvements
  - Dockerfile updated to use python-nginx base image and start nginx on 
    startup ([#74](https://github.com/uc-cdis/gen3-user-data-library/pull/74))
  - Adds optional configuration for individual parts of the DB connection 
    string ([#70](https://github.com/uc-cdis/gen3-user-data-library/pull/70))
  - Adds native docker builds ([#69](https://github.com/uc-cdis/gen3-user-data-library/pull/69)) 

#### Deployment Changes
  - Updates default gunicorn workers to 1 ([#73](https://github.com/uc-cdis/gen3-user-data-library/pull/73)) 
  - Worker counts are no longer dynamically calculated and must be set via 
    GUNICORN_WORKERS in the .env file. It defaults to 3. ([#68](https://github.com/uc-cdis/gen3-user-data-library/pull/68)) 

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [tar-fs](https://github.com/mafintosh/tar-fs) from 2.1.2 to 2.1.3. 
    (#319)

## uc-cdis/hatchery

#### Improvements
  - when launching workspaces in a separate cluster use a workspace node to 
    proxy to. ([#125](https://github.com/uc-cdis/hatchery/pull/125))

#### Dependency Updates
  - Bumps [golang.org/x/net](https://github.com/golang/net) from 0.34.0 to 
    0.38.0. (#124)

## uc-cdis/manifestservice

#### Dependency Updates
  - requests to 2.23.4 ([#68](https://github.com/uc-cdis/manifestservice/pull/68)) 
  - h11 to 0.16.0 ([#68](https://github.com/uc-cdis/manifestservice/pull/68))

## uc-cdis/metadata-service

#### New Features
  - Introducing Windber Study Adapter in AggMDS, The Mock data is coming from 
    [QA Windber](https://t-apps.wriwindber.org/prometheus-mesh-api/v1/metadata) 
    ([#136](https://github.com/uc-cdis/metadata-service/pull/136))

## uc-cdis/pelican

#### Dependency Updates
  - Update PyPFB from version 0.5.24 to version 0.5.33, and update other 
    dependencies to the latest match ([#98](https://github.com/uc-cdis/pelican/pull/98)) 

## uc-cdis/peregrine

#### Dependency Updates
  - Bumps [flask-cors](https://github.com/corydolphin/flask-cors) from 5.0.1 to 
    6.0.0. (#239)

## uc-cdis/sheepdog

#### Bug Fixes
  - Fixed a bug in which the client is unable to commit a dry run delete 
    transaction. ([#430](https://github.com/uc-cdis/sheepdog/pull/430))

#### Improvements
  - Submitting a bad TSV that triggers the "Unable to parse document" error now 
    results in a detailed error message ([#448](https://github.com/uc-cdis/sheepdog/pull/448)) 

#### Dependency Updates
  - Remove unused codacy dependency ([#448](https://github.com/uc-cdis/sheepdog/pull/448)) 
  - General dependency update ([#448](https://github.com/uc-cdis/sheepdog/pull/448)) 

## uc-cdis/sower-jobs

#### Dependency Updates
  - Bumps the pip group with 1 update in the /export_job directory: 
    [setuptools](https://github.com/pypa/setuptools). (#65)
  - Bumps the pip group in /export_job with 1 update: 
    [aiohttp](https://github.com/aio-libs/aiohttp). (#61)
  - gen3 to 4.27.1 ([#64](https://github.com/uc-cdis/sower-jobs/pull/64))
  - h11 to 0.16.0 ([#64](https://github.com/uc-cdis/sower-jobs/pull/64))

## uc-cdis/tube

#### Improvements
  - Add support for SSL connection with authorization for Elasticsearch ([#280](https://github.com/uc-cdis/tube/pull/280)) 

#### Deployment Changes
  - Original PR: ([#280](https://github.com/uc-cdis/tube/pull/280))
  - https://github.com/uc-cdis/tube/pull/279 ([#280](https://github.com/uc-cdis/tube/pull/280)) 

## uc-cdis/workspace-token-service

#### Dependency Updates
  - Bumps [requests](https://github.com/psf/requests) from 2.32.3 to 2.32.4. 
    (#104)
  - Bumps [python-jose](https://github.com/mpdavis/python-jose) from 3.3.0 to 
    3.4.0. (#101)

