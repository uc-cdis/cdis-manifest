## uc-cdis/cdis-data-client

#### New Features
  - Add bucket selection support for multi part upload ([#123](https://github.com/uc-cdis/cdis-data-client/pull/123)) 
  - Add bucket selection support for single part upload ([#123](https://github.com/uc-cdis/cdis-data-client/pull/123)) 
  - Add bucket selection support for `upload-multiple` ([#123](https://github.com/uc-cdis/cdis-data-client/pull/123)) 
  - Add multi-part support for `upload-multiple` ([#123](https://github.com/uc-cdis/cdis-data-client/pull/123)) 

## uc-cdis/cloud-automation

#### New Features
  - adding a script that will allow users to migrate to use the AWS VPC CNI to 
    manage networkpolicies after upgrading their cluster to 1.25 ([#2446](https://github.com/uc-cdis/cloud-automation/pull/2446)) 

#### Bug Fixes
  - Added cron to squid ([#2463](https://github.com/uc-cdis/cloud-automation/pull/2463)) 
  - https://github.com/kubernetes-sigs/aws-load-balancer-controller/issues/2692 
    ([#2459](https://github.com/uc-cdis/cloud-automation/pull/2459))
  - Check and restart squid more often to ensure it comes up healthy at startup 
    ([#2457](https://github.com/uc-cdis/cloud-automation/pull/2457))

#### Improvements
  - Removed dns autoscaler deployment ([#2460](https://github.com/uc-cdis/cloud-automation/pull/2460)) 
  - Updated squid script to work with al23 ([#2456](https://github.com/uc-cdis/cloud-automation/pull/2456)) 
  - Update HEAL CEDAR ingestion script to adapt for CEDAR schema v0.05 ([#2454](https://github.com/uc-cdis/cloud-automation/pull/2454)) 
  - Adding "internet: yes" label ([#2440](https://github.com/uc-cdis/cloud-automation/pull/2440)) 
  - We are switching off of Calico to AWS VPC CNI to manage our network 
    policies. We believe AWS VPC CNI to have more restrictive defaults than our 
    previous version of Calico, so revproxy needs to have an explicit allow for 
    all egress traffic. ([#2440](https://github.com/uc-cdis/cloud-automation/pull/2440)) 
  - Updating AWS VPC CNI version ([#2440](https://github.com/uc-cdis/cloud-automation/pull/2440)) 
  - We are moving off of Calico and to AWS VPC CNI to manage our 
    networkpolicies. The VPC CNI plugin is able to manage network policies in 
    version 1.14.1 ([#2440](https://github.com/uc-cdis/cloud-automation/pull/2440)) 
  - Mounting the BPF File System ([#2440](https://github.com/uc-cdis/cloud-automation/pull/2440)) 
  - Mounting this file system in the "user data" section of all our Karpenter 
    node templates as this is required for the VPC CNI plugin to manage network 
    policies ([#2440](https://github.com/uc-cdis/cloud-automation/pull/2440))

#### Dependency Updates
  - Updraded karpenter to a supported version when running eks 1.25+ ([#2450](https://github.com/uc-cdis/cloud-automation/pull/2450)) 

## uc-cdis/data-portal

#### Improvements
  - Update the list of HEAL-compliant repos to reflect new options (see 
    https://www.healdatafair.org/resources/guidance/selection) and better 
    present some existing repo names ([#1486](https://github.com/uc-cdis/data-portal/pull/1486)) 
  - Fixes stylelint issue in 
    src/Analysis/SharedUtils/TeamProject/TeamProjectHeader/TeamProjectHeader.css
    ([#1483](https://github.com/uc-cdis/data-portal/pull/1483))
  - Misc: filter known bot seesion on intake for DD RUM ([#1455](https://github.com/uc-cdis/data-portal/pull/1455)) 
  - Study viewer: always query the configured "defaultOrderBy" field ([#1480](https://github.com/uc-cdis/data-portal/pull/1480)) 
  - Add support for regular italic Roboto font ([#1479](https://github.com/uc-cdis/data-portal/pull/1479)) 

#### New Features
  - Adds table with styling to VADC Atlas Data Dictionary App ([#1483](https://github.com/uc-cdis/data-portal/pull/1483)) 

#### Dependency Updates
  - Adds Mantine V6 to VADC ([#1483](https://github.com/uc-cdis/data-portal/pull/1483)) 
  - Added `crawler-user-agents` ([#1455](https://github.com/uc-cdis/data-portal/pull/1455)) 
  - Guppy to `0.18.1` ([#1481](https://github.com/uc-cdis/data-portal/pull/1481)) 

#### Bug Fixes
  - Update Guppy for search box query CSRF fix ([#1481](https://github.com/uc-cdis/data-portal/pull/1481)) 

## uc-cdis/fence

#### Improvements
  - improve signed URL data metrics log by adding client_id from token ([#1130](https://github.com/uc-cdis/fence/pull/1130)) 
  - dependency cleanup. storageclient code migrated from multiple libraries 
    (causing circular dependency issues) to Fence, the only place where the 
    code was used ([#1132](https://github.com/uc-cdis/fence/pull/1132))

#### Dependency Updates
  - ensure use of tagged deps ([#1135](https://github.com/uc-cdis/fence/pull/1135)) 
  - update urllib3 ([#1132](https://github.com/uc-cdis/fence/pull/1132))

## uc-cdis/guppy

#### Bug Fixes
  - Fixed a bug causing Guppy not passing CSRF token along with search field 
    queries ([#252](https://github.com/uc-cdis/guppy/pull/252))

## uc-cdis/hatchery

#### New Features
  - Nextflow: Support for username placeholder in `job-image-whitelist` 
    configuration ([#93](https://github.com/uc-cdis/hatchery/pull/93))

#### Breaking Changes
  - The misnamed `nextflow.instance-type` configuration is now 
    `nextflow.compute-environment-type`, used to configure the batch compute 
    environment type. A new `nextflow.instance-type` configuration can be used 
    to configure the batch jobs instance type. ([#90](https://github.com/uc-cdis/hatchery/pull/90)) 

#### Bug Fixes
  - Fixes a bug where create cloudwatch log group function wasn't returning the 
    name, so first launch would fail. ([#76](https://github.com/uc-cdis/hatchery/pull/76)) 
  - Fixes a bug where transit gateway wasn't being shared because of a race 
    condition, added up to 10 retries, and 10s waits ([#76](https://github.com/uc-cdis/hatchery/pull/76)) 
  - Nextflow: Configure the AMI for both CPU and GPU instances ([#92](https://github.com/uc-cdis/hatchery/pull/92)) 

#### Improvements
  - Launches into new AWS accounts should work on first try now. ([#76](https://github.com/uc-cdis/hatchery/pull/76)) 

## uc-cdis/indexd

#### Dependency Updates
  - flask = "^2.3.3" ([#374](https://github.com/uc-cdis/indexd/pull/374))

## uc-cdis/manifestservice

#### Dependency Updates
  - Bump cryptography to 41.0.6 ([#40](https://github.com/uc-cdis/manifestservice/pull/40)) 

## uc-cdis/tube

#### Bug Fixes
  - Fixing bug on aggregated count to filter the null entries which result the 
    incorrect data ([#251](https://github.com/uc-cdis/tube/pull/251))

