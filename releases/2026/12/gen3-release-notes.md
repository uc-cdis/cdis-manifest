# Core Gen3 Release 2026.12 (Inderite)
## uc-cdis/arborist

#### Breaking Changes
  - The `POST /auth/request`, `GET /auth/mapping` and `POST /auth/mapping` 
    endpoints now validate the provided token's audience. Note that Gen3 Fence 
    tokens include the right expected audience since 2026.11/13.2.0. ([#195](https://github.com/uc-cdis/arborist/pull/195)) 

## uc-cdis/audit-service

#### New Features
  - Add `export_data` audit log category for data leaving Gen3 (e.g PFB 
    exports) ([#112](https://github.com/uc-cdis/audit-service/pull/112))
  - `POST /log/export_data` ([#112](https://github.com/uc-cdis/audit-service/pull/112)) 
  - `GET /log/export_data` can filter and group by `type`, `resource_paths`, 
    and `destination`. ([#112](https://github.com/uc-cdis/audit-service/pull/112)) 
  - `export_data.type` must be an allowed value, otherwise 400. ([#112](https://github.com/uc-cdis/audit-service/pull/112)) 
  - `/_schema` includes `export_data` (v1.0). ([#112](https://github.com/uc-cdis/audit-service/pull/112)) 

#### Dependency Updates
  - authlib to 1.9.5 ([#117](https://github.com/uc-cdis/audit-service/pull/117))
  - certifi to 2026.10.23 ([#117](https://github.com/uc-cdis/audit-service/pull/117)) 
  - Runs migration `39d94c2bea56`, which creates the `export_data` table and 
    updates the `create_partition_and_insert()` trigger function ([#112](https://github.com/uc-cdis/audit-service/pull/112)) 
  - update pyjwt to 2.15.1 ([#114](https://github.com/uc-cdis/audit-service/pull/114)) 
  - update `authutils` to 9.0.0+ ([#113](https://github.com/uc-cdis/audit-service/pull/113)) 
  - update `gen3authz` to 3.0.0+ ([#113](https://github.com/uc-cdis/audit-service/pull/113)) 

## uc-cdis/cloud-automation

#### New Features
  - add `heal-aggmds-etl` script ([#2900](https://github.com/uc-cdis/cloud-automation/pull/2900)) 
  - Added domain hyve uses to whitelist ([#2898](https://github.com/uc-cdis/cloud-automation/pull/2898)) 

## uc-cdis/data-portal

#### New Features
  - Remove openICPSR from list of data repositories displayed on Study 
    Registration page ([#1888](https://github.com/uc-cdis/data-portal/pull/1888)) 

#### Breaking Changes
  - Discovery: discovery page will only load metadata from AggMDS if 
    `discoveryUseAggMDS` is enabled, even if `studyRegistration` has also been 
    enabled ([#1896](https://github.com/uc-cdis/data-portal/pull/1896))
  - Discovery: discovery details page will load metadata from MDS ([#1896](https://github.com/uc-cdis/data-portal/pull/1896)) 

#### Bug Fixes
  - Discovery: download button can reflect pending state correctly ([#1896](https://github.com/uc-cdis/data-portal/pull/1896)) 

#### Improvements
  - Discovery: full text searching indexing will not block UI rendering ([#1896](https://github.com/uc-cdis/data-portal/pull/1896)) 
  - Discovery: improved data loading and UI rendering efficiency ([#1896](https://github.com/uc-cdis/data-portal/pull/1896)) 
  - Opening Discovery Details page with a permalink like `/discovery/<GUID>` 
    will no long require the Discovery page to load all metadata from 
    MDS/AggMDS ([#1887](https://github.com/uc-cdis/data-portal/pull/1887))

#### Dependency Updates
  - remove query-string use built in features ([#1895](https://github.com/uc-cdis/data-portal/pull/1895)) 
  - replace svg-react-loader with babel-plugin-inline-react-svg ([#1895](https://github.com/uc-cdis/data-portal/pull/1895)) 
  - remove, unneeded dependencies: ([#1894](https://github.com/uc-cdis/data-portal/pull/1894)) 
  - graphql-language-service-interface ([#1894](https://github.com/uc-cdis/data-portal/pull/1894)) 
  - graphql-language-service-parser ([#1894](https://github.com/uc-cdis/data-portal/pull/1894)) 
  - body-parser 2.4.0 ([#1893](https://github.com/uc-cdis/data-portal/pull/1893)) 
  - markdown-it 14.3.3 ([#1892](https://github.com/uc-cdis/data-portal/pull/1892)) 
  - dompurify to 3.4.17 ([#1891](https://github.com/uc-cdis/data-portal/pull/1891)) 
  - update `@graphql-tools/utils` to 12.1.0 ([#1889](https://github.com/uc-cdis/data-portal/pull/1889)) 

## uc-cdis/fence

#### New Features
  - Optional `OPENID_CONNECT.<idp>.logout_url`: `/logout` also ends the session 
    at a generic OIDC IdP. Fence adds `client_id` and 
    `post_logout_redirect_uri=<next>` (OIDC RP-Initiated Logout). ([#1393](https://github.com/uc-cdis/fence/pull/1393)) 
  - Optional `logout_redirect_param_name` for IdPs with a different redirect 
    parameter (e.g. `logout_uri` for Cognito). ([#1393](https://github.com/uc-cdis/fence/pull/1393)) 
  - OPENID_CONNECT: ([#1393](https://github.com/uc-cdis/fence/pull/1393))
  - generic_oidc_idp: ([#1393](https://github.com/uc-cdis/fence/pull/1393))
  - client_id: fence-client ([#1393](https://github.com/uc-cdis/fence/pull/1393)) 
  - logout_url: 
    'https://keycloak.example.com/realms/myrealm/protocol/openid-connect/logout'
    ([#1393](https://github.com/uc-cdis/fence/pull/1393))
  - IdPs without `logout_url` and the built-in `cognito` key are unchanged. 
    Discussed with the Gen3 team on Slack. ([#1393](https://github.com/uc-cdis/fence/pull/1393)) 
  - CILogon login now respects `OPENID_CONNECT.cilogon.user_id_field`. If set, 
    that claim is used as the username; if unset or empty, it falls back to the 
    previous hardcoded `sub`. ([#1389](https://github.com/uc-cdis/fence/pull/1389)) 
  
#### Breaking Changes
  - `POST /data/download/bulk` returns 413 when `guids` has more than 
    `MAX_BULK_DRS_REQUESTS` items (default 100). It had no limit before. `POST 
    /ga4gh/drs/v1/objects/access` already used this. ([#1395](https://github.com/uc-cdis/fence/pull/1395)) 
  - Bulk download audit logs no longer use `guid="bulk"`. Each requested file 
    gets its own `presigned_url` log, with `{"bulk": true, "bulk_files": []}` 
    in `additional_data` (audit schema 1.1+). Queries that read `guid="bulk"` 
    rows or `bulk_files` need an update. ([#1395](https://github.com/uc-cdis/fence/pull/1395)) 
 
#### Bug Fixes
  - `POST /data/download/bulk` now sends audit logs ([#1395](https://github.com/uc-cdis/fence/pull/1395)) 
  - Both bulk routes send one `presigned_url` audit log per requested file, 
    with that file's `guid`, `resource_paths`, `protocol`, and status code. 
    Before, `POST /ga4gh/drs/v1/objects/access` sent one log for the request 
    with every file's `resource_paths` combined. ([#1395](https://github.com/uc-cdis/fence/pull/1395)) 
  - A DRS bulk request with more than one access ID (e.g.`s3` and `gs`) now 
    correctly logs each file once with its own protocol. ([#1395](https://github.com/uc-cdis/fence/pull/1395)) 
  - A DRS bulk request with Passports that map to more than one user returns 
    URLs for the files those users can read. Previously every object failed 
    with 500. Each file is logged under the user who was authorized for it. A 
    file that no single user was authorized for is logged with the usernames 
    joined by commas and a null `sub`. ([#1395](https://github.com/uc-cdis/fence/pull/1395)) 
  - `POST /data/download/bulk` now returns 400 when `guids` is not a list of 
    strings. ([#1395](https://github.com/uc-cdis/fence/pull/1395))
  - Users not yet in Arborist (for example, newly registered users when 
    `REGISTERED_USERS_GROUP` is empty) are now added to their matching IdP 
    groups when `is_authz_groups_sync_enabled` is on. ([#1400](https://github.com/uc-cdis/fence/pull/1400)) 
  - Fixed an intermittent 401 on DRS object access with a valid GA4GH passport. 
    If Fence had cached the passport, the Arborist policy derived from it could 
    expire between Fence's cache check and its authorization check, denying the 
    request. The policy now lasts 5 seconds longer than the cache entry. Bulk 
    DRS access, which returned 403 in the same situation, is fixed as well. 
    ([#1394](https://github.com/uc-cdis/fence/pull/1394))
  
#### Improvements
  - With `aws_sqs` push Fence sends bulk audit logs with `SendMessageBatch` up 
    to 10 per call instead of one call per file. With `api` it posts one log 
    per file. ([#1395](https://github.com/uc-cdis/fence/pull/1395))
  - If some audit logs fail to send Fence still sends the rest, logs each 
    failure, and returns the download response. ([#1395](https://github.com/uc-cdis/fence/pull/1395)) 
  - Log an error when adding a user to an IdP-matched Arborist group fails. 
    ([#1400](https://github.com/uc-cdis/fence/pull/1400))
  - Corrected the `is_authz_groups_sync_enabled` documentation: users are added 
    to matching groups, and memberships expire, not removed right away when the 
    user leaves the group in the IdP. ([#1400](https://github.com/uc-cdis/fence/pull/1400)) 
  - When exchanging an API key for an access token, explicitly reject 
    `expires_in` parameters that are too large instead of silently defaulting 
    to the max allowed lifetime ([#1398](https://github.com/uc-cdis/fence/pull/1398)) 
  - Validate DPOP_SHARED_SECRET only for fence web app ([#1392](https://github.com/uc-cdis/fence/pull/1392)) 
  - `CilogonOauth2Client.get_auth_info` returns the configured username claim 
    alongside `sub`, so `id_from_idp` is still populated from `sub`. ([#1389](https://github.com/uc-cdis/fence/pull/1389)) 
  - Error messages reference the configured field name. ([#1389](https://github.com/uc-cdis/fence/pull/1389)) 
  - Documented `user_id_field` under `cilogon` in `config-default.yaml`. 
    ([#1389](https://github.com/uc-cdis/fence/pull/1389))
  
#### Dependency Updates
  - authutils >= 9.0.2 ([#1401](https://github.com/uc-cdis/fence/pull/1401))
  - `MAX_BULK_DRS_REQUESTS` now also limits `POST /data/download/bulk`. ([#1395](https://github.com/uc-cdis/fence/pull/1395)) 
  - certifi to 2026.10.23 ([#1399](https://github.com/uc-cdis/fence/pull/1399))
  
#### Tests
  - `tests/test_logout.py`: generic IdP logout URL building, parameter name 
    override, fallbacks; `cognito` unchanged. ([#1393](https://github.com/uc-cdis/fence/pull/1393)) 
  - Added unit tests for the configured field, the missing-claim error, and 
    callback fallback behavior. ([#1389](https://github.com/uc-cdis/fence/pull/1389)) 

## uc-cdis/gen3-spark

#### Bug Fixes
  - Fix scala download link for github (new location) keeping same version 
    ([#27](https://github.com/uc-cdis/gen3-spark/pull/27))

#### Improvements
  - add `ps` for hadoop liveness check in tube ([#29](https://github.com/uc-cdis/gen3-spark/pull/29)) 
  - add `javax.activation-api` for YARN in Java 11 in tube ([#29](https://github.com/uc-cdis/gen3-spark/pull/29)) 

## uc-cdis/gen3-user-data-library

#### Dependency Updates
  - update `authutils` to 9.0.0+ ([#87](https://github.com/uc-cdis/gen3-user-data-library/pull/87)) 

## uc-cdis/gen3-workflow

#### New Features
  - Support `client_credentials` access tokens (no `sub` claim) in TES and 
    storage routes; the client (`azp`) is the principal ([#179](https://github.com/uc-cdis/gen3-workflow/pull/179)) 
  - Grant clients the same per-principal isolation policies as users (own tasks 
    and storage only, via `gen3_workflow_user_sub_<client_id>`) ([#179](https://github.com/uc-cdis/gen3-workflow/pull/179)) 
  - Pagination in the `/ui` page. ([#203](https://github.com/uc-cdis/gen3-workflow/pull/203)) 
  - Toggle in the `/ui` page between the user's own tasks and all the tasks 
    they have access to. ([#203](https://github.com/uc-cdis/gen3-workflow/pull/203)) 
  - Gen3-Workflow now passes the expected audience to the authorization service 
    during authorization checks. Requires Arborist version 2026.12/4.2.0 or 
    newer ([#202](https://github.com/uc-cdis/gen3-workflow/pull/202))

#### Bug Fixes
  - The `/ui` page shows only the user's own tasks by default. ([#203](https://github.com/uc-cdis/gen3-workflow/pull/203)) 
  - Listing tasks no longer fails when Funnel's response is too large. ([#203](https://github.com/uc-cdis/gen3-workflow/pull/203)) 
  - CI on Kind no longer fails with `failed to create fsnotify watcher: too 
    many open files` ([#201](https://github.com/uc-cdis/gen3-workflow/pull/201))
  - CI on Kind no longer fails when `public.ecr.aws` rate-limits pulls of the 
    Mountpoint S3 CSI driver images. ([#201](https://github.com/uc-cdis/gen3-workflow/pull/201)) 
  
#### Improvements
  - Test coverage for client-token flows (storage setup, TES task creation, 
    authorization failures) ([#179](https://github.com/uc-cdis/gen3-workflow/pull/179)) 
  - Smaller responses from Funnel when getting and listing tasks. ([#203](https://github.com/uc-cdis/gen3-workflow/pull/203)) 
  - Documents that pages of listed tasks may contain fewer tasks than 
    `page_size`. ([#203](https://github.com/uc-cdis/gen3-workflow/pull/203))
  - Disables S3 Files (`ENABLE_S3_FILES = false`) and sets Funnel storage to 
    `mountpoint_s3` in the CI on Kind setup. ([#201](https://github.com/uc-cdis/gen3-workflow/pull/201)) 
 
#### Deployment Changes
  - For TES with client tokens, deploy together with 
    uc-cdis/funnel-gen3-plugin#14 ([#179](https://github.com/uc-cdis/gen3-workflow/pull/179)) 
  - Fence should be running with gen3authz ≥ 3.1.2 (uc-cdis/fence#1374): older 
    versions have a usersync bug that wipes all of a client's arborist policies 
    whenever the client holds a policy not in user.yaml — which this feature's 
    runtime grants trigger on every usersync run ([#179](https://github.com/uc-cdis/gen3-workflow/pull/179)) 
  - The Funnel image must include https://github.com/uc-cdis/funnel/pull/31. 
    ([#203](https://github.com/uc-cdis/gen3-workflow/pull/203))
  - Gen3-Workflow requires Arborist version 2026.12/4.2.0 or newer ([#202](https://github.com/uc-cdis/gen3-workflow/pull/202)) 
  
## uc-cdis/guppy

#### Dependency Updates
  - update `@graphql-tools/utils` to 12.1.0 ([#416](https://github.com/uc-cdis/guppy/pull/416)) 
  - Bumps [body-parser](https://github.com/expressjs/body-parser) from 2.3.0 to 
    2.4.0. ([#413](https://github.com/uc-cdis/guppy/pull/413)) 
  - Bumps 
    [storybook](https://github.com/storybookjs/storybook/tree/HEAD/code/core) 
    from 10.6.0 to 10.6.4. ([#412](https://github.com/uc-cdis/guppy/pull/412)) 
  - Bumps [source-map-js](https://github.com/7rulnik/source-map-js) from 1.2.1 
    to 1.2.2. ([#410](https://github.com/uc-cdis/guppy/pull/410)) 

## uc-cdis/hatchery

#### Dependency Updates
  - openapi/swag to 0.29.2 ([#171](https://github.com/uc-cdis/hatchery/pull/171)) 

## uc-cdis/indexd

#### Breaking Changes
  - The default indexd settings are now automatically applied to all settings 
    the deployment does not override. This should not cause issues, but if it 
    does, you may need to override additional settings. ([#463](https://github.com/uc-cdis/indexd/pull/463)) 

#### Improvements
  - Always apply the default Indexd settings first, overriding them as needed 
    with the provided local settings. This allows the app to assume settings 
    declared in `default_settings.py` are always present. ([#463](https://github.com/uc-cdis/indexd/pull/463)) 
  - Add missing default settings `DRS_AUTHORIZATION_METADATA`, 
    `DEFAULT_BEARER_ISSUER`, `DEFAULT_PASSPORT_ISSUER` and 
    `DEFAULT_PREFERRED_TYPE` ([#463](https://github.com/uc-cdis/indexd/pull/463)) 
  - Fix `invalid escape sequence '\.'` warnings ([#463](https://github.com/uc-cdis/indexd/pull/463)) 

#### Dependency Updates
  - authutils to 9.0.0 ([#463](https://github.com/uc-cdis/indexd/pull/463))

## uc-cdis/manifestservice

#### Dependency Updates
  - authutils >= 9.0.0 ([#96](https://github.com/uc-cdis/manifestservice/pull/96)) 
  - pyjwt to 2.15.1 ([#96](https://github.com/uc-cdis/manifestservice/pull/96))
  - urllib3 to 2.8.0 ([#96](https://github.com/uc-cdis/manifestservice/pull/96))
  - anyio from 4.14.1 to 4.14.2 ([#97](https://github.com/uc-cdis/manifestservice/pull/97)) 

## uc-cdis/metadata-service

#### Bug Fixes
  - urllib3-2.8.0-CVE-2026-97687 ([#196](https://github.com/uc-cdis/metadata-service/pull/196)) 

#### Dependency Updates
  - authlib to 1.9.5 ([#201](https://github.com/uc-cdis/metadata-service/pull/201)) 
  - certifi to 2026.10.23 ([#201](https://github.com/uc-cdis/metadata-service/pull/201)) 

## uc-cdis/peregrine

#### Dependency Updates
  - certifi to 2026.10.23 ([#276](https://github.com/uc-cdis/peregrine/pull/276)) 

## uc-cdis/sheepdog

#### Dependency Updates
  - authlib to 1.9.5 ([#480](https://github.com/uc-cdis/sheepdog/pull/480))
  - certifi to 2026.10.23 ([#480](https://github.com/uc-cdis/sheepdog/pull/480))
  - Update authutils to >= 9.0.0 ([#479](https://github.com/uc-cdis/sheepdog/pull/479)) 

## uc-cdis/sower

#### Improvements
  - Update `go-openapi/swag` to `v0.27.1` ([#67](https://github.com/uc-cdis/sower/pull/67)) 

## uc-cdis/tube

#### Bug Fixes
  - ubuntu pinned to 22.04 in `image_build_and_push.yaml` for python 3.9 ([#321](https://github.com/uc-cdis/tube/pull/321)) 

#### Dependency Updates
  - certify to 2026.10.23 ([#321](https://github.com/uc-cdis/tube/pull/321))

## uc-cdis/workspace-token-service

#### Dependency Updates
  - authlib to 1.9.5 ([#165](https://github.com/uc-cdis/workspace-token-service/pull/165)) 
  - certifi to 2026.10.23 ([#165](https://github.com/uc-cdis/workspace-token-service/pull/165)) 
