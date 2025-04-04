# Core Gen3 Release 2025.04 (Colemanite)
## uc-cdis/audit-service

#### Dependency Updates
  - jinja2 >= 1.3.5 ([#66](https://github.com/uc-cdis/audit-service/pull/66))

## uc-cdis/cloud-automation

#### New Features
  - New job and cronjob to test launching workspaces. ([#2695](https://github.com/uc-cdis/cloud-automation/pull/2695)) 
  - Add map_file option to validation ([#2686](https://github.com/uc-cdis/cloud-automation/pull/2686)) 
  - Add GDC_project_map mount on Google Replication ([#2686](https://github.com/uc-cdis/cloud-automation/pull/2686)) 

#### Improvements
  - Gitops sync currently does not reset all cronjobs causing cronjobs to 
    utilize outdated images. ([#2736](https://github.com/uc-cdis/cloud-automation/pull/2736)) 
  - We need to conditionally roll Spark during "roll all" to ensure the image 
    is updated. ([#2741](https://github.com/uc-cdis/cloud-automation/pull/2741))
  - Spark was not getting rolled for releases when using "gen3 roll all" since 
    the logic would only roll spark if the deployment didn't exist already. We 
    want to change the functionality to roll the Spark service as long as there 
    are no actively running ETL jobs. ([#2543](https://github.com/uc-cdis/cloud-automation/pull/2543)) 
  - Add Harvard Dataverse hostname to squid whitelist ([#2726](https://github.com/uc-cdis/cloud-automation/pull/2726)) 

#### Dependency Updates
  - Add `gibberish-detector` to pre-commit hook. ([#2686](https://github.com/uc-cdis/cloud-automation/pull/2686)) 

## uc-cdis/data-portal

#### Improvements
  - use fractional height value for external footer ([#1677](https://github.com/uc-cdis/data-portal/pull/1677)) 
  - Explorer page: Do not allow users to click "download manifest" button when 
    the query to ElasticSearch would fail due to having too many terms in the 
    query. Instead, let the user know: "too many rows to download at once; make 
    a smaller selection" ([#1670](https://github.com/uc-cdis/data-portal/pull/1670)) 

## uc-cdis/fence

#### Bug Fixes
  - fix the 'None' string appearing because of yaml variable with no value 
    ([#1231](https://github.com/uc-cdis/fence/pull/1231))
  - Fixed usersync decrypted result not parsing ([#1230](https://github.com/uc-cdis/fence/pull/1230)) 
  - fix --no-dev docker issue with updated poetry instance ([#1210](https://github.com/uc-cdis/fence/pull/1210)) 
  - Fix bug where usersync would not properly revoke policies in arborist for 
    data commons that historically have used all caps usernames. ([#1225](https://github.com/uc-cdis/fence/pull/1225)) 

#### Improvements
  - minor format change to help with readability ([#1231](https://github.com/uc-cdis/fence/pull/1231)) 
  - Update to use new Amazon Linux base image and use the same structure as our 
    other python services. ([#1207](https://github.com/uc-cdis/fence/pull/1207))
  - Utilizing "gen3" user instead of "root" for more secure containers ([#1207](https://github.com/uc-cdis/fence/pull/1207)) 
  - Moving to Poetry to manage our virtual environments ([#1207](https://github.com/uc-cdis/fence/pull/1207)) 
  - Multi-stage Docker builds for smaller images ([#1207](https://github.com/uc-cdis/fence/pull/1207)) 
  - Move to Gunicorn ([#1207](https://github.com/uc-cdis/fence/pull/1207))

## uc-cdis/indexd

#### Bug Fixes
  - Fix Single Table not showing proper `urls_metadata` output ([#390](https://github.com/uc-cdis/indexd/pull/390)) 

#### Improvements
  - Add indexes to `record` table ([#386](https://github.com/uc-cdis/indexd/pull/386)) 

#### Deployment Changes
  - Requires alembic migration to `b61e2d4aa93d` ([#386](https://github.com/uc-cdis/indexd/pull/386)) 

## uc-cdis/manifestservice

#### Dependency Updates
  - jinja2 >= 3.1.5 ([#63](https://github.com/uc-cdis/manifestservice/pull/63))

## uc-cdis/peregrine

#### Dependency Updates
  - jinja2 3.1.5 ([#234](https://github.com/uc-cdis/peregrine/pull/234))

## uc-cdis/sheepdog

#### Bug Fixes
  - Fixed: `version_data.py` was being updated at an incorrect location during 
    docker image build ([#431](https://github.com/uc-cdis/sheepdog/pull/431))

## uc-cdis/sower-jobs

#### Improvements
  - Use V4 signature for batch-export job presigned URLs ([#63](https://github.com/uc-cdis/sower-jobs/pull/63)) 

## uc-cdis/workspace-token-service

#### Dependency Updates
  - jinja2 = ">=3.1.5" ([#96](https://github.com/uc-cdis/workspace-token-service/pull/96)) 

