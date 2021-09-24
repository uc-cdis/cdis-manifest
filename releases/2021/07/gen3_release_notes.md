# Core Gen3 Release 202107 (Ravenswood)

## uc-cdis/arborist

#### Breaking Changes
  - In step with Fence changes to issued JWTs, in which scopes are moved into a 
    dedicated scope claim (Fence 4.22.2/2020.08) and out of the aud claim 
    (Fence 5.0.0/2021.**TBD**), this commit changes Arborist JWT validation 
    logic so that it does the same validation it was doing on the aud field, 
    but does it on the scope field instead. This Arborist version must 
    therefore be paired with a Fence later than 4.22.2/2020.08. Conversely, 
    Fence 5.0.0/2021.**TBD** will require Arborist later than this commit. 
    (#130)

#### Improvements
  - Run dep ensure to update lockfile and dependencies. (#130)

#### Dependency Updates
  - Depend on fix/aud-scopes branch of go-authutils, instead of the 
    feat/initial branch. (Not sure why arborist was depending on feat/initial 
    instead of master in the first place. fix/aud-scopes is branched off of 
    feat/initial. We should test Mariner with go-authutils fix/aud-scopes and 
    then merge fix/aud-scopes to master, and then point both Mariner and 
    Arborist at go-authutils master.) (#130)

#### Deployment Changes
  - Needs Fence later than 4.22.2 or 2020.08 (which introduces the new JWT 
    scopes claim). (#130)

## uc-cdis/fence

#### Bug Fixes
  - Fixes the 503 error when requesting for a signed url using assume role for 
    less than 15 minutes. Fix is made to keep inline with AWS minimum duration 
    restriction for assume_role (#926)
  - /google/primary_google_service_account was returning the client/user SA, 
    which is NOT what is used for signed urls. this PR corrects the behavior to 
    create and return the user's single primary service account (#921)

#### New Features
  - Added `assume_role` cache for download/upload (#774)
  - new `/google/primary_google_service_account` endpoint which will 
    get_or_create a user's Primary Google Service Account and return the SA 
    email (only available to authed users/clients with authority to generate 
    google creds) (#914)
  - Exporting metrics from Fence so we can observe events in our Grafana 
    dashboards. (#864)

#### Breaking Changes
  - Remove scopes from "aud" claim in Fence-issued tokens. This means that in 
    general, old tokens (minted by previous Fence releases) will not pass 
    validation by this Fence. (#839)
  - Access tokens will still include scopes for compatibility with other 
    microservices, but scopes are no longer guaranteed and should no longer be 
    expected in the aud claim from this version on. ID tokens, refresh tokens, 
    and API keys will not have scopes in the aud claim. (#839)
  - Add custom "scope" claim in tokens and put scopes there instead. Custom 
    validation for scopes claim added in Authutils 6.0.1 (#839)
  - Add issuer to "aud" claim (alongside other aud values--so when there is a 
    Fence client involved, this means the aud claim will include both Fence's 
    BASE_URL and the client_id) (#839)
  - Remove custom "aud" claim validation and use normal validation instead (by 
    bumping to Authutils 6.0.1). This means checking that the aud claim 
    contains a value that identifies the consuming service, i.e. Fence's 
    BASE_URL. (#839)

#### Improvements
  - update base image to latest version (#931)
  - Replace NGINX_RATE_LIMIT if an override value if found in fence-config. 
    (#916)
  - use jsonify for response for correct content headers (#918)
  - update docs to include new google endpoint (#918)
  - update docs to clarify header for shib (#918)
  - Patch the 'get_all_shib_idps' function to handle bad input from the 
    InCommon discovery endpoint (#917)
  - Introducing new ENABLE_PROMETHEUS_METRICS config to allow operators to 
    enable/disable metrics (#913)
  - Documentation about public data (#911)

#### Dependency Updates
  - Requires authutils 6.0.1. (#839)

#### Deployment Changes
  - This commit includes patches to allow old style refresh tokens and API keys 
    to pass new style validation, while issuing new style refresh tokens and 
    API keys. Since refresh tokens and API keys have a default TTL of 30 days, 
    stay on this tag for 30 days if possible. (#839)
  - Old access tokens will NOT work once this is deployed so active sessions 
    may be temporarily interrupted. (#839)

## uc-cdis/hatchery

#### Bug Fixes
  - fix container option hash calculation to avoid clashes (#13)

#### Improvements
  - Let `UserUID`, `GroupUID` and `FSGID` be able to handled in dockstore YAML 
    format configs (#12)

## uc-cdis/indexd

#### New Features
  - Indexd admins can perform any operation (#306)

#### Bug Fixes
  - Fix "indexd admin" logic to handle failed authorization requests to 
    Arborist (#308)

#### Improvements
  - Modified get_with_nonstrict prefix route 
    (https://github.com/uc-cdis/indexd/blob/master/indexd/index/drivers/alchemy.py#L1101)
    to replace hardcoded prefix delimiter. (#305)
  - (https://github.com/uc-cdis/indexd/blob/master/indexd/index/drivers/alchemy.py#L500)
    expanded logic to query additional ids by adding to id array. If the 
    default prefix is not _None_ the id with default prefix will be appended to 
    id array; similarly, following logic from the get_with_nonstrict prefix 
    route, an id stripped of the default prefix will be added to the id array. 
    (#305)
  - Added test for get without prefix 
    (https://github.com/uc-cdis/indexd/blob/chore/update_id_get/tests/test_client.py#L86)
    (#305)
  - Bundles endpoints: don't swallow authorization exceptions (#309)
  - Add a deprecation log to the old "indexd_admin" logic (#309)
  - Add unit tests fixture to mock calls to Arborist easily (#306)

## uc-cdis/pelican

#### New Features
  - Updating pypfb to fix anvil and bdc pfb export errors (#53)

## uc-cdis/data-portal

#### New Features
  - add Gen3 Map Template view and instructions (#858)
  - add multiple filters to PRC IL map (#858)
  - missing map json data for standalone (#858)
  - Adds a new featureFlag, `discoveryUseAggMDS`, which is false by default. 
    When set to true, it alters the behavior of the Discovery page to function 
    as an Ecosystem Browser which allows users to browse data from multiple 
    commons. That data is supplied by a new path in the metadata service, an 
    "aggregate" path. See `docs/ecosystem_browser.md` for more information. 
    (#849)
  - add popup to charts on PRC homepage (#855)
  - Add download object files feature to discovery page (#853)

#### Improvements
  - The data-portal html wrapper's default language is now set to "en". This 
    meets the guideline for default page language in the 508 accessibility 
    specification. (#859)
  - Discovery page table improvements: Improves column width stability when 
    applying filters on the Discovery page. Adds placeholder text to search 
    box. (#849)
  - Refactors Discovery page into modularized subcomponents: 
    DIscoveryMDSSearch, DiscoveryListView, DiscoveryTagViewer, 
    DiscoverySummary. (#849)
  - Adds new configurable attribute to DiscoveryConfig studyColumn block called 
    `hrefValueFromField`. If this attribute is present, the text in the column 
    will be linked. The href value of the link will be the corresponding value 
    of the fieldname in this attribute. (#849)
  - make PRC main map respond better to larger and smaller browser widths (#854)
  - Add `show output file paths` button to jobs that are completed in the GWAS 
    App job status list (#852)

#### Dependency Updates
  - The alt attribute on the primary homepage logo is now "[appName] - home" 
    across commons. The Gen3, CTDS logo alt texts are now identical across 
    commons. This meets the guideline for linked image alt text in the 508 
    accessibility specification. (#859)
  - New featureFlag: `discoveryUseAggMDS`. It is false by default. When set to 
    true, it alters the behavior of the Discovery page to function as an 
    Ecosystem Browser. (#849)

#### Bug Fixes
  - Fixed an issue causing `pending` status to be turned on inappropriately on 
    buttons if two workspace options have a same name (#851)

## uc-cdis/sower

#### Improvements
  - Updating openapi documentation to be correct (#22)
  - When a job is dispatched but does not exist in `sower_config.json`, 
    indicate an empty config instead of a duplicate in logs (#21)

## uc-cdis/tube

#### Bug Fixes
  - wholeTextFiles function cause OOM issue. We avoid that by using textFile 
    (#145)

## uc-cdis/indexs3client

#### Bug Fixes
  - Jira Ticket: PXP-7648 (#31)
  - This change will replace dots(.) with slashes in the filenames of the index 
    records. Using gen3-client upload command with the "--include-subdirname" 
    option, the dots (“.”) are replaced with slashes (“/”) in the file_name 
    field of indexd. (#31)

## uc-cdis/cloud-automation

#### New Features
  - Added gh action to push images to ECR (#1598)

## uc-cdis/audit-service

#### New Features
  - The audit service can be configured to fetch audit logs from an AWS SQS (#2)

#### Improvements
  - Return an error if an invalid timestamp is provided to the log creation 
    endpoint (#2)
  - Presigned URL logs can now have an empty "resource_paths" field (#2)

#### Dependency Updates
  - Add dependency to boto3 version ^1.14 (#2)

#### Deployment Changes
  - **If a previous version of the audit service has already been deployed**, 
    run `kubectl delete secret audit-g3auto` and `gen3 
    kube-setup-audit-service` to configure the audit SQS and update the 
    configuration file. REQUIRES Fence 5.1.0 or more recent. OR to disable 
    pulling from a queue, update the configuration file manually to disable 
    "PULL_FROM_QUEUE" (#2)

