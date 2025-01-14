# Core Gen3 Release 2024.10 (Cassiterite)

## Release Highlights and Announcements

#### Integration of Grafana Faro for frontend RUM
  - Data portal now has [integrated support](#new-features-1) for gathering user metrics via Grafana Faro.

#### Single-table option for IndexD
  - IndexD has a new configuration option that consolidates multiple relational tables into a [single record table](#new-features-4). The single-table 
option can provide a significant performance advantage.  Switching an existing commons to this configuration requires 
migration of the database to the new schema.

#### Support in Fence for generating presigned URLs for requester-pays S3 buckets
  - We've added the capability for Fence to [generate presigned URLs for data in requester-pays-enabled AWS S3 buckets](#new-features-3).

## uc-cdis/audit-service

#### Dependency Updates
  - Bumps the pip group with 3 updates: 
    [urllib3](https://github.com/urllib3/urllib3), 
    [certifi](https://github.com/certifi/python-certifi) and 
    [cryptography](https://github.com/pyca/cryptography). (#60)

## uc-cdis/cloud-automation

#### New Features
  - Add job to migrate to single table indexd ([#2599](https://github.com/uc-cdis/cloud-automation/pull/2599)) 
  - feat: set webapi token expiration to 15 min and refresh when 4 min left to 
    simulate a session timeout (inactivity timeout) of 15 min ([#2589](https://github.com/uc-cdis/cloud-automation/pull/2589)) 

#### Improvements
  - adding a "hostname" label to help with monitoring organization. ([#2624](https://github.com/uc-cdis/cloud-automation/pull/2624)) 

## uc-cdis/data-portal

#### Bug Fixes
  - Adds media query for Discovery page so buttons are visible in discovery 
    modal (drawer) at screen sizes below 1080px width ([#1593](https://github.com/uc-cdis/data-portal/pull/1593)) 
  - Fixed a bug causing access request form to crash when displaying result 
    ([#1589](https://github.com/uc-cdis/data-portal/pull/1589))
  - Prevents an initial request in GEN3 GWAS app from fetchCohortDefinitions 
    with an undefined sourceID. Instead the request is delayed until the 
    sourceID is not undefined. ([#1588](https://github.com/uc-cdis/data-portal/pull/1588)) 
  - Discovery: the location and padding for accessiblity links are no longer 
    hard coded ([#1585](https://github.com/uc-cdis/data-portal/pull/1585))
  - prevents Atlas Data Dictionary app from crashing when unProcessedChartData 
    input to processNumericChartData function is null. ([#1581](https://github.com/uc-cdis/data-portal/pull/1581)) 
  - fix: use openid URL for Atlas to get automatic login behavior ([#1581](https://github.com/uc-cdis/data-portal/pull/1581)) 

#### New Features
  - Generic: Add Grafana Faro RUM support to portal, please refer to the 
    `portal_config.md` for configurations ([#1586](https://github.com/uc-cdis/data-portal/pull/1586)) 
  - Generic: We will be removing Datadog RUM support from portal in the future 
    ([#1586](https://github.com/uc-cdis/data-portal/pull/1586))
  - Fixes CSS in storybooks for GEN3 GWAS CustomDichotomousCovariates and 
    ContinuousCovariates. ([#1588](https://github.com/uc-cdis/data-portal/pull/1588)) 
  - add access-denied page and flag to enable when user does not have access to 
    any site resources ([#1581](https://github.com/uc-cdis/data-portal/pull/1581)) 
  - Adds a dashboard to show the real time status of the user's workflow limit 
    while using the Gen 3 GWAS App and Results App. ([#1581](https://github.com/uc-cdis/data-portal/pull/1581)) 
  - Adds error messages and prevents submission to GEN3 GWAS App job input 
    modal when user has exceeded their allotted workflow limit, or if the 
    service for checking their workflow limit doesn't respond or provides 
    malformed data. ([#1581](https://github.com/uc-cdis/data-portal/pull/1581))

#### Improvements
  - Generic: Grafana Faro's `environment` value in its app metadata is set to 
    the hostname of the env ([#1592](https://github.com/uc-cdis/data-portal/pull/1592)) 
  - Generic: Grafana Faro's `namespace` value in its app metadata is set to the 
    application’s namespace, for example: prod, pre-prod, staging ([#1592](https://github.com/uc-cdis/data-portal/pull/1592)) 
  - Generic: Set CSP dynamically for faro enabled envs ([#1592](https://github.com/uc-cdis/data-portal/pull/1592)) 
  - Moves shared styles for GEN3 GWAS app select container to GWASApp.css and 
    fixes height styles for loading spinner in select container for custom 
    dichotomous covariates. ([#1588](https://github.com/uc-cdis/data-portal/pull/1588)) 
  - Fixed naming error in GEN3 GWAS app for SelectCohort, which was wrongly 
    referenced as "CohortSelect" in SelectStudyPopulation.jsx ([#1588](https://github.com/uc-cdis/data-portal/pull/1588)) 
  - Migrating Portal from using Kayako to Zendesk for ticket creation (applies 
    to workspace/study registration access request and HEAL VLMD submit) 
    ([#1587](https://github.com/uc-cdis/data-portal/pull/1587))
  - Discovery: export to workspace will set button state first before exporting 
    ([#1577](https://github.com/uc-cdis/data-portal/pull/1577))
  - Discovery: don't make call to manifest service if manifest is empty ([#1577](https://github.com/uc-cdis/data-portal/pull/1577)) 

#### Dependency Updates
  - Add Grafana Faro ([#1586](https://github.com/uc-cdis/data-portal/pull/1586))

#### Deployment Changes
  - `kayakoConfig` section in portal config has been replaced by 
    `zendeskConfig`, please refer to `/docs/portal_config.md` ([#1587](https://github.com/uc-cdis/data-portal/pull/1587)) 
  - for details ([#1587](https://github.com/uc-cdis/data-portal/pull/1587))

#### Bug Fixes:
  - Generic: fixed a bug about in-proper import for the access denial page 
    ([#1586](https://github.com/uc-cdis/data-portal/pull/1586))

## uc-cdis/ecs-ws-sidecar

#### Bug Fixes
  - fixed some spacing and variable names issue ([#18](https://github.com/uc-cdis/ecs-ws-sidecar/pull/18)) 

#### New Features
  - Updated workspace sidecar script now pulls exported metadata from manifest 
    service in addition to the manifests ([#17](https://github.com/uc-cdis/ecs-ws-sidecar/pull/17)) 

## uc-cdis/fence

#### New Features
  - Add support for generating presigned urls for requester pay enabled AWS S3 
    buckets ([#1173](https://github.com/uc-cdis/fence/pull/1173))

#### Bug Fixes
  - Fixes issue where google group updates for passport sync would clear 
    existing membership from Google Bucket Access Groups. ([#1177](https://github.com/uc-cdis/fence/pull/1177)) 
  - Use `auto` addressing style for presigned url generation (attempts to use 
    `virtual`, but falls back to `path` if necessary) ([#1179](https://github.com/uc-cdis/fence/pull/1179)) 
  - Pass `endpoint_url` from Fence config to boto3 client for presigned url 
    creation ([#1179](https://github.com/uc-cdis/fence/pull/1179))

#### Improvements
  - Updates version to match release ([#1186](https://github.com/uc-cdis/fence/pull/1186)) 
  - Use `boto3` for AWS S3 presigned url generation ([#1173](https://github.com/uc-cdis/fence/pull/1173)) 
  - Move AWS S3 presigned url generation related functionality into 
    `gen3cirrus` ([#1173](https://github.com/uc-cdis/fence/pull/1173))

#### Dependency Updates
  - `gen3cirrus` to 3.1.0 ([#1173](https://github.com/uc-cdis/fence/pull/1173))
  - `boto3` to 1.35.6 ([#1173](https://github.com/uc-cdis/fence/pull/1173))

#### Deployment Changes
  - New configuration has been added into Fence config for requester pay 
    enabled AWS S3 buckets, please refer to `/fence/config-default.yaml` for 
    details ([#1173](https://github.com/uc-cdis/fence/pull/1173))

## uc-cdis/guppy

#### Bug Fixes
  - Fixed param ordering in server start ([#277](https://github.com/uc-cdis/guppy/pull/277)) 
  - Fixed a bug causing tiered access middleware didn't properly applied to 
    aggregation results ([#274](https://github.com/uc-cdis/guppy/pull/274))

#### Deployment Changes
  - **Important**: all envs that has tiered access enabled should deploy a 
    Guppy that has this fix ([#274](https://github.com/uc-cdis/guppy/pull/274))

## uc-cdis/hatchery

#### Improvements
  - Add batch:TagResource to user policy for nextflow / batch ([#115](https://github.com/uc-cdis/hatchery/pull/115)) 

## uc-cdis/indexd

#### New Features
  - Implemented single table architecture to IndexD with a single new `record` 
    table (Configurable and requires migration) ([#376](https://github.com/uc-cdis/indexd/pull/376)) 

#### Improvements
  - Removed `sqlite` from unit tests. Unit tests now only uses `postgres` 
    ([#376](https://github.com/uc-cdis/indexd/pull/376))

#### Dependency Updates
  - `sqlalchemy` ~1.3.3 -> ^1.4.0 ([#376](https://github.com/uc-cdis/indexd/pull/376)) 

#### Deployment Changes
  - sqlite databases are not supported anymore ([#376](https://github.com/uc-cdis/indexd/pull/376)) 
  - To run single table migration check this doc: 
    https://github.com/uc-cdis/indexd/blob/master/docs/migration_to_single_table_indexd.md
    ([#376](https://github.com/uc-cdis/indexd/pull/376))

## uc-cdis/manifestservice

#### Bug Fixes
  - Make sure boolean type is taken care of correctly ([#55](https://github.com/uc-cdis/manifestservice/pull/55)) 

## uc-cdis/requestor

#### Dependency Updates
  - Bumps the pip group with 5 updates: (#73)

## uc-cdis/tube

#### New Features
  - github action change to remove docker-compose, we need to install that 
    ourselves ([#283](https://github.com/uc-cdis/tube/pull/283))

