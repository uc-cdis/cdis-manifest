# 

## uc-cdis/guppy

#### Improvements
  - ConnectedFilter: allow specifying extra fields to query aggregated data for 
    (#129)

## uc-cdis/manifestservice

#### Bug Fixes
  - update to latest base image to avoid issue with dockerrun (#27)

## uc-cdis/data-portal

#### Improvements
  - Explorer: allow configuring a chart for a field that is not configured as a 
    filter (#954)
  - Do not display the "Export PFB to workspace" button to users without 
    workspace access (#953)

#### New Features
  - Study viewer: hide empty fields with new `hideEmptyFields` flag (#952)
  - Add button to export study to workspace (#949)
  - Add documentation for new button (#949)
  - Add messaging for when export is in progress (#949)

## uc-cdis/sower-jobs

#### Bug Fixes
  - update to latest base image to avoid issue with dockerrun (#36)

#### New Features
  - New python base image (#32)
  - New python base image (#33)
  - New python base image (#34)
  - New python base image (#35)

## uc-cdis/metadata-service

#### Breaking Changes
  - Do not publish GitHub Packages (#42)

#### Improvements
  - Modify gen3 common adapter to support a config object. Needed to handle 
    differences in metadata structure (#41)
  - update documentation (#41)
  - update tests (#41)

## uc-cdis/dcf-dataservice

#### Bug Fixes
  - Change versions of packages, including apache-beam due to error during pip 
    install from old beam package (#101)

#### Dependency Updates
  - python_dateutil==2.8.2 (#101)
  - requests>=2.26.0<3.0.0 (#101)
  - boto3==1.20.24 (#101)
  - google-auth==2.3.3 (#101)
  - google-cloud==0.34.0 (#101)
  - google-resumable-media==2.1.0 (#101)
  - google-cloud-storage==1.43.0 (#101)
  - apache-beam[gcp]==2.34.0 (#101)
  - setuptools==59.6.0 (#101)

## uc-cdis/cloud-automation

#### New Features
  - Created a script to upgrade db versions (#1811)

#### Bug Fixes
  - add necessary deployment env vars for datadog to WTS (#1812)
  - invalidated the quay build cache (#1815)
  - putting an early change in to wipe out quay build cache (#1814)
  - Fixed certificate issues so psql13 could be pulled from the postgres 
    website (#1813)

