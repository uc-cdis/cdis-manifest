# Core Gen3 Release (Streeterville)

## uc-cdis/arborist

#### Dependency Updates
  - Change go-authutils dependency from branch to tag (#132)

#### New Features
  - Added new endpoint `/bulk/policy` to create new policies in bulk (#131)
  - Added new endpoint `/user/{username}/bulk/policy` to update policies for a 
    user in bulk (#131)

## uc-cdis/fence

#### New Features
  - email of monitor service account added to error msg (#939)
  - moved get_monitoring_service_account_response func out of class to be used 
    globally (#939)
  - Added functionality to allow clients to parse visas with `parse_visas` 
    parameter in the `/authorize` endpoint (#928)
  - Validate RAS visas when they are fetched upon RAS login (#933)
  - Validate RAS visas when they are updated during visa update cronjob (#933)
  - Visas are validated according to the GA4GH AAI spec--see 
    https://github.com/ga4gh/data-security/blob/master/AAI/AAIConnectProfile.md#embedded-access-token-format
    (#933)
  - Try to populate a user's email in the user db if available from IdP (#934)

#### Breaking Changes
  - /link/google will DENY requests with "redirect" param values that aren't in 
    the "allowed redirects" for OAuth2/OIDC Clients in Fence (#927)

#### Bug Fixes
  - Fix backwards compatibility for old refresh tokens without scopes. (Note: 
    5.0.0 claimed to be backwards compatible with old refresh tokens, but was 
    missing this patch) (#942)
  - Fix fence.jwt.validate so it uses the public_key argument (#940)
  - patch to accept old style tokens from fence idp only, since fenceshib 
    cannot be updated to issue new style tokens (#936)

#### Improvements
  - Change warn to warning in logger due to dep warning (#939)
  - Optimized visa parsing logic for faster ad-hoc visa parsing (#928)
  - Log txn claim from RAS access token on RAS login (#937)
  - Google signed urls now use the v4 signing process (#912)
  - change deprecated .warn to new .warning (#934)

#### Dependency Updates
  - update gen3cirrus to 2.0.0 and storageclient to 1.0.2 (#912)

#### Deployment Changes
  - By default Fence will allow only visas issued by RAS staging, RAS prod, and 
    itself; if a different set of allowed visa issuers is needed, edit the 
    GA4GH_VISA_ISSUER_ALLOWLIST config value. Otherwise, no action needed. 
    (#933)
  - /link/google will DENY requests with "redirect" param values that aren't in 
    the "allowed redirects" for OAuth2/OIDC Clients in Fence (You have to add 
    any valid redirects to the client before deploying this) (#927)

## uc-cdis/cdis-data-client

#### Bug Fixes
  - fix dockerfile (#93)
  - This change will replace dots(.) with slashes in the filenames of the index 
    records. Using gen3-client upload command with the "--include-subdirname" 
    option, the dots (“.”) are replaced with slashes (“/”) in the file_name 
    field of indexd. (#91)

## uc-cdis/indexd

#### Dependency Updates
  - Pick up new base image: pybase3-1.5.2 (#310)
  - Update versions: python, authutils, cdiserrors, jsonschema, flask, pandas, 
    sqlalchemy-utils, coveralls, pytest, pytest-cov, pytest-flask, and 
    responses (#311)
  - http://json-schema.org/understanding-json-schema/reference/schema.html ref 
    to change regarding $schema uri (#311)

#### Improvements
  - Once we retire the k8s sidecar containers from indexd's k8s YAML (here: 
    https://github.com/uc-cdis/cloud-automation/pull/1643), old indexd images 
    will face a lot of log noise as the HTTP metrics endpoints will no longer 
    exist. (#314)

## uc-cdis/pelican

#### Bug Fixes
  - bumping pypfb version to fix export problems (#54)

## uc-cdis/peregrine

#### Improvements
  - Adopt new base img with dd apm (#177)

## uc-cdis/data-portal

#### Bug Fixes
  - Fixed a bug causing graphql query to malfunction on query page (#877)
  - Fixed a bug causing submission page to crash when using form submission 
    (#873)
  - fixed a bug causing the workspace fullscreen button to malfunction (#867)
  - fixed a bug causing popup mask to disappear for user logout popups (#866)

#### New Features
  - The Data Explorer and Discovery page now have accessibility links at the 
    top of the pages that allow for more accessible keyboard navigation, 
    bypassing blocks of repetitive content to tab over to areas of interest. 
    (#868)

#### Improvements
  - Text can now be resized using browser text size settings. (#868)
  - aria-selected and aria-expanded roles are filled in and maintained across 
    the site for improved accessibility. (#868)
  - Focus outlines are now visible on all clickable elements. (#868)
  - Resolved keyboard trap issue in the Query page code editor. Users can 
    unfocus from a textarea by pressing the Esc key. (#868)
  - Page titles are now correctly populated using the gitops.json `appName` 
    attribute. (#868)
  - Get rid of `@babel/polyfill` and use `@babel/preset-env` for applying 
    polyfills based on usage (#848)
  - Text-contrast ratios across the site now meet the WCAG AA standard for 
    accessibility. (#865)
  - Modals are now navigable using the keyboard alone. Underlying content will 
    not gain focus when a modal is open. (#865)
  - Remove field <-> column mappings and API calls in favor of the API handling 
    mappings https://github.com/uc-cdis/metadata-service/pull/25 (#863)

#### Breaking Changes
  - Rewrite some logic to get rid of deprecated React component lifecycle hooks 
    (#848)
  - Removed `react-slick` and `slick-carousel`, use `antd` Carousel component 
    instead (#848)

#### Dependency Updates
  - Update React beyond 16.8.6 to latest 16.x version (#848)
  - Update core-js from 2 to 3 (#848)
  - Updated eslint version and linter config (#848)

## uc-cdis/sheepdog

#### Improvements
  - Adopt new base img with dd apm (#348)

## uc-cdis/metadata-service

#### Bug Fixes
  - Only check on the aggregate metadata service APIs health in /_status if 
    that feature is enabled (#28)
  - Return a meaningful HTTP status code for errors with the aggregate metadata 
    service datasource (#28)

#### New Features
  - Aggregate metadata service APIs (#27)

#### Dependency Updates
  - Elasticsearch dependencies (#27)

#### Deployment Changes
  - Network rules are updated to allow for elasticsearch to work with 
    metadata-service https://github.com/uc-cdis/cloud-automation/pull/1638 (#27)
  - `USE_AGG_MDS` must be set to `true` to enable aggregate metadata APIs (#27)

## uc-cdis/cloud-automation

#### New Features
  - Enable web access to the ICPSR repository (#1647)
  - Add `anaconda.org` in addition to `anaconda.com` to the squid allow list 
    (#1641)
  - Added qualy agent configuration to userdata bootstrap scripts (#1626)

#### Improvements
  - Common code to wait for Elasticsearch to be ready (#1638)

#### Dependency Updates
  - Metadata service now uses Elasticsearch for the sake of aggregated metadata 
    APIs (#1638)

#### Bug Fixes
  - Added bucket permissions to EKS worker node policy (#1637)
  - Add initial SA setup for that deployments can schedule pods. (#1632)
  - Skipped terraform sqs setup from non-adminvm environments (#1630)

#### Deployment Changes
  - Add activation id/customer id to EKS module config.tfvars if you want 
    qualys agent configured there (#1626)

## uc-cdis/dataguids.org

#### Improvements
  - Adopt base img from quay to avoid dockerhub rate limit (#5)

## uc-cdis/audit-service

#### Bug Fixes
  - Presigned URL field "sub" can be None (#3)

