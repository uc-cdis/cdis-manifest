# Core Gen3 Release 2026.11 (Humite)
## uc-cdis/arborist

#### Bug Fixes
  - Concurrent creates no longer return a misleading 500 ("may have been created OK"). ([#200](https://github.com/uc-cdis/arborist/pull/200))
  - Creating a child while its parent is being deleted no longer leaves an orphaned resource. ([#200](https://github.com/uc-cdis/arborist/pull/200))
  - Transactions that fail with a deadlock or serialization error are retried up to 3 times, then return 503 with Retry-After: 1. ([#200](https://github.com/uc-cdis/arborist/pull/200))
  - POST/PUT /resource return clearer status codes: 409 if the path is taken, 400 for an invalid path or missing parent,
    500 for database errors. Before, insert failures came back as 409 or 400 whatever the cause. ([#200](https://github.com/uc-cdis/arborist/pull/200))
  - PUT /resource now returns an error if updating the description or removing old subresources fails. Before, these failures were ignored. ([#200](https://github.com/uc-cdis/arborist/pull/200))
  - POST /auth/resources no longer allows an undocumented policies field in the 
    request body, and authorizedResources no longer accepts caller-supplied 
    policies at all - resource listing is always scoped to the caller's own 
    grants (username or client ID), including group, anonymous, and logged-in 
    membership. (Note: GET /auth/resources and /auth/request behavior is 
    unchanged; the policies field on /auth/request, a safe filter, is 
    untouched) ([#194](https://github.com/uc-cdis/arborist/pull/194))

#### Dependency Updates
  - go-authutils >= 0.2.3 ([#201](https://github.com/uc-cdis/arborist/pull/201))

#### Deployment changes
  - Run DB migration 2026-10-30T170000Z_resource_parent_lock. Deploy the code before or together with the migration: 
    the old code returns 500 instead of 400 for a missing parent once the migration is applied. ([#200](https://github.com/uc-cdis/arborist/pull/200))
  
## uc-cdis/data-portal

#### Bug Fixes
  - fix storybook ([#1881](https://github.com/uc-cdis/data-portal/pull/1881))

#### Dependency Updates
  - bump dompurify from 3.4.11 to 3.4.16 to fix XSS vulnerability 
    (SNYK-JS-DOMPURIFY-18593782 / CVE-2026-75838) ([#1885](https://github.com/uc-cdis/data-portal/pull/1885)) 
  - remove momentjs ([#1884](https://github.com/uc-cdis/data-portal/pull/1884))
  - added dayjs ([#1884](https://github.com/uc-cdis/data-portal/pull/1884))
  - update storybook ([#1881](https://github.com/uc-cdis/data-portal/pull/1881))
  - MSW to 2.15.0 ([#1881](https://github.com/uc-cdis/data-portal/pull/1881))
  - @xmldom/xmldom removed ([#1881](https://github.com/uc-cdis/data-portal/pull/1881)) 

## uc-cdis/fence

### New Features
  - Optional DPoP (RFC 9449) support for task tokens: when `DPOP_ENABLED` is true, 
    `POST /credentials/api/access_token` requires a valid DPoP proof (with nonce) for 
    task token requests and issues a key-bound access token with a `cnf.jkt` claim.([#1372](https://github.com/uc-cdis/fence/pull/1372))
  - DPoP nonce challenge flow: an invalid or missing nonce returns the RFC 9449 error 
    response plus a fresh `DPoP-Nonce` header so the client can retry.([#1372](https://github.com/uc-cdis/fence/pull/1372))
  - New `DPOP_SHARED_SECRET`, which must be identical across all Gen3 services that 
    participate in DPoP. `DPOP_SHARED_SECRET` can be supplied via environment variable.([#1372](https://github.com/uc-cdis/fence/pull/1372))

#### Breaking Changes
  - IdP login callbacks (`/login/<idp>/login`) now require the OAuth `state` 
    issued by `/login/<idp>` in the same session. Logins that start at 
    `/login/<idp>` with an RFC 6749-compliant IdP are unaffected. Callers that 
    hit the callback directly or build their own IdP authorization URLs will 
    get a 401 b/c state is now (correctly) required ([#1386](https://github.com/uc-cdis/fence/pull/1386)) 
  - Uploading to an existing GUID (`/data/upload`, `/data/multipart/init`) now 
    requires `write-storage` on that record's `authz`; records with no `authz` 
    (ACL-only) can only be re-uploaded by their original `uploader` ([#1386](https://github.com/uc-cdis/fence/pull/1386)) 
  - If DPoP is enabled on, Task Tokens now require DPoP flow and issues DPoP-Bound Task Tokens([#1372](https://github.com/uc-cdis/fence/pull/1372))

#### Bug Fixes
  - Security fixes: all-of `authz` checks on bulk DRS access, record `authz` 
    checks on uploads to an existing GUID, account-state checks and issuer 
    allowlisting on passports, redirect allowlist bypass via `//host`, token 
    revocation across keypairs, passport cache isolation, usersync SFTP 
    filename handling, and signing keys leaking into the Docker image. ([#1386](https://github.com/uc-cdis/fence/pull/1386)) 
  - Misc fixes in `/register`, `/oauth2/authorize` `prompt=login`, and 
    certificate upload. ([#1386](https://github.com/uc-cdis/fence/pull/1386))
  - The `indexd_admin` policy still referenced a deprecated resource for the 
    indexd service (`/programs`). This PR updates the resource in the policy to 
    use the indexd admin subresource under services (`/services/indexd/admin`). 
    The [code describing the reason for this change is 
    here](https://github.com/uc-cdis/indexd/blob/master/indexd/auth/drivers/alchemy.py#L145-L154)
    ([#1387](https://github.com/uc-cdis/fence/pull/1387))
  - generate and validate state during linking flow with Google ([#1381](https://github.com/uc-cdis/fence/pull/1381)) 
  - The expiration of refresh token is now being set by using the `exp` value 
    from the refresh token (if any), or the `default_refresh_token_exp` value 
    ([#1376](https://github.com/uc-cdis/fence/pull/1376))
  - `validate_jwt` no longer performs JWKS key discovery against an unverified `iss`: the issuer is
    checked against the configured allowlist first, and requests with no configured issuers are 
    rejected instead of triggering an outbound request.([#1372](https://github.com/uc-cdis/fence/pull/1372))
  - Fix browser discarding cookie well before the JWT in the cookie expires. Cookie expiration time
    drift caused by incorrect logic for advancing expiration time([#1383](https://github.com/uc-cdis/fence/pull/1383))

#### Improvements
  - Removed the temporary Prometheus FIXME from the Dockerfile. Fence now 
    inherits `PROMETHEUS_MULTIPROC_DIR` and the metrics directory from the 
    `3.13-pythonnginx` base image (uc-cdis/base-images#81). ([#1385](https://github.com/uc-cdis/fence/pull/1385)) 
  - Tests for DPoP-bound token issuance on `/credentials/api/access_token` (enabled/disabled, mi retry)
    and for the issuer allowlist check in `validate_jwt`.([#1372](https://github.com/uc-cdis/fence/pull/1372))

#### Dependency Updates
  - relock `poetry.lock`. ([#1386](https://github.com/uc-cdis/fence/pull/1386))
  - `authutils` to get DPoP support([#1372](https://github.com/uc-cdis/fence/pull/1372))

#### Deployment changes
  - To use DPoP Task Tokens, set `DPOP_ENABLED: true` and set `DPOP_SHARED_SECRET` (e.g. `openssl rand -base64 64`)
    to the same value in every service doing DPoP validation. Fence will refuse to start if DPoP is enabled 
    without the secret.([#1372](https://github.com/uc-cdis/fence/pull/1372))

## uc-cdis/gen3-user-data-library

#### Bug Fixes
  - Fixes issue where the lists auth resource was incorrectly checked during 
    CRUD operations. ([#86](https://github.com/uc-cdis/gen3-user-data-library/pull/86)) 

#### Improvements
  - Addresses TODOs related to readability ([#86](https://github.com/uc-cdis/gen3-user-data-library/pull/86)) 
  - Removes unused code. ([#86](https://github.com/uc-cdis/gen3-user-data-library/pull/86)) 

## uc-cdis/gen3-workflow

#### New Features
  - Reject S3 requests made by a client on behalf of a user (e.g. calls from 
    Funnel workers) ([#194](https://github.com/uc-cdis/gen3-workflow/pull/194))
  - When a task completed less than 12h ago (configurable), check if all the 
    output files are up to date in the user's bucket. If not, revert the task 
    state to "running" state until the outputs are ready; wait up to 3h 
    (configuble). ([#194](https://github.com/uc-cdis/gen3-workflow/pull/194))
  - DPoP (RFC 9449) proof-of-possession on the GA4GH TES and S3 endpoints, 
    configured through DPOP_REQUIRED, DPOP_EXEMPT_CLIENT_IDS, DPOP_ALLOWED_ISSUERS, 
    DPOP_EXTERNAL_BASE_URL and DPOP_PROTECTED_PATHS. ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))
  - Optional OpenTelemetry tracing (ENABLE_TRACING), Pyroscope continuous profiling 
    (ENABLE_CONTINUOUS_PROFILING), and Prometheus request count and duration metrics 
    for every endpoint. ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))
  - DEBUG_STUB_EXTERNAL_SERVICES debug mode, which stubs the TES, S3 and storage 
    endpoints so auth flows can be tested without Funnel or AWS while still authorizing 
    against Arborist. ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))

#### Breaking Changes
  - DPoP is required by default: TES and S3 requests without a DPoP-bound token 
    and a valid proof are rejected, except client_credentials tokens from clients 
    listed in DPOP_EXEMPT_CLIENT_IDS. ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))
  - The gen3_workflow_tasks_created metric now only counts successful task 
    creations and is labeled by status_code only. ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))

#### Bug Fixes
  - Reverse the meaning of view=MINIMAL and view=BASIC ([#198](https://github.com/uc-cdis/gen3-workflow/pull/198))
  - add tag_key and tag_value to funnel task query to get only tasks for user.
    Optional all flag allows getting all tasks in funnel query. ([#187](https://github.com/uc-cdis/gen3-workflow/pull/187)) 

#### Improvements
  - S3 endpoint: validate 'x-amz-copy-source' header ([#199](https://github.com/uc-cdis/gen3-workflow/pull/199))
  - S3 endpoint: return errors as XML so details can be parsed by S3 tools
    and returned to users. ([#199](https://github.com/uc-cdis/gen3-workflow/pull/199))
  - CI on Kind now supports running with network policies enabled. ([#197](https://github.com/uc-cdis/gen3-workflow/pull/197)) 
  - Add `ExpiredObjectDeleteMarker` bucket lifecycle configuration ([#194](https://github.com/uc-cdis/gen3-workflow/pull/194)) 
  - S3 data is now uploaded in streams instead of being buffered into memory to 
    avoid memory spikes. ([#192](https://github.com/uc-cdis/gen3-workflow/pull/192))
  - Logs are JSON by default (set ENABLE_JSON_LOGS: false for plain text). ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))
  - The service runs a single uvicorn worker per container instead of gunicorn, 
    and shuts down gracefully on SIGTERM. ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))

#### Dependency Updates
  - Replaced cdislogging with gen3logging, removed gunicorn, added opentelemetry-instrumentation-botocore, 
    and updated authutils (DPoP support) and cdispyutils (observability extra). ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))

#### Deployment changes
  - Set DPOP_SHARED_SECRET (config or environment variable) to the same value as Fence's DPOP_SHARED_SECRET, 
    or set DPOP_REQUIRED: false, otherwise the service fails to start. ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))
  - Add any client that calls the TES endpoints with a client_credentials token to DPOP_EXEMPT_CLIENT_IDS, 
    or its requests are rejected. ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))
  - N_WORKERS (helm nWorkers) is no longer used: scale with replicas instead. ([#190](https://github.com/uc-cdis/gen3-workflow/pull/190))

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [brace-expansion](https://github.com/juliangruber/brace-expansion) 
    from 1.1.18 to 1.1.21. ([#409](https://github.com/uc-cdis/guppy/pull/409))
  - Bumps [fast-uri](https://github.com/fastify/fast-uri) from 3.1.7 to 3.1.8. 
    ([#408](https://github.com/uc-cdis/guppy/pull/408))
  - remove momentjs ([#406](https://github.com/uc-cdis/guppy/pull/406))
  - added dayjs ([#406](https://github.com/uc-cdis/guppy/pull/406))

## uc-cdis/metadata-service

#### Improvements
  - update openapi doc to show alias and object GUID deletion would return 204 
    on success ([#194](https://github.com/uc-cdis/metadata-service/pull/194))

## uc-cdis/requestor

#### New Features
  - Creating an access request for another user requires `create` access on 
    `/requestor/on_behalf/<username>`, or on `/requestor/on_behalf` for any user([#89](https://github.com/uc-cdis/requestor/pull/89))

#### Breaking Changes
  - Callers without an on-behalf policy can only create access requests for 
    themselves, which affects integrations that file requests for other users,
    including admin revocation requests([#89](https://github.com/uc-cdis/requestor/pull/89))
  - `POST /request` returns 400 for a `status` that is not in `ALLOWED_REQUEST_STATUSES`([#89](https://github.com/uc-cdis/requestor/pull/89))

#### Bug fixes
  - PUT `/request/{request_id}` commits the status change before post-status-update actions
    run, releasing the row lock([#89](https://github.com/uc-cdis/requestor/pull/89))

#### Improvements
  - A revoke request for a user who does not have the policy is rejected when it is approved
    instead of when it is created, so creating one no longer reveals the user's access([#89](https://github.com/uc-cdis/requestor/pull/89))

#### Dependency updates
  - Updated locked dependencies([#89](https://github.com/uc-cdis/requestor/pull/89))

#### Deployment changes
  - Grant create on `/requestor/on_behalf` (or `/requestor/on_behalf/<username>`) to any user
    or client that files access requests for other users; see docs/on_behalf_authz.md([#89](https://github.com/uc-cdis/requestor/pull/89))

## uc-cdis/workspace-token-service

#### Improvements
  - Bind gunicorn to 127.0.0.1:8000 so all requests go through the in-container nginx (port 80). ([#161](https://github.com/uc-cdis/workspace-token-service/pull/161))
  - Add a unit test for the k8s plugin's client address handling behind nginx ([#161](https://github.com/uc-cdis/workspace-token-service/pull/161))
  - Document the nginx/gunicorn layout in the README ([#161](https://github.com/uc-cdis/workspace-token-service/pull/161))

#### Deployment changes
  - gunicorn now only listens on 127.0.0.1:8000 inside the container. Anything that connects 
    to the WTS container on port 8000 directly must use port 80 instead. The gen3-helm Service 
    and liveness/readiness probes already use port 80, so no chart changes are needed. ([#161](https://github.com/uc-cdis/workspace-token-service/pull/161))
