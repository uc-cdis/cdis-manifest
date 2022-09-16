# Core Gen3 Release 2022.09 (Emerald)

## uc-cdis/fence

#### Dependency Updates
  - cryptography and others (#1032)

## uc-cdis/guppy

#### Bug Fixes
  - fix field check to also search for sub categories using dot separated field 
    names (#143)
  - fix lint error in queries file (#143)

## uc-cdis/hatchery

#### Bug Fixes
  - Fix linter errors (#49)

#### Dependency Updates
  - Bumps 
    [sigs.k8s.io/aws-iam-authenticator](https://github.com/kubernetes-sigs/aws-iam-authenticator)
    from 0.5.3 to 0.5.9. (#50)

## uc-cdis/data-portal

#### Improvements
  - Add feature to display tags below the last line of the description on the 
    Discovery Page. (#1055)
  - This can be enable by setting the DiscoveryConfig to: (#1055)
  - ``` (#1055)
  - ... (#1055)
  - "tagsColumn" : { (#1055)
  - "enabled": false (#1055)
  - }, (#1055)
  - "tagsInDescription" : { (#1055)
  - "enabled": true (#1055)
  - } (#1055)
  - ... (#1055)
  - ``` (#1055)
  - Add disclaimer text to Study Registration form. (#1043)
  - Discovery: add explaination tooltips to table rows and checkboxes (#1041)
  - Update text in Registration Access request confirmation page. (#1039)
  - Workspace: update workspace error messages (#1036)
  - Footer area heights is auto-adjustable now if using external footer (#1033)

#### Bug Fixes
  - Clearing state variable on button press for registering another study 
    (#1057)
  - Discovery: fixed a bug causing active tab status didn't get reset after 
    closing the details view (#1040)
  - Misc: fixed a bug causing webpack devserver websocket connection get 
    rejected by host/origin issue (#1040)
  - Workspace: fixed a bug causing workspace page to crash if no pay model is 
    set (#1038)

#### New Features
  - Add Study Registration page (#1033)
  - Add Study Registration Request Access page (#1033)
  - add new text to study viewer login alert (#1032)

#### Dependency Updates
  - Bumps [undici](https://github.com/nodejs/undici) from 5.5.1 to 5.8.1. 
    (#1051)
  - Bumps [moment](https://github.com/moment/moment) from 2.29.3 to 2.29.4. 
    (#1046)
  - Bumps [undici](https://github.com/nodejs/undici) from 5.0.0 to 5.5.1. 
    (#1019)
  - Bumps [terser](https://github.com/terser/terser) from 4.8.0 to 4.8.1. 
    (#1035)

## uc-cdis/sower

#### Bug Fixes
  - Fix linter errors (#34)

## uc-cdis/tube

#### New Features
  - Adding documentation on how to run tube tests locally. (#188)

## uc-cdis/workspace-token-service

#### New Features
  - Add `/aggregate/{endpoint}` which calls `endpoint` on each linked commons 
    and returns an aggregated response to the end user (#36)

#### Improvements
  - Replaced `pipenv` with `poetry` (#36)
  - Upgraded to Python 3.9 (Async Flask functionality requires Python >= 3.7) 
    (#36)

#### Dependency Updates
  - upgrade `Python` to `3.9` (#36)
  - upgrade `Flask` to `2.1.3` (#36)
  - upgrade `pyyaml` to `5.4.1` (#36)

#### Bug Fixes
  - Docker builds (#43)

## uc-cdis/dcf-dataservice

#### New Features
  - Updated packages for google replication script (#110)
  - Added GitHub workflow for building images (#110)
  - Changes to Docker file for pip install/update (#110)

#### Bug Fixes
  - redaction wasn't deleting indexd records unless the gs or s3 url was still 
    active, it would error out on the exception due to misnamed error property 
    (#109)

#### Dependency Updates
  - google-auth (#110)
  - requests (#110)
  - urllib3 (#110)
  - google-cloud-core (#110)
  - google-resumable-media (#110)
  - google-cloud-storage (#110)
  - httplib2 (#110)
  - pyparsing (#110)
  - apache-beam[gcp] (#110)
  - cdislogging (#110)
  - cdiserrors (#110)
  - indexclient (#110)

## uc-cdis/cloud-automation

#### New Features
  - `kube-setup-ohdsi` script for Atlas & WebAPI setup (#2015)
  - Add CEDAR data ingestion k8s job (#2004)
  - specific a `document_url` in `manifest-global` to let 
    `<HOSTNAME>/documentation` redirects to that external doc site (#2000)
  - To make Argo available from any environment (#1997)

#### Bug Fixes
  - Removing support.datacommons.io as datacommons.io is in the wildcard 
    whitelist (#1996)
  - fix for test_mfilter — the expected fence yaml was not updated after 
    [this](https://github.com/uc-cdis/cloud-automation/pull/1991/files#diff-3abade88c11a6c1df14a5674feae508fc3c8f7f87320f8168466269f7d5c2e68R278)
    (#1998)

#### Improvements
  - add api.epigraphdb.org to whitelist (#2013)

#### Deployment Changes
  - Completely new setup for OHDSI tools (Atlas + WebAPI) — now automated, and 
    similar to any other services and require only `kube-setup-ohdsi` to 
    configure and roll everything (#2015)

## uc-cdis/requestor

#### New Features
  - Support "client credentials" tokens that are not linked to a user in all 
    endpoints, except those that specifically query users' requests, and the 
    "list requests" endpoint which will be updated at a later time (#42)
  - Create request using role_ids and resource_paths (#39)

#### Bug Fixes
  - Update param in call to `create_arborist_policy` in migrations to match new 
    signature of method. (#41)

#### Dependency Updates
  - Update gen3authz to 2.0.0 (#39)

