# Core Gen3 Release 202006 (Edgewater)

## uc-cdis/fence

#### New Features
  - Add Cognito as Fence IdP (#767)

#### Bug Fixes
  - Recreate built-in groups before granting policies, so that if you remove 
    policies from the built-in groups and run usersync, the groups will get 
    updated accordingly in arborist (#773)
  - Fix docs (#772)

#### Improvements
  - Use logger instead of print statements in fence-create (#777)
  - improve usersync log message so that it is clear that the "does not match 
    pattern" warning also means that the file will not get processed by 
    usersync (#775)
  - add descriptive usersync error when file cannot be decrypted--previously 
    just a stack trace (#775)
  - Updated documentation to reflect Fence API behavior (#772)

#### Dependency Updates
  - Bump userdatamodel to 2.3.2 (#767)

#### Deployment Changes
  - To use the new Cognito integration, apply in fence config the changes made 
    to config-default.yaml. Otherwise no action required. (#767)

## uc-cdis/guppy

#### Improvements
  - Add some error logs for easier debugging (#84)

#### New Features
  - Supports aggregation on nested documents (nested aggregation) (#83)

#### Dependency Updates
  - The current ES nested aggregation query syntax requires ES 6.7+ (note Guppy 
    will not work for ES 7 yet) (#83)

## uc-cdis/indexd

#### New Features
  - Test to check encoded slash works on both drs and drs access endpoint. 
    (#273)
  - Added auth info to DRS endpoint swagger. (#266)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#273)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#266)

## uc-cdis/data-portal

#### Dependency Updates
  - Bump NodeJS from v10 to v12 (#683)
  - Pin portal's version of gen3-ui-component to 0.5.1, which includes 
    accessibility improvements (#670)

#### New Features
  - Ability to display clickable buttons in an Explorer table 
    ("explorerConfig.table.linkFields" configuration variable) (#682)
  - Multi-tab data explorer (#676)
  - Multi-commons Workspace: login buttons POC (#666)
  - Navigation bar display a tooltip on hover for each button (#669)

#### Deployment Changes
  - New `explorerConfig` which can take configs for multiple tabs, backward 
    compatiable with current `dataExplorerConfig` and `fileExplorerConfig` 
    (#676)

#### Improvements
  - Updated format for data explorer config (#676)
  - Decoupled file explorer from data explorer (#676)
  - Added value attributes to the download buttons in the indexing GUI that 
    contain links to the target files (#680)
  - Make Data Dictionary view 508 compliant (#670)

#### Bug Fixes
  - Fixed a bug that causing page to crash if no `from` is specified with 
    redirection (#678)
  - Fixes an issue in the indexing GUI where the spinner spins forever if the 
    presigned URL has an incorrect request signature (#679)
  - Fixed a bug causing incorrect redirects after login (#672)
  - Fixed a bug causing a small horizontal scroll bar always appears. (#673)
  - Fix responsive main menu (#671)

## uc-cdis/sheepdog

#### New Features
  - Implemented the ability to remove values from fields that are not required 
    in existing entities (use null in JSON, empty values in TSV/CSV). (#320)

#### Bug Fixes
  - When exporting entities as a tsv file Null values would have 'None' instead 
    of an empty string. This would cause an error when resubmitting. Fixed by 
    checking file format and making Null values an empty string when the format 
    is tsv. (#323)

#### Dependency Updates
  - dictionaryutils to 3.1.0 (#320)

## uc-cdis/sower

#### New Features
  - Support adding a service account in the job configuration (#14)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#14)

## uc-cdis/tube

#### Bug Fixes
  - PXP-5538 (#126)

