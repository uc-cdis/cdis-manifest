# Core Gen3 Release 2022.12 (Kyanite)

## uc-cdis/arborist

#### New Features
  - The `POST /auth/mapping` endpoint now supports a `clientID` parameter to 
    get the auth mapping for a client. It accepts either a `username` parameter 
    or a `clientID` parameter (not both). ([#153](https://github.com/uc-cdis/arborist/pull/153)) 

#### Breaking Changes
  - The `GET /auth/mapping` endpoint does not accept `username` as a query 
    parameter anymore. It only supports parsing the username from the provided 
    JWT. To specify a username, use the `POST /auth/mapping` endpoint. ([#153](https://github.com/uc-cdis/arborist/pull/153)) 

## uc-cdis/gen3-statics

#### Improvements
  - Removing Veracode scanning pipeline ([#14](https://github.com/uc-cdis/gen3-statics/pull/14)) 

## uc-cdis/fence

#### Improvements
  - Update users' `_last_auth` at login ([#1027](https://github.com/uc-cdis/fence/pull/1027)) 
  - Use blue Gen3 logo ([#1054](https://github.com/uc-cdis/fence/pull/1054))
  - Removing Veracode scanning pipeline ([#1053](https://github.com/uc-cdis/fence/pull/1053)) 

## uc-cdis/guppy

#### Improvements
  - Removing Veracode scanning pipeline ([#150](https://github.com/uc-cdis/guppy/pull/150)) 

## uc-cdis/hatchery

#### New Features
  - Add ability to configure ECS fargate workspaces to use prismacloud sidecar 
    for security monitoring. ([#52](https://github.com/uc-cdis/hatchery/pull/52)) 

## uc-cdis/indexd

#### Improvements
  - Removing Veracode scanning pipeline ([#340](https://github.com/uc-cdis/indexd/pull/340)) 

## uc-cdis/pelican

#### Improvements
  - Removing Veracode scanning pipeline ([#67](https://github.com/uc-cdis/pelican/pull/67)) 

## uc-cdis/peregrine

#### Improvements
  - Removing Veracode scanning pipeline ([#188](https://github.com/uc-cdis/peregrine/pull/188)) 
  - Removing Veracode scanning pipeline ([#189](https://github.com/uc-cdis/peregrine/pull/189)) 

## uc-cdis/data-portal

#### New Features
  - This implements the features associated with tickets for VADC Sprint 21 
    Frontend Work: ([#1131](https://github.com/uc-cdis/data-portal/pull/1131))
  - gwas V2 workflow progress bar ([#1131](https://github.com/uc-cdis/data-portal/pull/1131)) 
  - Add new command that only runs eslint on edited files in current git branch 
    ([#1131](https://github.com/uc-cdis/data-portal/pull/1131))
  - Add Attrition Table below Steps (basic setup & styling only) ([#1131](https://github.com/uc-cdis/data-portal/pull/1131)) 
  - UI feature - Euler diagram for evaluating cohort selections in dichotomous 
    covariate or dichotomous outcome steps ([#1131](https://github.com/uc-cdis/data-portal/pull/1131)) 
  - Add Google Analytics 4 (GA4) tag support ([#1127](https://github.com/uc-cdis/data-portal/pull/1127)) 

#### Dependency Updates
  - Added "@upsetjs/venn.js": "^1.4.2" ([#1131](https://github.com/uc-cdis/data-portal/pull/1131)) 
  - Requires dependencies overrides: ([#1131](https://github.com/uc-cdis/data-portal/pull/1131)) 
  - "uglify-js": "3.14.3", ([#1131](https://github.com/uc-cdis/data-portal/pull/1131)) 
  - "ansi-regex": "3.0.1" ([#1131](https://github.com/uc-cdis/data-portal/pull/1131)) 
  - Bumps [@xmldom/xmldom](https://github.com/xmldom/xmldom) from 0.7.5 to 
    0.7.6. (#1122)
  - Replace `react-ga` with `react-ga4` ([#1127](https://github.com/uc-cdis/data-portal/pull/1127)) 
  - updated node js to 16.x in Dockerfile and Travis CI tests ([#1119](https://github.com/uc-cdis/data-portal/pull/1119)) 

#### Improvements
  - GA init and tracking logic update ([#1127](https://github.com/uc-cdis/data-portal/pull/1127)) 
  - this allows for devs running local node js version > 14 to also get all the 
    tests to pass ([#1119](https://github.com/uc-cdis/data-portal/pull/1119))
  - Removing Veracode scanning pipeline ([#1121](https://github.com/uc-cdis/data-portal/pull/1121)) 

#### Bug Fixes
  - fixed unhandled promise rejection, which fixes a failing unit test ([#1119](https://github.com/uc-cdis/data-portal/pull/1119)) 
  - fixed failing unit test for UserProfile ([#1119](https://github.com/uc-cdis/data-portal/pull/1119)) 

## uc-cdis/sheepdog

#### Improvements
  - Removing Veracode scanning pipeline ([#373](https://github.com/uc-cdis/sheepdog/pull/373)) 

## uc-cdis/tube

#### Improvements
  - Removing Veracode scanning pipeline ([#211](https://github.com/uc-cdis/tube/pull/211)) 

## uc-cdis/metadata-service

#### New Features
  - Array fields can be "compressed" to return the length and not the full 
    field using the counts parameter ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 
  - The elastic search index can be configured using the schema section of the 
    config file ([#65](https://github.com/uc-cdis/metadata-service/pull/65))
  - Introspection of the schema to a JSON schema using the info/schema call 
    ([#65](https://github.com/uc-cdis/metadata-service/pull/65))
  - Multiple adapters can write to the same common namespace; this allows for 
    adapters to have more fine grain control to cherry-pick studies and store 
    them in the same namespace ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 
  - Support for pagination info using the ```pagination=true``` ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 
  - Can optionally flatten the response using ```flatten=true``` ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 
  - A true Gen3 adapter replaces the older Gen3 specific loader (MDSInstance). 
    This means the ```gen3_commons``` section of the config file should not be 
    used. ([#65](https://github.com/uc-cdis/metadata-service/pull/65))
  - Optionally cache DRS prefix to hostname mapping from dataguids.org. 
    Allowing the aggregate_metadata service to act as a DRS resolver. ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 

#### Breaking Changes
  - The configuration file is not compatible with the previous release. This is 
    due to the new support for defining a schema, new configuration options, 
    and changes to the adapters. ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 

#### Bug Fixes
  - fixed a bug causing DB migration to crash for special string combinations 
    ([#79](https://github.com/uc-cdis/metadata-service/pull/79))

#### Improvements
  - The ETL process (i.e. populate) now will load to a temporary index and 
    clone to the live index only if no errors are encountered ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 
  - Updated documentation and sample config file ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 
  - all config file have been removed ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 
  - extend httpx and rety timeout for Gen3Adapter ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 
  - Removing Veracode scanning pipeline ([#77](https://github.com/uc-cdis/metadata-service/pull/77)) 

#### Deployment Changes
  - configuration files will need to be updated ([#65](https://github.com/uc-cdis/metadata-service/pull/65)) 

## uc-cdis/dcf-dataservice

#### Improvements
  - Removing Veracode scanning pipeline ([#113](https://github.com/uc-cdis/dcf-dataservice/pull/113)) 

## uc-cdis/cloud-automation

#### New Features
  - Add ability to launch prismacloud containers using hatchery for security 
    purposes. ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061))
  - enabling DataDog for DICOM Viewer and DICOM Server (Orthanc) ([#2065](https://github.com/uc-cdis/cloud-automation/pull/2065)) 

#### Bug Fixes
  - fix path to OHDSI Atlas config after move ([#2073](https://github.com/uc-cdis/cloud-automation/pull/2073)) 
  - fix label to provide access to Atlas DB, this should have been done 
    together with this PR https://github.com/uc-cdis/cloud-automation/pull/2015 
    ([#2071](https://github.com/uc-cdis/cloud-automation/pull/2071))
  - Upon upload of larger data submissions ModSecurity: Access denied with code 
    400 (phase 2). ([#2063](https://github.com/uc-cdis/cloud-automation/pull/2063)) 
  - Matched "Operator `Eq' with parameter `0' against variable `REQBODY_ERROR' 
    (Value: `1' ) ([#2063](https://github.com/uc-cdis/cloud-automation/pull/2063)) 
  - [file "/etc/nginx/modsec/modsecurity.conf"] [line "57"] [id "200002"] [rev 
    ""] ([#2063](https://github.com/uc-cdis/cloud-automation/pull/2063))
  - [msg "Failed to parse request body."] ([#2063](https://github.com/uc-cdis/cloud-automation/pull/2063)) 
  - [data "Request body excluding files is bigger than the maximum expected."] 
    [severity "2"] ([#2063](https://github.com/uc-cdis/cloud-automation/pull/2063)) 
  - Modifying the nginx modsec configuration to increase the bodysize limit and 
    the nofile limit to prevent upload failures. As well as modifying the 
    default action to PartialProcess ([#2063](https://github.com/uc-cdis/cloud-automation/pull/2063)) 

#### Improvements
  - support for 2.12 for [this 
    configuration](https://github.com/OHDSI/WebAPI/pull/2083/files#diff-54eeffbae371fcd1398d4ca5e89a1b8118208b7bb2f8ddf55c1aa2f7d98ab136R129)
    ([#2072](https://github.com/uc-cdis/cloud-automation/pull/2072))
  - few moving of config to more suitable location ([#2072](https://github.com/uc-cdis/cloud-automation/pull/2072)) 
  - Update Jenkins versions ([#2066](https://github.com/uc-cdis/cloud-automation/pull/2066)) 
  - https://hub.docker.com/layers/jenkins/jenkins/2.375 ([#2066](https://github.com/uc-cdis/cloud-automation/pull/2066)) 
  - https://hub.docker.com/layers/jenkins/jnlp-slave/4.13.3-1 ([#2066](https://github.com/uc-cdis/cloud-automation/pull/2066)) 
  - Adding .pedscommons.org to whitelist ([#2062](https://github.com/uc-cdis/cloud-automation/pull/2062)) 
  - update squid web whitelist ([#2060](https://github.com/uc-cdis/cloud-automation/pull/2060)) 

#### Deployment Changes
  - Currently requires to manually update prisma api key in json format under 
    this path in the adminvm ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061)) 
  - `~/Gen3Secrets/prisma/apikey.json` ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061)) 
  - format has to be the following: ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061)) 
  - ``` ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061))
  - { ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061))
  - "AccessKeyID": "XXXX", ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061)) 
  - "SecretKey": "XXXX" ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061)) 
  - } ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061))
  - ``` ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061))
  - This PR extends `kube-setup-hatchery` to create a kubernetes secret with 
    for prisma cloud credentials, and extending the hatchery deployment to look 
    for this secret and use it, if it exists. ([#2061](https://github.com/uc-cdis/cloud-automation/pull/2061)) 

## uc-cdis/audit-service

#### Improvements
  - Removing Veracode scanning pipeline ([#21](https://github.com/uc-cdis/audit-service/pull/21)) 

## uc-cdis/requestor

#### New Features
  - Support client tokens in requests listing endpoint `GET /request` ([#48](https://github.com/uc-cdis/requestor/pull/48)) 

#### Bug Fixes
  - Use conditional `await` in arborist `create_policy` method ([#46](https://github.com/uc-cdis/requestor/pull/46)) 

#### Improvements
  - Use a limit clause in alembic database migration ([#46](https://github.com/uc-cdis/requestor/pull/46)) 
  - Removing Veracode scanning pipeline ([#49](https://github.com/uc-cdis/requestor/pull/49)) 

