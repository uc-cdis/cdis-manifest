# Core Gen3 Release 202003 (Bronzeville)

## uc-cdis/gen3-statics

#### New Features
  - Added .secinclude to include all relevant files needed for veracode scan. 
    (#3)
  - Added .secexclude to explicitly remove any unneeded files. (#3)
  - Added Jenkinsfile.security for the veracode security organization in 
    Jenkins to scan this repo regularly. (#3)

## uc-cdis/fence

#### Improvements
  - Decrease response time when getting S3 presigned URLs by calling 
    "get_bucket_region" at startup instead of when processing requests (#749)
  - Added optional config `SYNAPSE_JWKS_URI` to adpot Synapse JWKS document 
    changes and avoid downtime (#754)

#### Deployment Changes
  - In fence-config, the region field of S3_BUCKETS is now required: if not 
    specified, Fence will print a warning and try to call GetBucketLocation. 
    Fence will error at startup if that doesn't work. (#749)

## uc-cdis/cdis-data-client

#### Bug Fixes
  - fixed a typo in message (#71)

## uc-cdis/guppy

#### New Features
  - add search input box to filter (#76)
  - Nested field with filter availability (#52)
  - Added .secinclude to include all relevant files needed for veracode scan. 
    (#73)
  - Added .secexclude to explicitly remove any unneeded files. (#73)
  - Added Jenkinsfile.security for the veracode security organization in 
    Jenkins to scan this repo regularly. (#73)
  - Added sensitive record exclusion to Guppy (#72)

#### Improvements
  - add a hidden prop to ConnectedFilter to reduce unnecessary calculation thus 
    boost rendering speed (#76)
  - rewrite update filter tabs function and decrease time complexity from 
    O(n^3) to O(n^2) (#76)
  - UX Improvement: In the data explorer, filter options with counts of zero 
    that have been checked by the user will not disappear. Once those options 
    are unchecked, they will disappear. (#71)

## uc-cdis/indexd

#### Bug Fixes
  - Fix an issue introduced in 2.0.0 that broke the "/_version" endpoint (#259)

## uc-cdis/pelican

#### New Features
  - Added .secinclude to include all relevant files needed for veracode scan. 
    (#24)
  - Added .secexclude to explicitly remove any unneeded files. (#24)
  - Added Jenkinsfile.security for the veracode security organization in 
    Jenkins to scan this repo regularly. (#24)

## uc-cdis/pidgin

#### Dependency Updates
  - pytest-flask to 0.15.1 to fix werkzeug ImportError, and pytest to 3.6.0 for 
    pytest-flask (#34)

## uc-cdis/data-portal

#### Bug Fixes
  - Ensure data explorer filter defaults to `with-access` only if 
    TIER_ACCESS_LEVEL is `regular`, otherwise set it to `all-data` (#654)
  - Fixed logic for explorer component locks: don't lock if TIER_ACCESS_LEVEL 
    is `libre` (#654)
  - Fixed `Each child in a list should have a unique “key” prop` warning for 
    ExplorerVisualization (#654)
  - Fix a UI bug that the landing page chart got cut at the top. (#652)
  - Fixed a bug causing weired filter behaviors in `libre` commons (#651)
  - Fixed bug in which, under some conditions, the submission page would appear 
    to show all projects as submittable regardless of user's permissions (#639)
  - fix a typo in readme about homepage chart config (#644)

#### Improvements
  - Remove some unnecessary instructions in README (#655)
  - Added `Login` button into top bar (#648)
  - add markdown for hiv cohort selection app (#643)

#### New Features
  - Added a configurable warning when exporting to Terra a cohort above a 
    certain number of subjects that the export may fail due to technical 
    limitations of Terra. (#642)
  - Support custom stacked bar charts to homepage (#637)
  - Added `file_name`, `md5sum`, and `file_size` fields to the data explorer 
    file manifest. (#631)

#### Deployment Changes
  - Added `terraExportWarning: { subjectThreshold: <number>, message: <string, 
    optional> }` to portal config. (#642)
  - New optional portal config flag: dataExplorerConfig.terraTemplate. The 
    value of this parameter is placed in the Terra export URL as the value of 
    the query parameter 'template'. (#645)

#### Dependency Updates
  - update babel version, also update webpack and babel config to whitelist 
    compiling new JS syntaxes (#640)

## uc-cdis/sheepdog

#### Improvements
  - The formats of exported and imported files (JSON and TSV) now match (#318)

## uc-cdis/ssjdispatcher

#### Breaking Changes
  - bump `go` version to 1.12 (#16)

## uc-cdis/tube

#### Bug Fixes
  - Map all python ints to es_type long. Fixes bug introduced in py3 migration, 
    in which large python ints that were previously mapped to ES type long were 
    being mapped to ES type int (Py3 merges type long into type int), causing 
    an ES error. (#125)
  - Fix NoneType bug in injection parser (#123)
  - in test, guard case where right_val is list but left_val is None (should 
    not attempt to sort left_val) (#119)
  - propose fix for bug where node levels of leaf nodes are set to strings, in 
    particular string reprs of edge table names (#119)

#### New Features
  - Added .secinclude to include all relevant files needed for veracode scan. 
    (#121)
  - Added .secexclude to explicitly remove any unneeded files. (#121)
  - Added Jenkinsfile.security for the veracode security organization in 
    Jenkins to scan this repo regularly. (#121)

#### Breaking Changes
  - python 3! (#119)

#### Improvements
  - sort dependencies lexicographically (#119)
  - use loose pins in setup.py (#119)
  - rename confusing varname items_equal to items_not_equal (#119)
  - initialize log level in the parent logger per cdislogging 1.0.0 breaking 
    change (#119)
  - promote idiomatic python by changing "type(v) is t" to "isinstance(v,t)" 
    (#119)

#### Dependency Updates
  - require python 3 (#119)
  - bump dictionaryutils, gen3datamodel (fka gdcdatamodel), psqlgraph, 
    psycopg2, pyspark, six (#119)
  - remove indirect dependencies oauthlib, psutil, python_dateutil, pyyaml 
    (#119)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#124)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#122)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#123)

## uc-cdis/workspace-token-service

#### Dependency Updates
  - Authlib back to 0.4.1 (#18)
  - ecdsa >= 0.13.3 and authlib ~= 0.11 (#17)

#### Improvements
  - Add Swagger documentation (#17)

## uc-cdis/gen3-fuse

#### Improvements
  - use internal manifest-service domain (#27)
  - sleep between iterations (#27)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#27)

## uc-cdis/gen3-spark

#### Bug Fixes
  - Fixes the failed 
    [Quay](https://quay.io/repository/cdis/gen3-spark/build/b67b1172-c15c-43dc-ba2d-a6067e542f13)
    build: (#10)
  - ``` (#10)
  - Package 'openjdk-8-jdk-headless' has no installation candidate (#10)
  - ``` (#10)
  - Cause:** `python:2-slim` have been updated from Stretch to Buster. (#10)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#11)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#10)

