# Core Gen3 Release (Zircon)

## uc-cdis/cloud-automation

#### Improvements
  - Add a log to Slack when the `gitops-sync` job initially detects changes and 
    is about to deploy them ([#2411](https://github.com/uc-cdis/cloud-automation/pull/2411)) 
  - removing check for anonymous user for OHIF Viewer ([#2410](https://github.com/uc-cdis/cloud-automation/pull/2410)) 
  - add app-config.js needed for OHIF Viewer with backward compatible 
    configuration to support old and new Orthanc server based on if new Orthanc 
    is deployed in the manifest ([#2406](https://github.com/uc-cdis/cloud-automation/pull/2406)) 
  - Exclude containers from being monitored by DD to reduce on demand cost 
    ([#2390](https://github.com/uc-cdis/cloud-automation/pull/2390))
  - CEDAR ingest job will get parameters from g3auto secrets so that it can be 
    run as cron job. ([#2387](https://github.com/uc-cdis/cloud-automation/pull/2387)) 
  - update CEDAR ingest script to use client-credentials instead of `username`. 
    ([#2387](https://github.com/uc-cdis/cloud-automation/pull/2387))
  - gitops sync will fail if there is a json syntax error anywhere in the 
    manifest.json ([#2377](https://github.com/uc-cdis/cloud-automation/pull/2377)) 

#### New Features
  - do not allow POST for /studies endpoint in Orthanc ([#2386](https://github.com/uc-cdis/cloud-automation/pull/2386)) 
  - Add new config for integrating teamproject and arborist check: these 
    properties are needed for enabling "teamproject" authorization mode in 
    WebAPI and telling WebAPI where the Arborist endpoint is living for 
    actually getting authorization information. ([#2397](https://github.com/uc-cdis/cloud-automation/pull/2397)) 
  - This script will allow users to spin up a new elasticsearch 7 cluster that 
    will use the same settings as the existing elasticsearch 6 cluster in 
    preparation for a blue/green deployment. It will extract VPC, instance 
    type, instance quantity, EBS storage size, KMS key, access policy, etc. 
    ([#2389](https://github.com/uc-cdis/cloud-automation/pull/2389))

#### Bug Fixes
  - reverts https://github.com/uc-cdis/cloud-automation/pull/2397 , to set 
    ARBORIST_URL using the `gen3/bin/kube-setup-ohdsi.sh` script ([#2400](https://github.com/uc-cdis/cloud-automation/pull/2400)) 
  - do not allow random origin, only data-commons Origin ([#2391](https://github.com/uc-cdis/cloud-automation/pull/2391)) 

#### Dependency Updates
  - The WebAPI deployment now depends not only on Fence, but also needs a 
    direct link to Arborist ([#2397](https://github.com/uc-cdis/cloud-automation/pull/2397)) 

#### Deployment Changes
  - Add grafana.github.io to whitelist ([#2405](https://github.com/uc-cdis/cloud-automation/pull/2405)) 
  - compared to previous PR, this one assumes the arborist service is located 
    on the same host as OHDSI - WebAPI ([#2400](https://github.com/uc-cdis/cloud-automation/pull/2400)) 
  - This assumes Arborist and WebAPI are on the same internal network ([#2397](https://github.com/uc-cdis/cloud-automation/pull/2397)) 

## uc-cdis/data-portal

#### Dependency Updates
  - Bumps 
    [@babel/traverse](https://github.com/babel/babel/tree/HEAD/packages/babel-traverse)
    from 7.22.5 to 7.23.2. (#1440)

#### Bug Fixes
  - Reload Workspace Options when a user selects a different pay model ([#1447](https://github.com/uc-cdis/data-portal/pull/1447)) 
  - Discovery: system popups (e.g.: DUA/TOU) will now takes precendes to 
    display over Discovery page popups (file download/export, etc.) ([#1439](https://github.com/uc-cdis/data-portal/pull/1439)) 
  - Misc: update CSP to unblock GA actions ([#1438](https://github.com/uc-cdis/data-portal/pull/1438)) 

#### New Features
  - Adds team project header in the App Selection view to display to end user 
    current team project selection ([#1443](https://github.com/uc-cdis/data-portal/pull/1443)) 
  - Adds modal for team project selection; provides functionality to select 
    team project and update team project header. ([#1443](https://github.com/uc-cdis/data-portal/pull/1443)) 
  - Generalize IdP-based access control ([#1441](https://github.com/uc-cdis/data-portal/pull/1441)) 
  - Enable Results button and download action only for succeeded workflows 
    ([#1435](https://github.com/uc-cdis/data-portal/pull/1435))
  - Adds a Fullscreen button to GWAS App ([#1435](https://github.com/uc-cdis/data-portal/pull/1435)) 

#### Improvements
  - Reorganizes location of Team Project API files to Utils directory ([#1443](https://github.com/uc-cdis/data-portal/pull/1443)) 
  - Updates TeamProjectModal.css to comply with stylelinter ([#1443](https://github.com/uc-cdis/data-portal/pull/1443)) 

## uc-cdis/guppy

#### Breaking Changes
  - Any environment using ElasticSearch 6.x will break with the new version 
    ([#200](https://github.com/uc-cdis/guppy/pull/200))

#### Improvements
  - Move from travis to GH action ([#247](https://github.com/uc-cdis/guppy/pull/247)) 

#### Deployment Changes
  - We need to upgrade the target environment to use ElasticSearch 7.10 or 
    OpenSearch before using this new guppy. ([#200](https://github.com/uc-cdis/guppy/pull/200)) 
  - We also need to upgrade Tube to new version that is compatible with ES7. 
    Checking [this link](https://github.com/uc-cdis/tube/pull/238) for the 
    corresponding PR of Tube. ([#200](https://github.com/uc-cdis/guppy/pull/200)) 

## uc-cdis/hatchery

#### New Features
  - Per-container authorization based on resource paths and pay models ([#84](https://github.com/uc-cdis/hatchery/pull/84)) 

#### Bug Fixes
  - Replace route to IGW if it already exists ([#85](https://github.com/uc-cdis/hatchery/pull/85)) 

#### Improvements
  - Add error handling when the Hatchery configuration file cannot be parsed 
    ([#84](https://github.com/uc-cdis/hatchery/pull/84))
  - Add error handling when attempting to launch a container that is not in the 
    list of configured containers ([#84](https://github.com/uc-cdis/hatchery/pull/84)) 
  - Improve unit tests set up: set up global test logger; use `defer` to always 
    restore mocked functions even if a test fails ([#84](https://github.com/uc-cdis/hatchery/pull/84)) 

## uc-cdis/indexd

#### Improvements
  - fixes to documentation (dataguids URL and swagger URL) ([#364](https://github.com/uc-cdis/indexd/pull/364)) 

## uc-cdis/manifestservice

#### Improvements
  - Use GH workflow for CI instead of Travis-ci ([#34](https://github.com/uc-cdis/manifestservice/pull/34)) 

#### Dependency Updates
  - Use Python 3.9 ([#34](https://github.com/uc-cdis/manifestservice/pull/34))
  - Update flask, authutils, cryptography and other dependencies ([#34](https://github.com/uc-cdis/manifestservice/pull/34)) 

## uc-cdis/pelican

#### Bug Fixes
  - Fixes issue with pelican that prevented PFBs with more than 10k entries 
    from being created. ([#78](https://github.com/uc-cdis/pelican/pull/78))

#### Improvements
  - Support for AWS SSE version 4 ([#78](https://github.com/uc-cdis/pelican/pull/78)) 

## uc-cdis/peregrine

#### Dependency Updates
  - Upgrade flask ([#205](https://github.com/uc-cdis/peregrine/pull/205))

## uc-cdis/sheepdog

#### Improvements
  - Code coverage reported to coveralls through GH action. ([#401](https://github.com/uc-cdis/sheepdog/pull/401)) 
  - Replaces codacy badge with coveralls ([#401](https://github.com/uc-cdis/sheepdog/pull/401)) 

## uc-cdis/ssjdispatcher

#### Dependency Updates
  - update to Go 1.20 ([#54](https://github.com/uc-cdis/ssjdispatcher/pull/54))
  - dependency updates, should fix 
    [PPS-418](https://ctds-planx.atlassian.net/browse/PPS-418) ([#54](https://github.com/uc-cdis/ssjdispatcher/pull/54)) 

## uc-cdis/tube

#### Breaking Changes
  - Will break with current ES6 cluster ([#238](https://github.com/uc-cdis/tube/pull/238)) 

#### Bug Fixes
  - Fix the count aggregated function that is hidden due to the wrong name 
    alias ([#247](https://github.com/uc-cdis/tube/pull/247))
  - Fix issue created by Github's change of refs_tags ([#245](https://github.com/uc-cdis/tube/pull/245)) 
  - Fix to build image ([#244](https://github.com/uc-cdis/tube/pull/244))
