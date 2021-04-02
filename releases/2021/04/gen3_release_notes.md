# 

## uc-cdis/fence

#### Bug Fixes
  - Fix RAS login intermittent failure after callback (#891)

#### Improvements
  - Use fence config to determine whether or not to parse visas during login. 
    (#891)

## uc-cdis/guppy

#### Improvements
  - add hideEmptyFilterSection flag and functionality to hide empty filter 
    sections (#116)
  - add handling of edge case where tab will have no visible filters (#116)

#### Dependency Updates
  - Update @gen3/ui-component dependency to version 0.7.0 (#116)

## uc-cdis/data-portal

#### New Features
  - add hideEmptyFilterSection flag and functionality to hide empty filter 
    sections (#833)
  - add handling of edge case where tab will have no visible filters (#833)

#### Dependency Updates
  - Update @gen3/ui-component dependency to version 0.7.0 (#833)
  - Update @gen3/guppy dependency to version 0.11.3 (#833)

#### Improvements
  - Change explorerConfig.table.fields to optional (#818)
  - Add local portal documentation to data-portal repo (#831)
  - Update the path to the PRC top10 chart data (#832)
  - Add optional config `hideSubmissionIfIneligible` to hide link/button to 
    `/submission` for users who don't have permission to submit data (#829)

## uc-cdis/ssjdispatcher

#### Improvements
  - Link to cloud-automation setup docs (#37)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#37)

## uc-cdis/tube

#### Bug Fixes
  - Fix bug where whitespace is unintentionally left in name (#143)

## uc-cdis/cloud-automation

#### New Features
  - Add covid19-bayes-model job (#1563)
  - Make copies of the "nb-etl" files; rename them "covid19-notebook-etl". The 
    new "covid19-notebook-etl" job (daily) only runs notebooks. The old files 
    will stay here until we can completely deprecate the "nb-etl" job (weekly), 
    which runs notebooks + the Bayes model. The "nb-etl" job will eventually be 
    replaced by a "covid19-bayes-model" job that only runs the Bayes model. 
    (#1556)

#### Dependency Updates
  - Bumps [ini](https://github.com/isaacs/ini) from 1.3.5 to 1.3.7. (#1470)

#### Improvements
  - Roll all: deploy audit-service before fence (#1548)

