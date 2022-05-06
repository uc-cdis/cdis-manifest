# Core Gen3 Release 2022.05 (Biotite)

## uc-cdis/fence

#### Improvements
  - don't use json.dumps in logs, as it creates too many new lines that make 
    log parsing difficult (#1018)

## uc-cdis/guppy

#### Dependency Updates
  - Update gen3-ui-component to 0.11.1 (for stylelint 14) (#136)

## uc-cdis/indexd

#### Improvements
  - use central workflow github actions for image build and push (#331)
  - Upgrade to python3.9 (#330)

## uc-cdis/data-portal

#### New Features
  - Add an `explorerConfig.table.dicomViewerId` setting to link from the 
    Explorer to the DICOM viewer (#980)
  - Floating action bar on discovery page with download / export buttons (#975)

#### Bug Fixes
  - Add missing `rel='noreferrer'` for `target='_blank'` link (#982)

#### Improvements
  - use central workflow github actions for image build and push (#976)
  - Pin npm to 8.5 versions (#984)
  - cursor pointer on mouse over study row (#975)
  - tool tip for download button (#975)

#### Dependency Updates
  - Update gen3-ui-component to 0.11.1 (for stylelint 14) (#982)
  - Update guppy to 0.15.1 (for stylelint 14) (#982)
  - Upgrade stylelint to version 14.0.0 or higher. (#982)

## uc-cdis/tube

#### Bug Fixes
  - Fixing `psycopg2.OperationalError: SCRAM authentication requires libpq 
    version 10 or above` for `libpq` to connect to the new version of 
    PostgreSQL, fix from [here](https://stackoverflow.com/a/62808487/1030110). 
    (#170)
  - A bug was introduced in Tube for the creation of indices with the project 
    node as root. In PRC QA and Prod, we cannot access the data because the 
    auth_resource_path is wrong: (#169)
  - "auth_resource_path" : "/programs/['open']/projects/Com-Mobility" (#169)
  - We fixed that by checking the array type of data during the translation 
    (#169)

## uc-cdis/cloud-automation

#### New Features
  - Added configuration to setup secondary CIDR for workflow ASG (#1878)
  - Closing external access to cohort-data/* endpoints. The cohort-data 
    endpoints should only be used by internal services, and never be exposed to 
    users/browsers. (#1884)
  - visa update job for fence (cronjob already exists) (#1828)
  - Up the memory allocation for the job (#1869)
  - In aws-bucket-replicate-job: cat from dcf_dataservice_settings to 
    settings.py, now settings will not read from hardcoded file in repo (#1869)
  - add new config.json for argo-wrapper (#1872)
  - Added scripts for enabling FIPs on adminvms (#1866)
  - GH Action for python base image builds (#1861)
  - Python base image for Python 3.9 (#1861)

#### Bug Fixes
  - fixed syntax (#1889)
  - Fixed variable propagation (#1888)
  - Added taints to workflow nodes (#1887)
  - Fixed syntax error created when username contains underscore (#1880)
  - Changed install dir for aws cli to get around disk space issues. (#1845)

#### Improvements
  - Add IAM Service Linked Role for KMS (#1879)
  - Updates the kubernetes apt repository and installs the `kubectl` to match 
    the EKS version. (#1874)
  - whitelist apt.kubernetes.io - Kubernetes apt repository (#1870)

#### Dependency Updates
  - `gen3 kube-setup-workvm` needs sudo user privileges for the package 
    installation. (#1874)

## uc-cdis/audit-service

#### Improvements
  - Upgrade to Python 3.9. (#17)

