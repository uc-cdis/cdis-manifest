# Core Gen3 Release 2025.01 (Chiolite)

Happy New Year!

## Release Highlights and Announcements

#### Standardization of containers 
  - Multiple services were updated to:
    - use Amazon Linux as the base image
    - use the "gen3" user rather than "root"
    - move to Poetry to manage virtual environments
    - use multi-stage Docker builds for smaller images
    - move to Gunicorn

#### Fence changes for user management (some breaking changes)
  - We've performed some clean-up on fence -- for example, to standardize the use of `username` instead of a mix of `name` and `username` 
    in the /admin/user endpoints -- and added an endpoint to soft-delete users. For the details and list of other changes, please see the [fence entry](#breaking-changes), below.


## uc-cdis/arborist

#### Improvements
  - Updated to use scratch base and nobody user ([#168](https://github.com/uc-cdis/arborist/pull/168)) 

## uc-cdis/audit-service

#### Improvements
  - Update to use new Amazon Linux base image and use the same structure as our 
    other python services. ([#40](https://github.com/uc-cdis/audit-service/pull/40)) 
  - Utilizing "gen3" user instead of "root" for more secure containers ([#40](https://github.com/uc-cdis/audit-service/pull/40)) 
  - Moving to Poetry to manage our virtual environments ([#40](https://github.com/uc-cdis/audit-service/pull/40)) 
  - Multi-stage Docker builds for smaller images ([#40](https://github.com/uc-cdis/audit-service/pull/40)) 
  - Move to Gunicorn ([#40](https://github.com/uc-cdis/audit-service/pull/40))

## uc-cdis/cloud-automation

#### Improvements
  - These are the changes necessary for the "batch-export" sower job to run 
    with IRSA instead of AWS keys. Also, the batch-export job will no longer 
    rely on the config.json file. Instead, it will automatically create a 
    batch-export-g3auto configmap that contains the bucket name. This bucket 
    name will then be passed into the export job as an environment variable. 
    ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - Removed datadog ([#2676](https://github.com/uc-cdis/cloud-automation/pull/2676)) 
  - removing old squid file from cloud auto as it now lives in "base_images" 
    repo", so we can use updated squid version on secure AL base image ([#2675](https://github.com/uc-cdis/cloud-automation/pull/2675)) 

#### Deployment Changes
  - Manifest.json files MUST be changed to use the new "batch-export-sa" 
    service account and the "BUCKET" environment variable must be set to the 
    batch-export-g3auto secret with the "bucket_name" key. You also no longer 
    need to mount the batch-export-g3auto secret as this is now deprecated (it 
    is replaced by the batch-export-g3auto configmap). ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - ``` ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - "serviceAccountName": "batch-export-sa"... ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - name: BUCKET ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - valueFrom: ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - configMapKeyRef: ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - name: batch-export-g3auto ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - key: bucket_name ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - Remove the following: ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - "volumeMounts": [ ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - { ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - "name": "batch-export-creds-volume", ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - "readOnly": true, ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - "mountPath": "/batch-export-creds.json", ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - "subPath": "config.json" ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - } ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - ], ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - }, ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - "volumes": [ ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - { ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - "name": "batch-export-creds-volume", ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - "secret": { ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - "secretName": "batch-export-g3auto" ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531)) 
  - } ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - } ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - ], ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))
  - ``` ([#2531](https://github.com/uc-cdis/cloud-automation/pull/2531))

#### New Features
  - Adds gen3-user-data-library ([#2674](https://github.com/uc-cdis/cloud-automation/pull/2674)) 

#### Bug Fixes
  - fixes error `Two authorization rules expected for ‘teamproject’=/abc, 
    found=3` by using the `/authz/request` endpoint instead of `/authz/mapping` 
    ([#2677](https://github.com/uc-cdis/cloud-automation/pull/2677))
  - see also https://github.com/uc-cdis/WebAPI/pull/166 ([#2677](https://github.com/uc-cdis/cloud-automation/pull/2677)) 

## uc-cdis/data-portal

#### Dependency Updates
  - Bumps [nanoid](https://github.com/ai/nanoid) from 3.3.6 to 3.3.8. (#1661)
  - update `cookie` ([#1658](https://github.com/uc-cdis/data-portal/pull/1658))
  - Bumps [express](https://github.com/expressjs/express) from 4.21.0 to 
    4.21.1. (#1656)
  - Bumps [elliptic](https://github.com/indutny/elliptic) from 6.5.4 to 6.6.1. 
    (#1652)
  - update jest ([#1655](https://github.com/uc-cdis/data-portal/pull/1655))
  - update cross-spawn ([#1655](https://github.com/uc-cdis/data-portal/pull/1655)) 

#### New Features
  - update to AL2 base image ([#1634](https://github.com/uc-cdis/data-portal/pull/1634)) 
  - add configurable title to Profile page ([#1641](https://github.com/uc-cdis/data-portal/pull/1641)) 
  - add logout warning to session manager ([#1636](https://github.com/uc-cdis/data-portal/pull/1636)) 
  - add link to access denied page ([#1616](https://github.com/uc-cdis/data-portal/pull/1616)) 
  - updated access denied to new design ([#1616](https://github.com/uc-cdis/data-portal/pull/1616)) 
  - add please login to access text to login page ([#1617](https://github.com/uc-cdis/data-portal/pull/1617)) 

#### Bug Fixes
  - change "blow" typo to "below" ([#1654](https://github.com/uc-cdis/data-portal/pull/1654)) 
  - ensures the old AtlasDictionaryButton behavior is fully restored. ([#1649](https://github.com/uc-cdis/data-portal/pull/1649)) 
  - Fixes eslint-new linting ([#1649](https://github.com/uc-cdis/data-portal/pull/1649)) 
  - Improves accessibility ([#1649](https://github.com/uc-cdis/data-portal/pull/1649)) 
  - Make front end team project role function look for specific read permission 
    ([#1633](https://github.com/uc-cdis/data-portal/pull/1633))
  - QA user without team project permission without fix ([#1633](https://github.com/uc-cdis/data-portal/pull/1633)) 
  - <img width="1419" alt="Screenshot 2024-11-12 at 2 50 55 PM" 
    src="https://github.com/user-attachments/assets/e5330267-1d60-42d0-9215-02151437bdbe">
    ([#1633](https://github.com/uc-cdis/data-portal/pull/1633))
  - qa user without team project permission with fix ([#1633](https://github.com/uc-cdis/data-portal/pull/1633)) 
  - <img width="1427" alt="Screenshot 2024-11-12 at 2 52 38 PM" 
    src="https://github.com/user-attachments/assets/701950f9-79e2-4c44-97fa-d7f6de381921">
    ([#1633](https://github.com/uc-cdis/data-portal/pull/1633))

#### Improvements
  - Discovery: display link with title for batch export result ([#1657](https://github.com/uc-cdis/data-portal/pull/1657)) 
  - update h2s to h1s for main page headings to conform with ADA standards 
    ([#1641](https://github.com/uc-cdis/data-portal/pull/1641))
  - Login page ([#1641](https://github.com/uc-cdis/data-portal/pull/1641))
  - Apps page ([#1641](https://github.com/uc-cdis/data-portal/pull/1641))
  - Individual Apps ([#1641](https://github.com/uc-cdis/data-portal/pull/1641))
  - Workspace page ([#1641](https://github.com/uc-cdis/data-portal/pull/1641))
  - Profile page ([#1641](https://github.com/uc-cdis/data-portal/pull/1641))
  - Resource browser ([#1641](https://github.com/uc-cdis/data-portal/pull/1641))
  - 508 coloring change for VA mailing link ([#1638](https://github.com/uc-cdis/data-portal/pull/1638)) 
  - Before: ([#1638](https://github.com/uc-cdis/data-portal/pull/1638))
  - <img width="2168" alt="Screenshot 2024-11-14 at 3 22 49 PM" 
    src="https://github.com/user-attachments/assets/5f8d8858-fa22-48af-baa1-7d8a6feb08ab">
    ([#1638](https://github.com/uc-cdis/data-portal/pull/1638))
  - After: ([#1638](https://github.com/uc-cdis/data-portal/pull/1638))
  - <img width="2171" alt="Screenshot 2024-11-14 at 3 20 39 PM" 
    src="https://github.com/user-attachments/assets/aab811e8-fed2-4f75-b8b3-09989e11e29a">
    ([#1638](https://github.com/uc-cdis/data-portal/pull/1638))
  - fix misplaced html ul element ([#1637](https://github.com/uc-cdis/data-portal/pull/1637)) 
  - refactor header and nav elements ([#1637](https://github.com/uc-cdis/data-portal/pull/1637)) 
  - add aria labels to nav elements ([#1637](https://github.com/uc-cdis/data-portal/pull/1637)) 
  - Introduced the `OpenFillRequestFormButton` in the Discovery action bar 
    component, allowing users to submit a fill request form with dynamic query 
    generation based on selected resources. ([#1551](https://github.com/uc-cdis/data-portal/pull/1551)) 
  - Add a few config fields that are related to `OpenFillRequestFormButton`. 
    See `docs/portal_config.md` for details ([#1551](https://github.com/uc-cdis/data-portal/pull/1551)) 

## uc-cdis/fence

#### Breaking Changes
  - remove `role` field from /admin/user POST endpoint ([#1202](https://github.com/uc-cdis/fence/pull/1202)) 
  - set `User.is_admin` to DEPRECATED ([#1202](https://github.com/uc-cdis/fence/pull/1202)) 
  - deprecation notices for future breaking changes where we'll remove a number 
    of legacy endpoints ([#1201](https://github.com/uc-cdis/fence/pull/1201))
  - some of the admin endpoints and methods now expect `username` instead of 
    `name`. ([#1189](https://github.com/uc-cdis/fence/pull/1189))

#### New Features
  - new endpoint to soft-delete users in Fence. ([#1189](https://github.com/uc-cdis/fence/pull/1189)) 
  - adds a unit test to check if s3 bucket regex validation is behaving as 
    expected ([#1196](https://github.com/uc-cdis/fence/pull/1196))

#### Improvements
  - consolidate on use of `username` instead of a mix of `name` and `username` 
    in the /admin/user endpoints. ([#1189](https://github.com/uc-cdis/fence/pull/1189)) 

## uc-cdis/gen3-spark

#### Improvements
  - set 
    [`dfs.permissions`](https://hadoop.apache.org/docs/r3.1.1/hadoop-project-dist/hadoop-hdfs/hdfs-default.xml#dfs.permissions.enabled)
    to false ([#22](https://github.com/uc-cdis/gen3-spark/pull/22))

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [nanoid](https://github.com/ai/nanoid) from 3.3.7 to 3.3.8. (#307)
  - update cross-spawn ([#303](https://github.com/uc-cdis/guppy/pull/303))

## uc-cdis/hatchery

#### New Features
  - Add `skip-node-selector` configuration to skipping adding a nodeselector to 
    be able to run workspaces in single node clusters. If used in a dev 
    environment without public DNS you should also use 
    `use-internal-services-url` configuration to talk directly to fence/ 
    ambassador. ([#118](https://github.com/uc-cdis/hatchery/pull/118))

## uc-cdis/indexd

#### Improvements
  - Update to use new Amazon Linux base image and use the same structure as our 
    other python services. ([#362](https://github.com/uc-cdis/indexd/pull/362))
  - Utilizing "gen3" user instead of "root" for more secure containers ([#362](https://github.com/uc-cdis/indexd/pull/362)) 
  - Moving to Poetry to manage our virtual environments ([#362](https://github.com/uc-cdis/indexd/pull/362)) 
  - Multi-stage Docker builds for smaller images ([#362](https://github.com/uc-cdis/indexd/pull/362)) 
  - Move to Gunicorn ([#362](https://github.com/uc-cdis/indexd/pull/362))

## uc-cdis/manifestservice

#### Improvements
  - Update to use new Amazon Linux base image and use the same structure as our 
    other python services. ([#57](https://github.com/uc-cdis/manifestservice/pull/57)) 
  - Utilizing "gen3" user instead of "root" for more secure containers ([#57](https://github.com/uc-cdis/manifestservice/pull/57)) 
  - Moving to Poetry to manage our virtual environments ([#57](https://github.com/uc-cdis/manifestservice/pull/57)) 
  - Multi-stage Docker builds for smaller images ([#57](https://github.com/uc-cdis/manifestservice/pull/57)) 
  - Move to Gunicorn ([#57](https://github.com/uc-cdis/manifestservice/pull/57))

## uc-cdis/metadata-service

#### Dependency Updates
  - Bumps [python-multipart](https://github.com/Kludex/python-multipart) from 
    0.0.17 to 0.0.18. (#120)

#### Improvements
  - Update to use new Amazon Linux base image and use the same structure as our 
    other python services. ([#99](https://github.com/uc-cdis/metadata-service/pull/99)) 
  - Utilizing "gen3" user instead of "root" for more secure containers ([#99](https://github.com/uc-cdis/metadata-service/pull/99)) 
  - Moving to Poetry to manage our virtual environments ([#99](https://github.com/uc-cdis/metadata-service/pull/99)) 
  - Multi-stage Docker builds for smaller images ([#99](https://github.com/uc-cdis/metadata-service/pull/99)) 
  - Move to Gunicorn ([#99](https://github.com/uc-cdis/metadata-service/pull/99)) 

## uc-cdis/pelican

#### Deployment Changes
  - Our Helm charts utilize eternal secrets to create and manage our secrets. 
    The new Peregrine-dbcreds secret is formatted differently and no longer 
    uses json, so we need to edit the export job so the values can be read via 
    environment variables. ([#89](https://github.com/uc-cdis/pelican/pull/89))
  - basing the pelican images off of a more secure AL base image. ([#88](https://github.com/uc-cdis/pelican/pull/88)) 

## uc-cdis/peregrine

#### Improvements
  - Update to use new Amazon Linux base image and use the same structure as our 
    other python services. ([#209](https://github.com/uc-cdis/peregrine/pull/209)) 
  - Utilizing "gen3" user instead of "root" for more secure containers ([#209](https://github.com/uc-cdis/peregrine/pull/209)) 
  - Moving to Poetry to manage our virtual environments ([#209](https://github.com/uc-cdis/peregrine/pull/209)) 
  - Multi-stage Docker builds for smaller images ([#209](https://github.com/uc-cdis/peregrine/pull/209)) 
  - Move to Gunicorn ([#209](https://github.com/uc-cdis/peregrine/pull/209))

## uc-cdis/requestor

#### Improvements
  - Update to use new Amazon Linux base image and use the same structure as our 
    other python services. ([#59](https://github.com/uc-cdis/requestor/pull/59))
  - Utilizing "gen3" user instead of "root" for more secure containers ([#59](https://github.com/uc-cdis/requestor/pull/59)) 
  - Moving to Poetry to manage our virtual environments ([#59](https://github.com/uc-cdis/requestor/pull/59)) 
  - Multi-stage Docker builds for smaller images ([#59](https://github.com/uc-cdis/requestor/pull/59)) 
  - Move to Gunicorn ([#59](https://github.com/uc-cdis/requestor/pull/59))

## uc-cdis/sheepdog

#### Dependency Updates
  - Update Werkzeug to 3.0.6 ([#423](https://github.com/uc-cdis/sheepdog/pull/423)) 

## uc-cdis/sower-jobs

#### Improvements
  - changing the batch export job to use IRSA instead of access keys. Also, 
    changing the job to use environment variables to read in the bucket name 
    for the batch export job. ([#53](https://github.com/uc-cdis/sower-jobs/pull/53)) 

#### Deployment Changes
  - Manifest.json files MUST be changed to use the new "batch-export-sa" 
    service account and the "BUCKET" environment variable must be set to the 
    batch-export-g3auto secret with the "bucket_name" key. You also no longer 
    need to mount the batch-export-g3auto secret as this is now deprecated (it 
    is replaced by the batch-export-g3auto configmap). ([#53](https://github.com/uc-cdis/sower-jobs/pull/53)) 

## uc-cdis/sower

#### Improvements
  - Updated to use nobody user ([#49](https://github.com/uc-cdis/sower/pull/49))

#### Dependency Updates
  - golang to 1.21 ([#50](https://github.com/uc-cdis/sower/pull/50))
  - k8s.api, apimachinery, and client-go to v0.29.0 ([#50](https://github.com/uc-cdis/sower/pull/50)) 

## uc-cdis/ssjdispatcher

#### Dependency Updates
  - golang to 1.21 ([#63](https://github.com/uc-cdis/ssjdispatcher/pull/63))
  - k8s.api, apimachinery, and client-go to v0.29.0 ([#63](https://github.com/uc-cdis/ssjdispatcher/pull/63)) 

## uc-cdis/workspace-token-service

#### Improvements
  - Update to use new Amazon Linux base image and use the same structure as our 
    other python services. ([#90](https://github.com/uc-cdis/workspace-token-service/pull/90)) 
  - Utilizing "gen3" user instead of "root" for more secure containers ([#90](https://github.com/uc-cdis/workspace-token-service/pull/90)) 
  - Moving to Poetry to manage our virtual environments ([#90](https://github.com/uc-cdis/workspace-token-service/pull/90)) 
  - Multi-stage Docker builds for smaller images ([#90](https://github.com/uc-cdis/workspace-token-service/pull/90)) 
  - Move to Gunicorn ([#90](https://github.com/uc-cdis/workspace-token-service/pull/90)) 

