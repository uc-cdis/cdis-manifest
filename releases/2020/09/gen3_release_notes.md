# Core Gen3 Release 202009 (Hyde Park)

## uc-cdis/gen3-statics

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#7)

## uc-cdis/fence

#### New Features
  - New base image `pybase3-1.3.0` (#817)
  - Implemented Token management for fence. (#803)
  - Added new `upstream_refresh_token` database to store refresh tokens. (#803)
  - Stores RAS refresh token on login. (#803)
  - Added function to fetch refresh token and update it in database. (#803)
  - Added `ga4gh_passport_v1` scope description. (#809)
  - removed `ras_dbgap_v1` scope. (#809)
  - Add new 'scopes' claim to access tokens (for GA4GH AAI); add 
    ga4gh_passport_v1 to user/session scopes (#799)
  - Make (for now only one of the) claims returned in userinfo responsive to 
    scopes present in access token (#799)
  - (new optional configuration) Google Group syncing for usersync can keep 
    track of all groups and users and do one "bulk" update at the end (instead 
    of per user) with a smart diff of expected vs actual group membership in 
    google (#795)
  - /data/upload/GUID now accepts an optional "file_name" query parameter (#789)
  - /data/upload now accepts an optional "authz" field in the body (#789)
  - Clear user ga4gh visas upon login, before fetching new ones; assumes RAS is 
    sole visa issuer for now. (#794)
  - Include at_hash claim in id tokens where an access token is issued 
    alongside (#786)
  - Add ga4gh_visa_v1 table to database (#792)
  - Save user's RAS visas to db upon RAS login (#792)
  - Include ga4gh_passport_v1 claim in userinfo response (#792)

#### Breaking Changes
  - This Nginx status endpoint is a hard dependency for the 
    `nginx-prometheus-exporter` side car. Any older fence image that is used 
    with the Kubernetes deployment descriptor that is declared with the sidecar 
    below will fail to come up. (#817)
  - ``` (#817)
  - name: nginx-prometheus-exporter (#817)
  - image: registry.hub.docker.com/nginx/nginx-prometheus-exporter:0.8.0 (#817)
  - args: ["-nginx.scrape-uri", "http://127.0.0.1/nginx_status"] (#817)
  - ports: (#817)
  - containerPort: 9113 (#817)
  - ``` (#817)

#### Bug Fixes
  - Fix default config for RAS (#808)
  - Limit service accounts to 6 projects and added a `400` status code if 
    attempt to register more. 
    [PXP-5889](https://ctds-planx.atlassian.net/browse/PXP-5889) (#813)
  - In the userinfo endpoint, if there is no access token in 
    flask.g.access_token, look for one in a Bearer token. This accommodates 
    curl requests with tokens instead of only browser requests. (#812)
  - token revocation per RFC 7009 should return 200 even if the token is 
    expired (#814)
  - Always get region to fix cleversafe presigned-urls (#805)
  - /data/upload/GUID no longer assumes you're trying to "download" the file 
    (which was resulting in an error about the record missing urls) (#789)

#### Improvements
  - Added unit tests to test 6 project limit in the `POST` and `PATCH` 
    `/google/service_accounts` endpoints (#813)
  - Parameterized the limit of projects a service account can have as 
    `SERVICE_ACCOUNT_LIMIT` in `config-default.yaml`. (#813)
  - Document misconfigured NIH login issue (#807)
  - no trailing whitespace hook (#802)
  - Black formatting on all files (#801)
  - Ensure all files ends with one newline (#801)
  - Add pre commit configuration for black, newlines, and detecting secrets 
    (along with a secrets baseline) (#801)
  - more logging (#789)
  - Improve output for fence-create client-create (label the id/secret, add 
    instructions to save the creds) (#797)
  - Use authorization_code object saved in Grant class attributes; remove 
    unnecessary db query (#796)
  - don't error out when database has google configured for user access but 
    fence configuration doesn't define the google storage client (e.g. allow 
    "disabling" Google syncing by removing the fence configuration for google) 
    (#793)
  - Refactor UnsignedIDToken class in order to use both CodeIDToken and 
    ImplicitIDToken from Authlib (#786)
  - id token validation is now sensitive to present auth flow type (some claims 
    like nonce and at_hash are validated differently in implicit vs code flow) 
    (#786)

#### Deployment Changes
  - If the fence config already has [CLIENT_, USER_, SESSION_]ALLOWED_SCOPES 
    fields, and GA4GH AAI integration is desired, then add ga4gh_passport_v1 to 
    all those lists. If default config values are being used then no change 
    required. (#799)

## uc-cdis/cdis-data-client

#### Improvements
  - Add precommit hooks and sec baseline (#74)

## uc-cdis/guppy

#### Improvements
  - Guppy will NOT return the list of out-of-scope resources in its response to 
    the public (#95)
  - The list of out-of-scope resources will be printed into logs (#95)
  - Switch Guppy from using Arborist's `/auth/resources` endpoint to 
    `/auth/mapping` and filter out accessible list base on `read` access (#93)
  - Add precommit hooks and sec baseline (#94)

#### Breaking Changes
  - User can only see/query the data for a project if they have the following 
    access: method `read` (or `*` - all methods) to service `guppy` (or `*` - 
    all services) on that project resource. (previously they can see/query all 
    the data if you any types of access to them) (#93)

## uc-cdis/indexd

#### New Features
  - Added Bundle endpoints. (#267)
  - Added new table to store bundles. (#267)
  - `\index\` endpoint resolves bundle ids. (#267)
  - Added `form` parameter top `\index\` (without guid) to list either bundles, 
    indexd records or both. (#267)
  - DRS endpoint supports bundles. (#267)
  - DRS endpoint supports `expand` parameter. (#267)
  - Added tests for bundles. (#267)
  - Updated tests for DRS and Indexd (#267)

#### Bug Fixes
  - Fix ACL->authz migration script for "[ project, program ]" ACLs (#284)

#### Improvements
  - Black formatting on all files (#286)
  - Ensure all files ends with one newline (#286)
  - Add pre commit configuration for black, newlines, and detecting secrets 
    (along with a secrets baseline) (#286)
  - no trailing whitespace hook (#286)

#### Dependency Updates
  - Add sqlalchemy-utils upper bound "<=0.36.6" in addition to ">=0.33.11" 
    (#284)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#267)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#286)

## uc-cdis/data-portal

#### New Features
  - removes Internal from dictionary table (#720)

#### Bug Fixes
  - Fixed a bug causing login redirect to ditch query params in URL (#714)
  - Fixed a bug causing index bar chart to display inaccurate data due to 
    rounding (#704)

#### Improvements
  - Now handling an error case in the Indexing GUI where the Fence /data/upload 
    endpoint returns 500. (#715)
  - Values in a list is displayed properly by concatenating with `,` in 
    explorer table (#713)
  - Allow index buttons with long content to flex vertically to fit. (#712)
  - Add precommit hooks and sec baseline (#708)

## uc-cdis/sower

#### Bug Fixes
  - Unescape the encoding chars (#17)

## uc-cdis/sower-jobs

#### New Features
  - Add new sower job to merge bucket manifests using the SDK (#26)

#### Improvements
  - Add pre-commit (#25)

## uc-cdis/ssjdispatcher

#### Breaking Changes
  - Use service account for jobs dispatched by the service. Support backward 
    compatibility (#29)

#### Improvements
  - Add pre-commit (#28)

## uc-cdis/tube

#### Features
  - We can have one original fields being mapped to multiple properties (#131)

#### Bug Fixes
  - project_id is not in project node (#131)

## uc-cdis/gen3-fuse

#### New Features
  - enable gen3-fuse to work with mariner (#31)

#### Improvements
  - Add precommit hooks and sec baseline (#30)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#31)

## uc-cdis/indexs3client

#### New Features
  - support AWS_WEB_IDENTITY_TOKEN (#26)

#### Improvements
  - Add pre-commit (#25)

## uc-cdis/gen3-spark

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#14)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#13)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#12)

## uc-cdis/metadata-service

#### New Features
  - new /objects API with support for a generic data upload flow into a "data 
    lake" using fence/indexd behind the scenes (#7)

#### Improvements
  - capability of using tokens for authorization checks against arborist (#7)
  - refactoring of config and support for new gino version (#7)
  - new "global" async client (httpx.AsyncClient) for making requests via the 
    FastAPI app (accessible in requests via "request.app.async_client") (#7)

#### Dependency Updates
  - added respx for mocking httpx async requests for testing (#7)

