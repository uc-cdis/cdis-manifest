# Core Gen3 Release 2024.06 (Bayldonite)
## Release Highlights
We have enhanced the Workspace Token Service (WTS) to enable the linking of non-Gen3 repositories into a Gen3 workspace. To use this feature, WTS must be configured with a client and connection information for an (OIDC compliant) external repository. If a user with access to that repository links their account, WTS will securely manage access and refresh tokens for the user according to the rules of the external repository. The user can then easily pull data from the repository into their Gen3 workspace. 

Details about setting up WTS can be found in the [README](https://github.com/uc-cdis/workspace-token-service/blob/master/README.md).


## uc-cdis/audit-service

#### Dependency Updates
  - Bumps [jinja2](https://github.com/pallets/jinja) from 3.1.3 to 3.1.4. (#55)
  - Bumps [gunicorn](https://github.com/benoitc/gunicorn) from 20.1.0 to 
    22.0.0. (#53)
  - Bumps [idna](https://github.com/kjd/idna) from 3.6 to 3.7. (#52)

## uc-cdis/cloud-automation

#### New Features
  - add 7th generation instances for workflows ([#2527](https://github.com/uc-cdis/cloud-automation/pull/2527)) 
  - add 24xlarge for compute steps ([#2527](https://github.com/uc-cdis/cloud-automation/pull/2527)) 
  - adding a cron to check qaplanetv1 for the fenceshib service since it can 
    break revproxy/automation ([#2525](https://github.com/uc-cdis/cloud-automation/pull/2525)) 

#### Bug Fixes
  - DICOM viewer: Fix configuration of the URL prefix used to hit the DICOM 
    server, and fix port for version `gen3-v3.8.0` ([#2533](https://github.com/uc-cdis/cloud-automation/pull/2533)) 
  - Updated deprecated cronjob apis ([#2529](https://github.com/uc-cdis/cloud-automation/pull/2529)) 
  - Updated sqs helper script to create more than one terraform workspace 
    ([#2295](https://github.com/uc-cdis/cloud-automation/pull/2295))

#### Improvements
  - CEDAR ingest job will query mds and match CEDAR data on instance_id instead 
    of nih_application_id ([#2532](https://github.com/uc-cdis/cloud-automation/pull/2532)) 
  - Skip setting cedar ingestion client creds in CI ([#2526](https://github.com/uc-cdis/cloud-automation/pull/2526)) 

## uc-cdis/data-portal

#### New Features
  - Updates VADC Atlas Data Dictionary app so that columns are sorted based on 
    their data type, making it easier for users to find the desired row data. 
    ([#1530](https://github.com/uc-cdis/data-portal/pull/1530))
  - Updates Atlas Data Dictionary application to use API endpoint instead of 
    test data ([#1525](https://github.com/uc-cdis/data-portal/pull/1525))
  - AtlasDataDictionaryContainer now wraps application in protected content 
    component to ensure users are logged in before accessing application 
    ([#1525](https://github.com/uc-cdis/data-portal/pull/1525))
  - Adds rules for Data Dictionary Name form field to enforce valid file names 
    ([#1524](https://github.com/uc-cdis/data-portal/pull/1524))

#### Improvements
  - Updates VADC Atlas Data Dictionary numeric charts to use ticks with an 
    interval of 1 (every other tick is shown) and to use rounded and slanted 
    ticks. Formats data displayed in tool tips. ([#1530](https://github.com/uc-cdis/data-portal/pull/1530)) 
  - Adds spacing to Concept ID columns to improve readability ([#1525](https://github.com/uc-cdis/data-portal/pull/1525)) 

#### Dependency Updates
  - Bumps [ejs](https://github.com/mde/ejs) from 3.1.9 to 3.1.10. (#1528)
  - Bumps 
    [follow-redirects](https://github.com/follow-redirects/follow-redirects) 
    from 1.15.5 to 1.15.6. (#1522)
  - Bumps [express](https://github.com/expressjs/express) from 4.18.2 to 
    4.19.2. (#1510)
  - Bumps [@adobe/css-tools](https://github.com/adobe/css-tools) from 4.2.0 to 
    4.3.2. (#1461)
  - Bumps 
    [follow-redirects](https://github.com/follow-redirects/follow-redirects) 
    from 1.15.2 to 1.15.5. (#1482)

## uc-cdis/ecs-ws-sidecar

#### Deployment Changes
  - Update base image to alpine 3.18 to address vulnerabilities ([#14](https://github.com/uc-cdis/ecs-ws-sidecar/pull/14)) 

## uc-cdis/fence

#### Bug Fixes
  - Retries failures when downloading authorization files through SFTP. ([#1143](https://github.com/uc-cdis/fence/pull/1143)) 

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [protobufjs](https://github.com/protobufjs/protobuf.js) from 7.2.4 to 
    7.2.6. (#263)
  - Bumps [ejs](https://github.com/mde/ejs) from 3.1.9 to 3.1.10. (#265)

## uc-cdis/hatchery

#### Bug Fixes
  - Update instanceProfile in memory during first launch. ([#107](https://github.com/uc-cdis/hatchery/pull/107)) 
  - During first launch instanceProfile is not found, then we create one but 
    never update the reference in memory that is returned later, resulting in a 
    panic as it can't find the item in memory. ([#107](https://github.com/uc-cdis/hatchery/pull/107)) 

#### Dependency Updates
  - Go to `1.21` ([#106](https://github.com/uc-cdis/hatchery/pull/106))
  - golang.org/x/net to `0.24.0` ([#106](https://github.com/uc-cdis/hatchery/pull/106)) 
  - gopkg.in/yaml.v3 to `3.0.1` ([#106](https://github.com/uc-cdis/hatchery/pull/106)) 
  - golang.org/x/crypto to `0.1.0` ([#106](https://github.com/uc-cdis/hatchery/pull/106)) 
  - github.com/prometheus/client_golang to `1.19.0` ([#106](https://github.com/uc-cdis/hatchery/pull/106)) 
  - google.golang.org/protobuf to `1.33.0` ([#106](https://github.com/uc-cdis/hatchery/pull/106)) 
  - removed `dd-trace-go.v1 ` ([#106](https://github.com/uc-cdis/hatchery/pull/106)) 

#### Deployment Changes
  - Removed support of DD tracing ([#106](https://github.com/uc-cdis/hatchery/pull/106)) 

## uc-cdis/metadata-service

#### Dependency Updates
  - many, importantly gunicorn ([#103](https://github.com/uc-cdis/metadata-service/pull/103)) 

## uc-cdis/requestor

#### Dependency Updates
  - Bumps [jinja2](https://github.com/pallets/jinja) from 3.1.3 to 3.1.4. (#67)
  - Bumps [gunicorn](https://github.com/benoitc/gunicorn) from 20.1.0 to 
    22.0.0. (#66)
  - Bumps [urllib3](https://github.com/urllib3/urllib3) from 2.0.2 to 2.0.7. 
    Bumps [jinja2](https://github.com/pallets/jinja) from 3.1.2 to 3.1.3. (#64)
  - Bumps [idna](https://github.com/kjd/idna) from 3.4 to 3.7. (#62)

#### Improvements
  - Add a description of how to remove access in the `authorization` document. 
    ([#63](https://github.com/uc-cdis/requestor/pull/63))

## uc-cdis/sheepdog

#### Bug Fixes
  - Fix type conversion issue when submitting arrays via TSV. Sheepdog now 
    supports submitting arrays of integers, floats, strings and booleans via 
    TSV. ([#409](https://github.com/uc-cdis/sheepdog/pull/409))

## uc-cdis/sower-jobs

#### Dependency Updates
  - Bumps [aiohttp](https://github.com/aio-libs/aiohttp) from 3.9.3 to 3.9.4. 
    (#52)
  - Bumps [idna](https://github.com/kjd/idna) from 3.6 to 3.7. (#51)

## uc-cdis/sower

#### Dependency Updates
  - upgrade golang to 1.18.0 ([#45](https://github.com/uc-cdis/sower/pull/45))
  - upgrade net to v0.23.0 ([#45](https://github.com/uc-cdis/sower/pull/45))

## uc-cdis/ssjdispatcher

#### Dependency Updates
  - `x/net` to v0.23.0 ([#57](https://github.com/uc-cdis/ssjdispatcher/pull/57))

## uc-cdis/tube

#### Bug Fixes
  - Fixing issue related to es property type of source_node field which is 
    created ad-hoc during the transformation ([#264](https://github.com/uc-cdis/tube/pull/264)) 

## uc-cdis/workspace-token-service

#### New Features
  - Adding non-fence external token flow to WTS. This can be configured in the 
    appcreds for other OIDC clients. ([#77](https://github.com/uc-cdis/workspace-token-service/pull/77)) 

