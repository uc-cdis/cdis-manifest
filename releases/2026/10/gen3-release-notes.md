# Core Gen3 Release 2026.10 (Holtite)
## uc-cdis/arborist

#### Bug Fixes
  - Replaces SQL string interpolation with bound query parameters in
    authorizedResources, selectInStmt, and subresource pruning, closing
    injection via policy names, group users/policies, and role IDs.
    ([#193](https://github.com/uc-cdis/arborist/pull/193))

#### Improvements
  - Adds injection regression tests on /auth/resources, POST /group,
    and POST /policy, each verified to fail on the pre-change code
    ([#193](https://github.com/uc-cdis/arborist/pull/193))

## uc-cdis/audit-service

#### Dependency Updates
  - cryptography to 50.0.1 ([#111](https://github.com/uc-cdis/audit-service/pull/111)) 

## uc-cdis/cloud-automation

#### Improvements
  - add *.pytorch.org to whitelist ([#2887](https://github.com/uc-cdis/cloud-automation/pull/2887)) 
  - Added .xsede.org to whitelist. ([#2884](https://github.com/uc-cdis/cloud-automation/pull/2884)) 
  - BiocManager::install() for R/Bioconductor packages fails inside the 
    workspace because Bioconductor redirects package index and archive requests 
    to mghp.osn.xsede.org, which hosts Bioconductor's package archive on the 
    XSEDE Open Storage Network. ([#2884](https://github.com/uc-cdis/cloud-automation/pull/2884)) 

## uc-cdis/data-portal

#### Dependency Updates
  - update svgo to 2.8.4 ([#1880](https://github.com/uc-cdis/data-portal/pull/1880)) 
  - guppy 0.24.0 ([#1876](https://github.com/uc-cdis/data-portal/pull/1876))
  - body-parser 1.20.6 2.3.0 ([#1876](https://github.com/uc-cdis/data-portal/pull/1876)) 
  - js-yaml@3.15.0 to js-yaml@3.15.1 ([#1875](https://github.com/uc-cdis/data-portal/pull/1875)) 
  - js-yaml@4.3.0 to js-yaml@4.3.1 ([#1875](https://github.com/uc-cdis/data-portal/pull/1875)) 
  - browserslist 4.28.4 --> 4.28.8 ([#1872](https://github.com/uc-cdis/data-portal/pull/1872)) 
  - postcss 8.5.15 -> 8.5.26 ([#1869](https://github.com/uc-cdis/data-portal/pull/1869)) 
  - override nanoid to ^3.3.18 ([#1871](https://github.com/uc-cdis/data-portal/pull/1871)) 
  - bump fast-uri to ^3.1.5 ([#1870](https://github.com/uc-cdis/data-portal/pull/1870)) 

## uc-cdis/fence

#### Breaking Changes
  - Not really breaking: but note that sessions by default now have a small 
    (configurable) threshold where they will renew access tokens early to avoid 
    a short period where frontends may not have a valid token during an 
    expired->refresh flow (how it was before). If you do NOT want this, you can 
    set the new config `ACCESS_TOKEN_RENEWAL_THRESHOLD` to `0` for the old 
    behavior. ([#1371](https://github.com/uc-cdis/fence/pull/1371))

#### Bug Fixes
  - Fix issue where bulk presigned-urls would not generate for policies 
    containing wildcard permissions ([#1369](https://github.com/uc-cdis/fence/pull/1369)) 

#### Improvements
  - Sessions by default now have a small (configurable) threshold where they 
    will renew access tokens early to avoid a short period where frontends may 
    not have a valid token during an expired->refresh flow (how it was before) 
    ([#1371](https://github.com/uc-cdis/fence/pull/1371))

#### Dependency Updates
  - cryptography to >=50.0.0 ([#1377](https://github.com/uc-cdis/fence/pull/1377)) 
  - Bumping dependency `gen3authz` to the newest release, v 3.1.2 ([#1374](https://github.com/uc-cdis/fence/pull/1374)) 

#### Deployment Changes
  - User sessions managed by Fence by default now have a small (configurable) 
    threshold where they will renew access tokens early to avoid a short period 
    where frontends may not have a valid token during an expired->refresh flow 
    (how it was before). If you do NOT want this, you can set the new Fence 
    config `ACCESS_TOKEN_RENEWAL_THRESHOLD` to `0` for the old behavior. 
    ([#1371](https://github.com/uc-cdis/fence/pull/1371))

## uc-cdis/gen3-user-data-library

#### Improvements
  - Correct some misleading docs about how authz works ([#85](https://github.com/uc-cdis/gen3-user-data-library/pull/85)) 

## uc-cdis/gen3-workflow

#### New Features
  - Support "list buckets" S3 requests instead of returning a 400 error ([#191](https://github.com/uc-cdis/gen3-workflow/pull/191)) 
  - Support "legal-hold" requests to prevent S3 file deletion ([#191](https://github.com/uc-cdis/gen3-workflow/pull/191)) 

#### Improvements
  - Fix S3 endpoint "should retry" logic ([#191](https://github.com/uc-cdis/gen3-workflow/pull/191)) 

## uc-cdis/guppy

#### Bug Fixes
- fixed a bug of generate test data script didn't produce correct mock data ([#405](https://github.com/uc-cdis/guppy/pull/405))

#### Improvements
- apply tiered access hide number resolver to total count and cardinal count
  queries on aggregation histograms ([#405](https://github.com/uc-cdis/guppy/pull/405))

#### Dependency Updates
  - Update most dependencies ([#404](https://github.com/uc-cdis/guppy/pull/404))
  - node to 24 ([#404](https://github.com/uc-cdis/guppy/pull/404))
  - express to 5 ([#404](https://github.com/uc-cdis/guppy/pull/404))
  - storybook to 10 ([#404](https://github.com/uc-cdis/guppy/pull/404))
  - Bumps [browserslist](https://github.com/browserslist/browserslist) from 
    4.28.4 to 4.28.8. ([#403](https://github.com/uc-cdis/guppy/pull/403))
  - fast-uri nanoid brace-expansion ([#401](https://github.com/uc-cdis/guppy/pull/401)) 

## uc-cdis/hatchery

#### Changes
  - Remove the /allCosts route registration from RegisterHatchery ([#167](https://github.com/uc-cdis/hatchery/pull/167))
  - Remove the allCosts handler ([#167](https://github.com/uc-cdis/hatchery/pull/167))
  - Remove the PodCostInfo and CostSummary types, which were only used by that handler ([#167](https://github.com/uc-cdis/hatchery/pull/167))
  - Drop the now-unused metav1 and kubernetes imports from hatchery.go ([#167](https://github.com/uc-cdis/hatchery/pull/167))

#### Improvements
  - The squashfs sidecar path referenced a PersistentVolumeClaim 
    ("software-library-pvc" by default) that nothing ever created, so pods 
    would sit in Pending with a "persistentvolumeclaim not found" event unless 
    the claim had been provisioned out of band. ([#162](https://github.com/uc-cdis/hatchery/pull/162)) 
  - Add ensureSoftwareLibraryPVAndPVC, which creates a read-only Mountpoint-S3 
    PV and its bound PVC on demand, reusing the existing 
    createMountpointS3PVAndPVC helper. It is idempotent because the claim is 
    shared by every workspace pod in the namespace: an existing PVC is reused, 
    a NotFound triggers creation, and a concurrent creation that loses the race 
    is treated as success. A stale cluster-scoped PV left by a previous run is 
    removed first, since it would otherwise block the new claim from binding. 
    ([#162](https://github.com/uc-cdis/hatchery/pull/162))
  - The bucket and region default to the top-level s3-config values, with 
    per-app overrides available via squashfs_mount.bucket_name and 
    squashfs_mount.region. A new bucket_prefix option is mapped to the 
    Mountpoint "prefix=" mount option so the .sqsh file can live in a 
    subdirectory; it becomes the root of /image in the sidecar, so source_sqsh 
    is resolved relative to it. ([#162](https://github.com/uc-cdis/hatchery/pull/162))

#### Notes
  - Pricing config (Config.Config.Pricing) is left intact — it is still used by hatchery/costTracker.go. ([#167](https://github.com/uc-cdis/hatchery/pull/167))
  - Per-pod cost accounting remains available through the authenticated pay-model endpoints and the cost tracker. ([#167](https://github.com/uc-cdis/hatchery/pull/167))
  - go build ./... and go vet ./hatchery/ both pass. ([#167](https://github.com/uc-cdis/hatchery/pull/167))

## uc-cdis/indexd

#### Bug Fixes
  - Update drs endpoint /open behavior when DRS_AUTHORIZATION_METADATA has an 
    entry. ([#458](https://github.com/uc-cdis/indexd/pull/458))

#### Improvements
  - Removes redundant endpoints from DRS blueprint ([#455](https://github.com/uc-cdis/indexd/pull/455)) 

#### Dependency Updates
  - Cryptography upgrade to 50.0.0 ([#456](https://github.com/uc-cdis/indexd/pull/456)) 

## uc-cdis/manifestservice

#### Dependency Updates
  - Cryptography upgrade to 50.0.0 ([#92](https://github.com/uc-cdis/manifestservice/pull/92)) 

## uc-cdis/metadata-service

#### New Features
  - New feature flag `FORCE_AUTHZ_CHECK_FOR_METADATA_QUERIES` that can be used 
    to enforce an Authorization check for the MDS metadata query endpoints. 
    ([#190](https://github.com/uc-cdis/metadata-service/pull/190))

#### Bug Fixes
  - the `DEBUG` config option now controls general log output level and fastapi 
    error trace detail level ONLY. Previously it was controlling security 
    settings and the `URL_PREFIX`... ([#190](https://github.com/uc-cdis/metadata-service/pull/190)) 
  - the security settings for testing, previously controlled by `DEBUG` are now 
    controlled by a new config option `TESTING_WITH_DISABLED_AUTHZ`, which is 
    `False` by default. ([#190](https://github.com/uc-cdis/metadata-service/pull/190)) 

#### Improvements
  - dropped `URL_PREFIX` config option. In practice (real gen3 deployments with 
    gen3-helm), this does not seem to have any effect or real value, as 
    revproxy config already achieves the /mds prefix. ([#190](https://github.com/uc-cdis/metadata-service/pull/190)) 

#### Dependency Updates
  - authutils to 8.0.1 ([#193](https://github.com/uc-cdis/metadata-service/pull/193)) 
  - joserfc to 1.7.5 ([#193](https://github.com/uc-cdis/metadata-service/pull/193)) 
  - Cryptography upgrade to 50.0.0 ([#192](https://github.com/uc-cdis/metadata-service/pull/192)) 

#### Deployment Changes
  - If feature is desired, add `FORCE_AUTHZ_CHECK_FOR_METADATA_QUERIES=True` to 
    config ([#190](https://github.com/uc-cdis/metadata-service/pull/190))

## uc-cdis/peregrine

#### Bug Fixes
  - Fixes input validation where nodes were not validated when hitting the
    /api/search/datasets/?nodes= endpoint, allowing the querying of
    non-existent nodes. ([#273](https://github.com/uc-cdis/peregrine/pull/273))

#### Dependency Updates
  - cryptography >= 50.0.0 ([#272](https://github.com/uc-cdis/peregrine/pull/272)) 

## uc-cdis/sheepdog

#### Bug Fixes
- explicitly filter project to restrict IDs on project-specific entity endpoint ([#476](https://github.com/uc-cdis/sheepdog/pull/476))

#### Dependency Updates
  - authutils >= 8.0.1 ([#475](https://github.com/uc-cdis/sheepdog/pull/475))

## uc-cdis/sower-jobs

#### New Features
  - Add sower job for user data library list export ([#79](https://github.com/uc-cdis/sower-jobs/pull/79)) 

## uc-cdis/tube

#### Dependency Updates
  - bump cryptography to 50.0.0 ([#318](https://github.com/uc-cdis/tube/pull/318)) 

## uc-cdis/workspace-token-service

#### Dependency Updates
  - aiohttp = ">=3.14.3" ([#157](https://github.com/uc-cdis/workspace-token-service/pull/157)) 
  - cryptography = ">=50.0.0" ([#157](https://github.com/uc-cdis/workspace-token-service/pull/157)) 
  - Flask moved from 2.2.5 to 3.1.3 ([#156](https://github.com/uc-cdis/workspace-token-service/pull/156)) 
  - Flask-SQLAlchemy moved from 2.3.0 to 3.0.0 ([#156](https://github.com/uc-cdis/workspace-token-service/pull/156)) 
  - SQLAlchemy moved from 1.4 to 1.4.18 ([#156](https://github.com/uc-cdis/workspace-token-service/pull/156)) 

