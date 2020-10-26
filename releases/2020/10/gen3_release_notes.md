# Core Gen3 Release 202010 (Irving Park)

## uc-cdis/fence

#### Bug Fixes
  - Deny redirects to default client redirect_uri instead of given 
    redirect_uri. (#838)

#### New Features
  - DELETE /user/file_id endpoint now uses authz field instead of uploader 
    field to authenticate user (#776)

## uc-cdis/cdis-data-client

#### New Features
  - The gen3-client `upload`, `download-single`, and `download-multiple` 
    commands now interact with the Shepherd API if it is deployed. (#73)
  - The gen3-client `upload` command can be used to upload file metadata 
    (`authz`, `aliases`, and arbitrary metadata for `metadataservice`) if 
    uploading to the Shepherd API. See the 
    [README](https://github.com/uc-cdis/cdis-data-client/blob/feat/pxp-5787-support-shepherd-api/README.md#uploading-file-metadata)
    for documentation. (#73)
  - Use go.mod and go.sum for dependency management (#75)

#### Improvements
  - Added unit tests for some internal functions that interact with Gen3 APIs 
    (#73)

#### Dependency Updates
  - Update to Go 1.14 (#75)

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
  - Separate Covid19 dashboard into another bundle to reduce bundle size (#737)
  - Adds limited support for PFB Export (Download PFB / Export to Terra / 
    Export to Seven Bridges) from the Files Tab. Users can export PFBs of data 
    files of a single data type, but cannot export PFBs of files of multiple 
    data types at the same time. (#729)

#### Deployment Changes
  - Add `GEN3_BUNDLE=covid19` as portal env var to enable covid bundle (#737)
  - Limited File PFB Export requires Pelican >= 0.5.0, Tube >= 0.4.1 (#729)
  - Limited File PFB Export is enabled by setting 
    `fileExplorerConfig.enableLimitedFilePFBExport: { sourceNodeField: 
    "source_node" }` and by adding buttons of buttonType `export-files` (Export 
    to Terra), `export-files-to-pfb` (Download PFB), or 
    `export-files-to-seven-bridges` (Export to Seven Bridges) to 
    `fileExplorerConfig.buttons`. Example: (#729)
  - ``` (#729)
  - "fileExplorerConfig": { (#729)
  - ... (#729)
  - "buttons": [ (#729)
  - .... (#729)
  - { (#729)
  - "enabled": true, (#729)
  - "type": "export-files-to-pfb", (#729)
  - "title": "Export All to PFB", (#729)
  - "rightIcon": "external-link", (#729)
  - "tooltipText": "You have not selected any cases to export. Please use the 
    checkboxes on the left to select specific cases you would like to export." 
    (#729)
  - }, (#729)
  - { (#729)
  - "enabled": true, (#729)
  - "type": "export-files", (#729)
  - "title": "Export All to Terra", (#729)
  - "rightIcon": "external-link", (#729)
  - "tooltipText": "You have not selected any cases to export. Please use the 
    checkboxes on the left to select specific cases you would like to export." 
    (#729)
  - } (#729)
  - ], (#729)
  - "enableLimitedFilePFBExport": {"sourceNodeField": "source_node"}, (#729)
  - ``` (#729)
  - Limited File PFB Export requires the `source_node` property to be ETL'd -- 
    `source_node` should be added to `props` in the `file` section of 
    `etlMapping.yaml`. Example: (#729)
  - ``` (#729)
  - name: mpingram_file (#729)
  - doc_type: file (#729)
  - type: collector (#729)
  - root: None (#729)
  - category: data_file (#729)
  - props: (#729)
  - name: object_id (#729)
  - name: md5sum (#729)
  - ... (#729)
  - name: source_node (#729)
  - ``` (#729)
  - Limited File PFB Export requires a new `export-files` job block to be added 
    to the Sower config in manifest.json. The $ROOT_NODE environment variable 
    must be set to `"file"`, or the name of the Guppy file index if it isn't 
    "file". *For BioDataCatalyst, the EXTRA_NODES environment variable must be 
    set to `""`*. (This is for backwards compatibility: pelican-export includes 
    `reference_file` by default on all BDCat PFB exports unless $EXTRA_NODES is 
    set to an empty string). Example sower config: (#729)
  - ``` (#729)
  - { (#729)
  - "name": "pelican-export-files", (#729)
  - "action": "export-files", (#729)
  - "container": { (#729)
  - "name": "job-task", (#729)
  - "image": "quay.io/cdis/pelican-export:0.5.0", (#729)
  - "pull_policy": "Always", (#729)
  - "env": [ (#729)
  - { (#729)
  - "name": "DICTIONARY_URL", (#729)
  - "valueFrom": { (#729)
  - "configMapKeyRef": { (#729)
  - "name": "manifest-global", (#729)
  - "key": "dictionary_url" (#729)
  - } (#729)
  - } (#729)
  - }, (#729)
  - { (#729)
  - "name": "GEN3_HOSTNAME", (#729)
  - "valueFrom": { (#729)
  - "configMapKeyRef": { (#729)
  - "name": "manifest-global", (#729)
  - "key": "hostname" (#729)
  - } (#729)
  - } (#729)
  - }, (#729)
  - { (#729)
  - "name": "ROOT_NODE", (#729)
  - "value": "file" (#729)
  - }, (#729)
  - { (#729)
  - "name": "EXTRA_NODES", (#729)
  - "value": "" (#729)
  - } (#729)
  - ], (#729)
  - "volumeMounts": [ (#729)
  - { (#729)
  - "name": "pelican-creds-volume", (#729)
  - "readOnly": true, (#729)
  - "mountPath": "/pelican-creds.json", (#729)
  - "subPath": "config.json" (#729)
  - }, (#729)
  - { (#729)
  - "name": "peregrine-creds-volume", (#729)
  - "readOnly": true, (#729)
  - "mountPath": "/peregrine-creds.json", (#729)
  - "subPath": "creds.json" (#729)
  - } (#729)
  - ], (#729)
  - "cpu-limit": "1", (#729)
  - "memory-limit": "4Gi" (#729)
  - }, (#729)
  - "volumes": [ (#729)
  - { (#729)
  - "name": "pelican-creds-volume", (#729)
  - "secret": { (#729)
  - "secretName": "pelicanservice-g3auto" (#729)
  - } (#729)
  - }, (#729)
  - { (#729)
  - "name": "peregrine-creds-volume", (#729)
  - "secret": { (#729)
  - "secretName": "peregrine-creds" (#729)
  - } (#729)
  - } (#729)
  - ], (#729)
  - "restart_policy": "Never" (#729)
  - }, (#729)
  - ``` (#729)

#### Bug Fixes
  - Fixed some warning messages about incorrect prop types (#722)

#### Improvements
  - fix missing routes in `workspaceIndex.jsx` (#735)
  - Fix page hierarchy for homepage UI components (#734)
  - Add alt text for images in footer and header (#734)
  - Error messages now appear if a PFB export fails. (#729)
  - When a PFB download succeeds, shows a link to the PFB instead of just the 
    URL of the PFB. (#729)
  - Improve admin-applied prefilter docs. (#731)
  - Added documentation for adminAppliedPreFilters. (#730)
  - Removes duplicates from the filter of manifest count query (#724)
  - Updatde some UI components from Ant Design (#722)
  - Adjusted layout of the submission form so each field is clearly separated 
    (#722)

#### Dependency Updates
  - Removed `material-ui` (#722)
  - Added `antd` (#722)

## uc-cdis/sheepdog

#### Improvements
  - Existing links can be removed by explicitly setting them to None in 
    submissions (use null in JSON, empty values in TSV/CSV) (#331)

#### Bug Fixes
  - Accept TSV submissions with empty link columns, for links that are not 
    required (#331)
  - Only write acl and authz fields of corresponding Indexd record during data 
    submission iff both fields are empty to begin with. Prevents authz field 
    from being unintentionally populated in commons not using authz. (#330)

#### Dependency Updates
  - dictionaryutils to 3.4.0 (#331)

#### Breaking Changes
  - Note that this PR will cause Sheepdog behavior to change slightly during a 
    data submission flow in which the acl and/or authz field are previously 
    populated in the corresponding Indexd record and the Indexd uploader field 
    is not null and the Sheepdog submitter does not match the Indexd uploader. 
    While the existing behavior will cause data submission to fail and report 
    an error message to the user, this PR’s changes will mean that data 
    submission can still succeed in this case of populated acl/authz and 
    uploader mismatch. I believe this change in behavior is not problematic in 
    that it would be unexpected in any commons for uploader and (acl and/or 
    authz) to both be populated. (#330)

## uc-cdis/sower

#### New Features
  - Added handler for dispatching job with `access-format` parameter to pass to 
    pelican jobs (#18)

## uc-cdis/sower-jobs

#### New Features
  - Updates the jobs to route internally (#16)
  - indexing job defaults to replacing urls if flag is not provided (#27)
  - Add new sower job to merge bucket manifests using the SDK (#26)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#16)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#27)

## uc-cdis/tube

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#134)

## uc-cdis/workspace-token-service

#### Improvements
  - add optional `redirect_uri` property in idp config to support centralized 
    authorization redirect (#23)
  - bump to latest authlib and related dependencies (#23)
  - add pre-commit-config (#23)

## uc-cdis/metadata-service

#### New Features
  - Add POST /api/v1/objects/{{GUID or ALIAS}} endpoint (#11)
  - Add GET /api/v1/objects/{{GUID or ALIAS}} endpoint (#9)

