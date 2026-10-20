# Core Gen3 Release 2026.11 (Humite)
## uc-cdis/arborist

#### Bug Fixes
  - POST /auth/resources no longer allows an undocumented policies field in the 
    request body, and authorizedResources no longer accepts caller-supplied 
    policies at all - resource listing is always scoped to the caller's own 
    grants (username or client ID), including group, anonymous, and logged-in 
    membership. (Note: GET /auth/resources and /auth/request behavior is 
    unchanged; the policies field on /auth/request, a safe filter, is 
    untouched) ([#194](https://github.com/uc-cdis/arborist/pull/194))
  
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

#### Bug Fixes
  - Reverse the meaning of view=MINIMAL and view=BASIC ([#198](https://github.com/uc-cdis/gen3-workflow/pull/198)) 

#### Improvements
  - CI on Kind now supports running with network policies enabled. ([#197](https://github.com/uc-cdis/gen3-workflow/pull/197)) 
  - Add `ExpiredObjectDeleteMarker` bucket lifecycle configuration ([#194](https://github.com/uc-cdis/gen3-workflow/pull/194)) 
  - S3 data is now uploaded in streams instead of being buffered into memory to 
    avoid memory spikes. ([#192](https://github.com/uc-cdis/gen3-workflow/pull/192)) 

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
