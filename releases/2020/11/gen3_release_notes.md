# Core Gen3 Release 202011 (Jefferson Park)

## uc-cdis/cdis-data-client

#### New Features
  - The gen3-client `upload`, `download-single`, and `download-multiple` 
    commands now interact with the Shepherd API if it is deployed. (#73)
  - The gen3-client `upload` command can be used to upload file metadata 
    (`authz`, `aliases`, and arbitrary metadata for `metadataservice`) if 
    uploading to the Shepherd API. See the 
    [README](https://github.com/uc-cdis/cdis-data-client/blob/feat/pxp-5787-support-shepherd-api/README.md#uploading-file-metadata)
    for documentation. (#73)

#### Improvements
  - Added unit tests for some internal functions that interact with Gen3 APIs 
    (#73)

## uc-cdis/guppy

#### New Features
  - Added searchInput parameter to mapping schema to query attribute names. 
    (#101)
  - Adds a new filter type, `searchFilter`, to the available filters. Search 
    Filters allow the user to search over fields which have too many options to 
    be displayed normally -- for example, individual subject IDs or file GUIDs. 
    (#99)

#### Deployment Changes
  - To deploy SearchFilters in a tab of the Explorer page, add an entry to 
    `data{/file}ExplorerConfig.filters.tabs.searchFields`. **NOTE: Do not add 
    the same field to both `searchFields` and `fields`**, this will cause 
    strange behavior in the search field. Example config: (#99)
  - ``` (#99)
  - "filters": { (#99)
  - "tabs": [ (#99)
  - { (#99)
  - "title": "Subject", (#99)
  - "searchFields": [ (#99)
  - "subject_id", (#99)
  - "submitter_id", (#99)
  - "consent_codes" (#99)
  - ], (#99)
  - "fields": [ (#99)
  - "data_type", (#99)
  - "data_format", (#99)
  - ... (#99)
  - ] (#99)
  - } (#99)
  - ``` (#99)

## uc-cdis/hatchery

#### Improvements
  - New option `use-shared-memory` to mount a shared memory volume (for firefox 
    and noVNC) (#6)
  - New volume prefix `{SHARED_MEMORY_VOLUME}` for docker-compose format spec 
    to mount a shared memory volume (for firefox and noVNC) (#6)
  - Added precommit hooks and sec baseline (#6)

## uc-cdis/indexd

#### New Features
  - Added new `get_with_nonstrict_prefix` helper to `index_driver`. (#291)
  - Updated `/ga4gh/drs/v1/objects/<path:object_id>` and 
    `/index/<path:object_id>` GET endpoints to utilize this new method. (#291)
  - Implemented dist endpoint and added unit test (#293)

#### Bug Fixes
  - update updated_date when modifying record (#294)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#294)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#293)

## uc-cdis/manifestservice

#### Improvements
  - Add pre-commit config (#15)
  - Remove useless access check (#12)

#### Dependency Updates
  - flask to 1.1.2 (latest) (#15)
  - Pin cryptography to 2.8 to fix dependency issues, base dockerfile to v1.3.0 
    (#12)

## uc-cdis/pelican

#### New Features
  - Export job now can export PFB's in a GUID rather than a presigned-url when 
    a `access-format` parameter is passed to sower (#34)
  - Pelican-export job now allows client to specify the root node of a pfb when 
    dispatching a job, allowing clients to export PFBs of entities that are not 
    on the $ROOT_NODE environment variable. This allows for exporting of data 
    file PFBs, so long as the data files are all on the same root node. (#33)
  - The pelican-export algorithm's extra_nodes input can now be configured by 
    $EXTRA_NODES environment variable. The old behavior of including 
    `reference_file` and `reference_file_index` for BDCat exports is still 
    there for backwards compatibility. (#33)

#### Config Changes
  - Export job now needs a volume mount for indexd creds so the job can submit 
    files to indexd (#34)

#### Bug Fixes
  - Fix bug exporting childless nodes: If exporting a cohort with no children, 
    pelican-export was (#35)
  - returning an empty PFB, instead of a PFB containing entities on the (#35)
  - root_node and its parents. This was caused by pelican delaying writes (#35)
  - to the PFB until encountering a child node (L148). If pelican did not (#35)
  - encounter a child node, no nodes would be written to the PFB. (#35)

## uc-cdis/data-portal

#### New Features
  - Separate NIAID Clinical Trials related code into a dedicated bundle (#742)
  - Add a feature to display external app in an iframe in `/analysis` page 
    (#747)
  - New button in Windmill, "Export PFB to Workspace", which requests Pelican 
    to place a cohort PFB in indexd and then sends that PFB GUID to the 
    manifestservice. (#681)
  - Add study viewer (list) and single study viewer (#728)
  - Separate Covid19 dashboard into another bundle to reduce bundle size (#737)

#### Bug Fixes
  - Various warning and crash fixes (#742)

#### Improvements
  - Use antd `Carousel` component instead of `react-slick` (#742)
  - Index page chart carousel now support adding static images (#742)
  - Index page introduction text now supports `multiLineTexts` and embedded 
    HTML tags (#742)
  - Study viewer: improve the handling of 409 errors from Requestor (#755)
  - Make the side boxes in single study viewer configurable (#752)
  - Add optional `accessRequestedText` and `accessRequestedTooltipText` fields 
    for `request_access` button in study viewer (#750)
  - Allow topbar item to have email links (#751)
  - Study viewer improvements: configurable buttons in study viewer 
    configuration; buttons can be hidden on the list view or on the single item 
    view; request access redirection modal improvements (#749)
  - Add modal for redir (window.open() call) (#748)
  - Study Viewer: replace "Request Access" button with "Login to Request 
    Access" button when the user is logged out and fix blocked redirections 
    (#746)
  - do not rely on cookie for csrf token, but keep it as a fallback (#745)
  - fix missing routes in `workspaceIndex.jsx` (#735)
  - Fix page hierarchy for homepage UI components (#734)
  - Add alt text for images in footer and header (#734)

#### Deployment Changes
  - New value for `GEN3_BUNDLE` env var `GEN3_BUNDLE=nct` (#742)
  - New optional portal config variable `injectDAPTag` (default value is 
    `false`). If set to `true`, will inject DAP tag script into page header 
    (this is required for NCT PROD env only) (#742)
  - All envs should check if the `dataExplorerConfig` field in its portal 
    config has ONLY `arrangerConfig` field but NO `guppyConfig` field (it is 
    okay to have both). If so, please update `dataExplorerConfig` to use Guppy 
    (#743)
  - A new Export to PFB button can be optionally enabled in the config.json. It 
    is disabled by default. The button requires at least pelican:2020.10 
    release. (#681)
  - Add `GEN3_BUNDLE=covid19` as portal env var to enable covid bundle (#737)

#### Breaking Changes
  - Arranger is removed (#743)
  - `DataExplorer` is removed (#743)
  - `ExplorerPage` is removed (#743)

#### Dependency Updates
  - Arranger is removed (#743)

## uc-cdis/sower

#### New Features
  - Added handler for dispatching job with `access-format` parameter to pass to 
    pelican jobs (#18)

## uc-cdis/ssjdispatcher

#### Breaking Changes
  - Going forward, to support the [indexing job updating the Metadata 
    Service](https://github.com/uc-cdis/indexs3client/pull/29), SSJDispatcher 
    now requires the Metadata Service to be deployed. Metadata Service creds 
    are now required in the `"imageConfig": {` section for every `"name": 
    "indexing"` job configured for SSJDispatcher. Without both Indexd and 
    Metadata Service creds configured for all `"name": "indexing"` jobs, 
    SSJDispatcher will exit immediately on startup. (#32)

#### Improvements
  - Exit with a status code of 1 instead of 0 when there are errors with 
    reading the credentials file (e.g. it can't be found, no SQS url present, 
    no MDS/Indexd creds) (#32)

#### Deployment Changes
  - `metadata-service` must already be present or added to the `"versions": {` 
    section of the `cdis-manifest`. After `metadata-service` has been confirmed 
    to be in the `cdis-manifest`, the now-required Metadata Service creds for 
    SSJDispatcher must be configured by running `gen3 roll all` with 
    `JENKINS_HOME` **not** set. `gen3 roll all` calls `gen3 
    kube-setup-ssjdispatcher`, which now [automatically 
    configures](https://github.com/uc-cdis/cloud-automation/pull/1428) the 
    SSJDispatcher secret with Metadata Service creds. (#32)

## uc-cdis/tube

#### Improvements
  - Add debug log to help troubleshoot errors when props are missing (#137)

## uc-cdis/indexs3client

#### New Features
  - Update the `_bucket`, `_filename`, `_file_extension`, and `_upload_status` 
    (#29)
  - keys in corresponding Metadata Service object after a file has been 
    uploaded to the bucket. (#29)

#### Breaking Changes
  - Going forward, indexs3client now requires the Metadata Service to be 
    deployed. Metadata Service creds are now required in the `CONFIG_FILE` 
    environment variable in order for this job to run. Without both Indexd and 
    MDS creds configured, this job will immediately exit and update neither 
    Indexd or MDS. (#29)

#### Improvements
  - Determine if Indexd record already has hashes and size populated before 
    downloading S3 object and calculating hashes. If so, don’t bother 
    downloading/recalculating. (#29)
  - Define `ConfigInfo struct` so that the config (url and creds) for new 
    services can be easily unmarshalled from the `CONFIG_FILE` environment 
    variable (#29)
  - Make use of `retryablehttp` package to abstract http request retry logic 
    and only retry on 500-range errors (#29)

#### Dependency Updates
  - Add `github.com/hashicorp/go-retryablehttp v0.6.7` to `go.mod` (#29)

#### Deployment Changes
  - `metadata-service` must already be present or added to the `"versions": {` 
    section of the `cdis-manifest`. After `metadata-service` has been confirmed 
    to be in the `cdis-manifest`, the now-required Metadata Service creds for 
    SSJDispatcher/indexs3client must be configured by running `gen3 roll all` 
    with `JENKINS_HOME` **not** set. `gen3 roll all` calls `gen3 
    kube-setup-ssjdispatcher`, which now [automatically 
    configures](https://github.com/uc-cdis/cloud-automation/pull/1428) the 
    SSJDispatcher secret with the appropriate Metadata Service creds. After 
    running `gen3 roll all`, SSJDispatcher should be configured such that 
    SSJDispatcher can automatically pass the Metadata Service creds to the 
    indexs3client job instance (i.e. after running `gen3 roll all`, no further 
    action should be required by DevOps). (#29)

## uc-cdis/metadata-service

#### New Features
  - Add POST /api/v1/objects/{{GUID or ALIAS}} endpoint (#11)

## uc-cdis/dcf-dataservice

#### New Features
  - Enable bucket-owner-full-control flag (#84)

