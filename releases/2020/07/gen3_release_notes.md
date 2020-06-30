# Core Gen3 Release 202007 (Forest Glen)

## uc-cdis/fence

#### Improvements
  - Add program/project info to user.yaml guide (#782)
  - Fix "assert 60 <= 59" error in flaky unit tests (#782)
  - Added tests for `fence.scripting.fence_create.create_client_action` (#780)
  - Add user.yaml guide (#781)

#### New Features
  - Enabled `fence-create client-create` to accept space-separated 
    `allowed-scopes` arguments (#780)

#### Bug Fixes
  - fix deps so pip parses correctly (#783)
  - Do not fetch the region at startup for public S3 buckets (#778)

## uc-cdis/guppy

#### New Features
  - Let filters in data explorer support nested fields (#85)

#### Improvements
  - Selected filters will always show before unselected ones in filter sections 
    (#85)

## uc-cdis/indexd

#### New Features
  - Remove presigned url from the `access_url` field in the drs object when 
    authz is given. (#282)
  - "POST /blank", "POST /blank/GUID" and "PUT /blank/GUID" endpoints now allow 
    specifying an authz for the blank record (#280)
  - "PUT /index/GUID" (record update) now checks authorization for both update 
    (old authz) and create (new authz) (#280)
  - Added PUT `/index/{GUID}/versions` endpoint, allowing user to update the 
    `acl` and `authz` fields across all versions of a record. (#279)
  - Add support for creating a new, blank version of a record through the POST 
    `/index/blank/{{GUID}}` endpoint. (#271)

#### Breaking Changes
  - indexd blank record endpoints no longer require uploader field (#277)

#### Improvements
  - creating blank records now allows using your access token for authz (#275)
  - Prepend the configured prefix to new versions' GUIDs, unless a GUID has 
    been provided by the user (#274)

#### Dependency Updates
  - update gen3authz to latest version (#276)
  - Pin authutils==4.0.0 in setup.py (#274)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#282)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#277)
  - Indexd's blank record endpoints now allow direct iteration from a user with 
    their access token but requires the file upload arborist role to be 
    modified so the service is not just `fence` but instead `*` so indexd works 
    too. see https://github.com/uc-cdis/commons-users/pull/908/files for 
    example (#275)

## uc-cdis/data-portal

#### Bug Fixes
  - Fix navigation bar buttons descriptions when the page is scrolled (#692)
  - Fixed a bug causing explorer page to crash if no `manifestMapping`, 
    `manifestMapping.referenceIdFieldInDataIndex` or 
    `manifestMapping.referenceIdFieldInResourceIndex` has been specified in 
    `guppyConfig` (#688)

#### Improvements
  - File core metadata table: remove empty rows (#691)
  - Added an optional flag `explorerPublic` in portal config `featureFlags`, if 
    set to `true`, data explorer page would be public accessible (#690)
  - Selected filters will always show before unselected ones in filter sections 
    (#688)

#### Dependency Updates
  - Backend service should have Guppy 0.4.2+ or 2020.05+ so it can handle user 
    without JWT (#690)
  - Guppy: 0.6.0 https://github.com/uc-cdis/guppy/pull/85 (#688)
  - Adds new button type `export-to-seven-bridges` to portal config 
    `dataExplorerConfig.buttons.` Example: (#686)
  - ``` (#686)
  - { (#686)
  - "enabled": true, (#686)
  - "type": "export-to-seven-bridges", (#686)
  - "title": "Export All to Seven Bridges", (#686)
  - "rightIcon": "external-link" (#686)
  - }, (#686)
  - ``` (#686)
  - Adds new parameter `dataExplorerConfig.sevenBridgesExportURL` to portal 
    config, which specifies the URL belonging to Seven Bridges that portal 
    should redirect to. Portal appends the signed url to this URL with a query 
    param (`&PFB=<signed url>`). Example: (#686)
  - ``` (#686)
  - "sevenBridgesExportURL": "https://windmill.sbgenomics.com/import/windmill" 
    (#686)
  - ``` (#686)

#### New Features
  - Let filters in data explorer support nested fields (#688)
  - Let charts in data explorer support nested fields (#688)
  - Added Export to Seven Bridges button, allowing user to export a PFB to 
    Seven Bridges. (#686)

## uc-cdis/sheepdog

#### Bug Fixes
  - This should address the compatibility issue with authlib `0.14.3` (#325)

## uc-cdis/sower

#### New Features
  - job cfgs can optionally provide an override of deadline for job runs of 
    that type (#15)

## uc-cdis/tube

#### New Features
  - remove unnecessary `fn: set` declaration in file index. (#129)

#### Bug Fixes
  - Fix missing property for program (#129)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#129)

## uc-cdis/indexs3client

#### Improvements
  - Add more logs (#19)

