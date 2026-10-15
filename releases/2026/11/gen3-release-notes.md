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
  - Replaces SQL string interpolation with bound query parameters in 
    authorizedResources, selectInStmt, and subresource pruning, closing 
    injection via policy names, group users/policies, and role IDs. ([#193](https://github.com/uc-cdis/arborist/pull/193)) 

#### Improvements
  - Adds injection regression tests on /auth/resources, POST /group, and POST 
    /policy, each verified to fail on the pre-change code ([#193](https://github.com/uc-cdis/arborist/pull/193)) 

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

#### Breaking Changes
  - IdP login callbacks (`/login/<idp>/login`) now require the OAuth `state` 
    issued by `/login/<idp>` in the same session. Logins that start at 
    `/login/<idp>` with an RFC 6749-compliant IdP are unaffected. Callers that 
    hit the callback directly or build their own IdP authorization URLs will 
    get a 401 b/c state is now (correctly) required ([#1386](https://github.com/uc-cdis/fence/pull/1386)) 
  - Uploading to an existing GUID (`/data/upload`, `/data/multipart/init`) now 
    requires `write-storage` on that record's `authz`; records with no `authz` 
    (ACL-only) can only be re-uploaded by their original `uploader` ([#1386](https://github.com/uc-cdis/fence/pull/1386)) 

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

#### Improvements
  - Removed the temporary Prometheus FIXME from the Dockerfile. Fence now 
    inherits `PROMETHEUS_MULTIPROC_DIR` and the metrics directory from the 
    `3.13-pythonnginx` base image (uc-cdis/base-images#81). ([#1385](https://github.com/uc-cdis/fence/pull/1385)) 

#### Dependency Updates
  - relock `poetry.lock`. ([#1386](https://github.com/uc-cdis/fence/pull/1386))

#### Example Output:
  - After 1st renewal (buggy): ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - JWT exp in cookie value : 1789780898 ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - Cookie Expires attribute: 1789779096 ← old token's exp ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - Drift : 1802s ← grows with each renewal ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - After 2nd renewal (buggy): ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - JWT exp in cookie value : 1789782700 ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - Cookie Expires attribute: 1789779096 ← still the original exp! ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - Drift : 3604s ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - After 1st renewal (fixed): ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - JWT exp in cookie value : 1789780898 ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - Cookie Expires attribute: 1789780898 ← always in sync ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - Drift : 0s ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - ## Fix Applied ([#1383](https://github.com/uc-cdis/fence/pull/1383))
  - In get_updated_token(), after signing the new JWT, the decoded payload is 
    synced back into self.session_token: ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - ```python ([#1383](https://github.com/uc-cdis/fence/pull/1383))
  - self.session_token = jwt.decode( ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - token, ([#1383](https://github.com/uc-cdis/fence/pull/1383))
  - algorithms=["RS256"], ([#1383](https://github.com/uc-cdis/fence/pull/1383))
  - options={"verify_signature": False}, ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 
  - ) ([#1383](https://github.com/uc-cdis/fence/pull/1383))
  - ``` ([#1383](https://github.com/uc-cdis/fence/pull/1383))
  - Signature verification is intentionally skipped here — the token was just 
    signed by this process, so re-verifying would be redundant. ([#1383](https://github.com/uc-cdis/fence/pull/1383)) 

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
    from 1.1.18 to 1.1.21. (#409)
  - Bumps [fast-uri](https://github.com/fastify/fast-uri) from 3.1.7 to 3.1.8. 
    (#408)
  - remove momentjs ([#406](https://github.com/uc-cdis/guppy/pull/406))
  - added dayjs ([#406](https://github.com/uc-cdis/guppy/pull/406))

#### Bug Fixes
  - fixed a bug of generate test data script didn't produce correct mock data 
    ([#405](https://github.com/uc-cdis/guppy/pull/405))

#### Improvements
  - apply tiered access hide number resolver to total count and cardinal count 
    queries on aggregation histograms ([#405](https://github.com/uc-cdis/guppy/pull/405)) 

## uc-cdis/indexd

#### Improvements
  - fix unauthenticated blind SQL injection in the single-table driver ([#459](https://github.com/uc-cdis/indexd/pull/459)) 

#### Dependency Updates
  - gitpython to ^3.1.60 ([#460](https://github.com/uc-cdis/indexd/pull/460))

## uc-cdis/metadata-service

#### Improvements
  - update openapi doc to show alias and object GUID deletion would return 204 
    on success ([#194](https://github.com/uc-cdis/metadata-service/pull/194))

## uc-cdis/peregrine

#### Bug Fixes
  - Fixes input validation where nodes were not validated when hitting the ` 
    /api/search/datasets/?nodes=` endpoint, allowing the querying of 
    non-existent nodes. ([#273](https://github.com/uc-cdis/peregrine/pull/273))

## uc-cdis/sheepdog

#### Bug Fixes
  - explicitly filter project to restrict IDs on project-specific entity 
    endpoint ([#476](https://github.com/uc-cdis/sheepdog/pull/476))

