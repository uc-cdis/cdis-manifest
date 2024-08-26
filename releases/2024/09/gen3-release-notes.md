# Core Gen3 Release 2024.09 (Bytownite)

## Release Highlights and Announcements

#### Required database migration to update Fence to 10.0.0 or later from an earlier version
If the ENABLE_DB_MIGRATION setting is enabled in your Fence configuration, the migration will run automatically. Otherwise, for cloud-automation deployments, run `gen3 job run fence-db-migrate`, or for any kubernetes deployment, run `kubectl exec <fence pod name> -- fence-create migrate`. 

#### Authorization change: case-insensitive comparison of usernames in Arborist
Arborist has been updated to make case-insensitive comparisons of usernames. This complies with the assumptions of many authorization systems and gen3 installations.

#### Community Contribution - force cluster-local URLs in Hatchery
You can now set a configuration option to [force hatchery to use cluster-local URLs](#improvements-4) (like http://fence-service/) even when the `GEN3_ENDPOINT` environmental variable is set.

Thanks to the community for contributing this to the Gen3 product codebase!

#### Multiple enhancements to Fence
We've added support for deleting files from non-AWS S3 compatible endpoints; given admins more flexibility to choose their preferred data storage while keeping AWS S3 as the default; and added support for an optional guid in the request body for the `/upload` and `/multipart/init` endpoints so that blank records can be created if the guid does not exist. We've also cleaned up the documentation to make it easier to find information.

## uc-cdis/arborist

#### New Features
  - case insensitive comparison for usernames ([#165](https://github.com/uc-cdis/arborist/pull/165)) 

#### Improvements
  - `/auth/request` endpoint: add a debug log when an anonymous access request 
    is rejected ([#166](https://github.com/uc-cdis/arborist/pull/166))

## uc-cdis/cdis-data-client

#### New Features
  - Automatically signs and notarizes macOS binary then builds to a pkg 
    installer ([#134](https://github.com/uc-cdis/cdis-data-client/pull/134))
  - Automatically generated releases on tagged builds to master branch ([#134](https://github.com/uc-cdis/cdis-data-client/pull/134)) 

#### Dependency Updates
  - Update from TravisCI to GitHub Actions ([#134](https://github.com/uc-cdis/cdis-data-client/pull/134)) 

## uc-cdis/cloud-automation

#### New Features
  - Updated es-proxy script to allow for setting es domain ([#2614](https://github.com/uc-cdis/cloud-automation/pull/2614)) 
  - Add script to copy databases in aurora, to help with db flips ([#2356](https://github.com/uc-cdis/cloud-automation/pull/2356)) 

#### Bug Fixes
  - [`any`](https://jqlang.github.io/jq/manual/#any) in jq will return string 
    for either true or false, so bash needs to have string comparison ([#2596](https://github.com/uc-cdis/cloud-automation/pull/2596)) 

#### Improvements
  - enable datadog logging for cedar-wrapper-service ([#2608](https://github.com/uc-cdis/cloud-automation/pull/2608)) 
  - Add access Hatchery was missing to launch Nextflow workspaces in blanket 
    billing mode ([#2592](https://github.com/uc-cdis/cloud-automation/pull/2592)) 

## uc-cdis/data-portal

#### New Features
  - Improve the way portal handle the response from WTS to not redirect back to 
    WTS login page if it fails ([#1576](https://github.com/uc-cdis/data-portal/pull/1576)) 
  - Updates the logic for setting study accesslevel variable to set studies 
    that are flagged as unaccessible as unaccessible. ([#1569](https://github.com/uc-cdis/data-portal/pull/1569)) 

#### Bug Fixes
  - Fix an issue with the discovery page not loading when the "download 
    manifest" or "export to workspace" buttons are not enabled ([#1575](https://github.com/uc-cdis/data-portal/pull/1575)) 

#### Improvements
  - Improves code organization by moving redirect functions for Discovery app 
    to a Utils file: this updates the file locations and names for the react 
    hook and function used to Handle Redirects following button clicks for 
    Discovery Page action bar and discovery details action buttons. ([#1567](https://github.com/uc-cdis/data-portal/pull/1567)) 

## uc-cdis/fence

#### New Features
  - Adds support for deleting files from non-AWS S3-compatible endpoints (e.g. 
    MinIO, Wasabi, Ceph). ([#1171](https://github.com/uc-cdis/fence/pull/1171))
  - Prometheus metrics support for logins and presigned URLs ([#1156](https://github.com/uc-cdis/fence/pull/1156)) 

#### Bug Fixes
  - Create new migration to remove foreign key constraint if it exists on 
    google_service_account table ([#1172](https://github.com/uc-cdis/fence/pull/1172)) 
  - Fixes the "The AWS Access Key Id you provided does not exist" error when 
    attempting to delete a file from a non-AWS bucket. ([#1171](https://github.com/uc-cdis/fence/pull/1171)) 
  - Fix so local csvs file are processed in consistent order, regardless of os 
    ([#1165](https://github.com/uc-cdis/fence/pull/1165))
  - Updates user_info overwrite logic to preserve data when processing CSVs 
    without some attributes ([#1165](https://github.com/uc-cdis/fence/pull/1165)) 

#### Improvements
  - Allows for Gen3 administrators to have greater flexibility in choosing 
    their preferred data storage, while keeping the AWS S3 endpoint as the 
    "default" storage option. ([#1171](https://github.com/uc-cdis/fence/pull/1171)) 
  - `/upload` endpoint accepts optional `guid` in request body. If the `guid` 
    exists in indexd, it does not create a new record, else it creates a blank 
    record with the provided `guid`. ([#1147](https://github.com/uc-cdis/fence/pull/1147)) 
  - `/multipart/init` endpoint accepts optional `guid` in request body. If the 
    `guid` exists in indexd, it does not create a new record, else it creates a 
    blank record with the provided `guid`. ([#1147](https://github.com/uc-cdis/fence/pull/1147)) 
  - Reorganized docs to make finding what you need a bit easier ([#1164](https://github.com/uc-cdis/fence/pull/1164)) 

#### Dependency Updates
  - Bumps [idna](https://github.com/kjd/idna) from 2.10 to 3.7. (#1150)

#### Deployment Changes
  - Requires database migration ([#1172](https://github.com/uc-cdis/fence/pull/1172)) 

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [ws](https://github.com/websockets/ws) from 6.2.2 to 6.2.3. (#272)
  - Bumps [braces](https://github.com/micromatch/braces) from 3.0.2 to 3.0.3. 
    (#271)

## uc-cdis/hatchery

#### New Features
  - Add `nextflow-global.s3-objects-expiration-days` setting to configure when 
    to delete objects created in S3 by Nextflow ([#112](https://github.com/uc-cdis/hatchery/pull/112)) 

#### Bug Fixes
  - Fix a bug when making requests to Arborist to check users' container 
    authorization ([#112](https://github.com/uc-cdis/hatchery/pull/112))

#### Improvements
  - Added `use-internal-services-url` boolean configuration field that forces 
    hatchery to use cluster-local URLs (like http://fence-service/) even when 
    `GEN3_ENDPOINT` environmental variable is set. ([#91](https://github.com/uc-cdis/hatchery/pull/91)) 

## uc-cdis/manifestservice

#### Dependency Updates
  - Bumps [zipp](https://github.com/jaraco/zipp) from 3.17.0 to 3.19.1. (#54)

## uc-cdis/metadata-service

#### Bug Fixes
  - fix token aud issue ([#112](https://github.com/uc-cdis/metadata-service/pull/112)) 

## uc-cdis/sower-jobs

#### Dependency Updates
  - Bumps [zipp](https://github.com/jaraco/zipp) from 3.17.0 to 3.19.1. (#58)
  - Bumps [certifi](https://github.com/certifi/python-certifi) from 2024.2.2 to 
    2024.7.4. (#57)

## uc-cdis/workspace-token-service

#### Bug Fixes
  - In certain circumstances there could be too many sqlalchemy sessions open 
    at the same time and would cause the service to crash. Adding session.close 
    after db queries return to remedy. ([#86](https://github.com/uc-cdis/workspace-token-service/pull/86)) 

#### Improvements
  - Migrate from Travis to GH action ([#87](https://github.com/uc-cdis/workspace-token-service/pull/87)) 

#### New Features
  - Updated to `authutils 6`, and made some updates to tests ([#85](https://github.com/uc-cdis/workspace-token-service/pull/85)) 

#### Dependency Updates
  - Authutils to 6.2.5 ([#85](https://github.com/uc-cdis/workspace-token-service/pull/85)) 
  - Authlib to 1.3.1 ([#85](https://github.com/uc-cdis/workspace-token-service/pull/85)) 

