# Core Gen3 Release 2026.09 (Hessonite)
## uc-cdis/cloud-automation

#### Improvements
  - Added website to squid whitelist to unblock Pim ([#2881](https://github.com/uc-cdis/cloud-automation/pull/2881)) 

## uc-cdis/cohort-middleware

#### Breaking Changes
  - Adjusted `CurrentTeamProjectAccessible` to be a boolean in endpoint 
    returning list of sources ([#142](https://github.com/uc-cdis/cohort-middleware/pull/142)) 
  - The `/data-dictionary/` endpoints where adjusted to require a sourceId as a 
    parameter ([#142](https://github.com/uc-cdis/cohort-middleware/pull/142))

#### Bug Fixes
  - missing `deleted_date is null` constraint in one of the source queries 
    ([#145](https://github.com/uc-cdis/cohort-middleware/pull/145))

#### Improvements
  - Adding extra authorization checks to endpoints, to ensure the endpoints can 
    only be called if the user (or its "teamproject") has the right 
    `cohortdefinition:*:generate...:get` permission to access the source ([#142](https://github.com/uc-cdis/cohort-middleware/pull/142)) 
  - all endpoints that return some data / aggregated data for a source CDM DB 
    now enforce access rights through this authorization check ([#142](https://github.com/uc-cdis/cohort-middleware/pull/142)) 
  - Added extra test data to test DB used by model tests + added new tests to 
    improve coverage ([#142](https://github.com/uc-cdis/cohort-middleware/pull/142)) 

## uc-cdis/data-portal

#### Improvements
  - remove COVID19Dashbord standalone ([#1849](https://github.com/uc-cdis/data-portal/pull/1849)) 
  - allow ticket creation to use zendesk wrapper ([#1837](https://github.com/uc-cdis/data-portal/pull/1837)) 

#### Dependency Updates
  - "linkify-it": "^5.0.2" ([#1865](https://github.com/uc-cdis/data-portal/pull/1865)) 
  - "markdown-it": "^14.1.1", ([#1865](https://github.com/uc-cdis/data-portal/pull/1865)) 
  - Upgrade to Relay 14. Relay 13+ does not have the `immutable` dependency, 
    which addresses ticket. ([#1863](https://github.com/uc-cdis/data-portal/pull/1863)) 
  - Important changes: ([#1863](https://github.com/uc-cdis/data-portal/pull/1863)) 
  - top level `"relay"` key/config added to package.json. ([#1863](https://github.com/uc-cdis/data-portal/pull/1863)) 
  - Relay 14 requires SDL. Extracted the JSON -> SDL conversion logic from 
    `getSchema.js` into a standalone `generateSchemaSDL.js `module so it can be 
    run at build time. ([#1863](https://github.com/uc-cdis/data-portal/pull/1863)) 
  - Relay 13+ turns `fetchQuery` from Promise to Observable so `.then(...)` is 
    no longer a function on the result. Updated to insert `.toPromise().` 
    ([#1863](https://github.com/uc-cdis/data-portal/pull/1863))
  - js-yaml 4.2.0 -> 4.3.0, 3.14.2-> 3.15.0 ([#1859](https://github.com/uc-cdis/data-portal/pull/1859)) 
  - brace-expansion 1.1.15 -> 1.1.18, 2.1.1 -> 2.1.4 ([#1856](https://github.com/uc-cdis/data-portal/pull/1856)) 
  - fast-uri to 3.1.4 ([#1843](https://github.com/uc-cdis/data-portal/pull/1843)) 
  - Update Grafana Faro related package from V1 to V2 ([#1838](https://github.com/uc-cdis/data-portal/pull/1838)) 

## uc-cdis/fence

#### Bug Fixes
  - Fix authz check when requesting a task token ([#1366](https://github.com/uc-cdis/fence/pull/1366)) 

## uc-cdis/gen3-workflow

#### New Features
  - Add support for the `_IMAGE_PULL_POLICY` tag (can be set to one of 
    "Always", "IfNotPresent") ([#175](https://github.com/uc-cdis/gen3-workflow/pull/175)) 
  - Gen3Workflow now supports creation of AWS resources related to Amazon 
    S3Files and shares a file system id as a part of `/storage/setup` response. 
    ([#170](https://github.com/uc-cdis/gen3-workflow/pull/170))
  - Make `gen3` as the default audience for access token validation ([#163](https://github.com/uc-cdis/gen3-workflow/pull/163)) 

#### Breaking Changes
  - Gen3Workflow integration tests on kind strictly work with 
    `gen3-helm/funnel` chart `version >= 0.1.29` ([#166](https://github.com/uc-cdis/gen3-workflow/pull/166)) 

#### Bug Fixes
  - Fix bug: empty output files when downloaded by Nextflow (through the AWS 
    SDK for Java) ([#183](https://github.com/uc-cdis/gen3-workflow/pull/183))
  - Fix `x-amz-server-side-encryption header is not supported for this 
    operation` errors during some multipart uploads ([#181](https://github.com/uc-cdis/gen3-workflow/pull/181)) 
  - Fix "Object of type HTTPException is not JSON serializable" error when 
    using an expired access token ([#171](https://github.com/uc-cdis/gen3-workflow/pull/171)) 
  - Fix S3 proxy for Nextflow workflows against Minio ([#169](https://github.com/uc-cdis/gen3-workflow/pull/169)) 

#### Improvements
  - Update the `DELETE /storage/user-bucket` and `DELETE 
    /storage/user-bucket/objects` endpoints to support deleting versions and 
    incomplete multipart uploads ([#174](https://github.com/uc-cdis/gen3-workflow/pull/174)) 

#### Dependency Updates
  - Update authutils to `>=8.0.0` ([#163](https://github.com/uc-cdis/gen3-workflow/pull/163)) 

#### Deployment Changes
  - Linked PRs -- ([#166](https://github.com/uc-cdis/gen3-workflow/pull/166))
  - 1. Gen3 Helm PR with the helm chart change -- 
    https://github.com/uc-cdis/gen3-helm/pull/637 ([#166](https://github.com/uc-cdis/gen3-workflow/pull/166)) 
  - 2. Gen3 code vigil PR for a test run with this override config -- 
    https://github.com/uc-cdis/gen3-code-vigil/pull/606 ([#166](https://github.com/uc-cdis/gen3-workflow/pull/166)) 

## uc-cdis/guppy

#### Dependency Updates
  - js-yaml to 5.2.2 ([#397](https://github.com/uc-cdis/guppy/pull/397))
  - js-yaml 4.1.0 -> 4.3.0 ([#396](https://github.com/uc-cdis/guppy/pull/396))
  - Bumps [svgo](https://github.com/svg/svgo) from 2.8.2 to 2.8.3. ([#395](https://github.com/uc-cdis/guppy/pull/395))
  - update `brace-expansion` and `fast-uri` ([#392](https://github.com/uc-cdis/guppy/pull/392)) 

## uc-cdis/hatchery

#### New Features
  - check if .keep file exist before creating ([#160](https://github.com/uc-cdis/hatchery/pull/160)) 

## uc-cdis/indexd

#### New Features
  - Updates indexd DRS to allow for a configurable default preferred_type, 
    allowing DRS Servers to set the precedence of credentials that should 
    be tried by DRS Clients. ([#454](https://github.com/uc-cdis/indexd/pull/454))
  - Updates indexd DRS to allow for a per-authz preferred_type, allowing DRS Servers to override
    the default preferred_type for specific authz resource paths. ([#454](https://github.com/uc-cdis/indexd/pull/454))

#### Dependency Updates
  - Update authutils to `>=8.0.0` ([#449](https://github.com/uc-cdis/indexd/pull/449)) 

#### Deployment Changes
  - DEFAULT_PREFERRED_TYPE environment variable can be set to configure all 
    authz resource paths to have a preferred supported type. ([#454](https://github.com/uc-cdis/indexd/pull/454)) 
  - DRS_AUTHORIZATION_METADATA environment variable is updated to allow each 
    resource path to have a preferred support type. See 
    https://github.com/uc-cdis/gen3-helm/pull/671 ([#454](https://github.com/uc-cdis/indexd/pull/454)) 

## uc-cdis/metadata-service

#### Improvements
  - Add information to documentation about what user.yaml 
    resources/roles/policies are required for managing an MDS. ([#166](https://github.com/uc-cdis/metadata-service/pull/166)) 

## uc-cdis/peregrine

#### New Features
  - Make `gen3` as the default audience for access token validation ([#271](https://github.com/uc-cdis/peregrine/pull/271)) 

#### Dependency Updates
  - Update authutils to `>=8.0.0` ([#271](https://github.com/uc-cdis/peregrine/pull/271)) 

