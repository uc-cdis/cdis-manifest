# Core Gen3 Release (Uptown)

## uc-cdis/fence

#### New Features
  - Expose `/ga4gh/drs/v1/objects/{object_id}/access/{access_id}` GA4GH DRS 
    Access API via Fence (#957)
  - Use RAS v1.1 Passport instead of RAS v1.0 passport (#956)
  - Validate RAS v1.1 Passports (#956)
  - Added logic to create Gen3 Passports (#956)
  - Add registration endpoints (registration form endpoint and admin-only list 
    endpoint) (#906)
  - Use Azure Blob Storage with Fence (#946)

#### Bug Fixes
  - A change in the gen3cirrus package for the get_signed_url function was 
    made, the function parameters were not updated in fence and returned an 
    invalid parameter error. Adding missing parameters to the function in Fence 
    resolved error. (#955)
  - Bug fix in checking email claims for Azure AD (in case the `email` claim is 
    missing from the AAD response) (#946)

#### Improvements
  - remove deprecated project access from cookies (making them smaller) (#958)
  - update to latest python base image (#959)
  - Improvements around CSRF handling (#906)
  - Test suite update (#946)

#### Dependency Updates
  - New dependency Flask-WTF (#906)
  - Python (#946)
  - `azure-storage-blob=^12.6.0` (#946)
  - `azure-core==1.13.0` (#946)
  - `cryptography==2.8` (#946)
  - `isodate==0.6.0` (#946)
  - `msrest==0.6.21` (#946)
  - `oauth==3.1.0` (#946)
  - `requests-oauthlib==1.3.0` (#946)
  - `six==1.16.0` (#946)

#### Deployment Changes
  - Requires these cloud-automation updates to revproxy: 
    https://github.com/uc-cdis/cloud-automation/pull/1580 (#906)

## uc-cdis/indexd

#### New Features
  - Add `indexd` settings files for PostgreSQL SSL support (#317)

#### Bug Fixes
  - Clean up test settings (#317)

#### Improvements
  - update to latest python base image (#322)
  - Add notes for local development (#315)
  - Add example Azure DevOps pipeline and Documentation (#316)

#### Deployment Changes
  - Include example secrets to load PostgreSQL settings for `indexd` (#317)

## uc-cdis/pelican

#### Bug Fixes
  - adding aligned_reads_index to the extra nodes on VCF file exports to make 
    them inline with CRAM files (#58)

#### New Features
  - Fix encoding issue when exporting (#57)

## uc-cdis/peregrine

#### Bug Fixes
  - Handle exceptions without 'message' attribute (#178)

#### Improvements
  - update to latest python base image (#179)

## uc-cdis/pidgin

#### Improvements
  - Do not crash when Peregrine returns a non-200 code, and try to parse the 
    data anyway (#40)

## uc-cdis/data-portal

#### New Features
  - add vaccine map layer (#908)
  - Add contentSecurityPolicyConnectSRCWhiteList to portal config to allow for 
    urls to be whitelisted by Content-Security-Policy (#919)
  - Explorer: Redirects users to the login page if they try to download the 
    data without logging in. (#912)
  - Closable banner at the top of workspace page to remind users to link 
    account to other data commons (#916)
  - add an R logo for workspaces with titles formatted " \*R Notebook \*" 
    (#915)
  - ![Screenshot 2021-08-20 at 14-06-55 Generic Data 
    Commons](https://user-images.githubusercontent.com/20287733/130282071-e90906f7-602e-4b32-845a-e1a4a2929f84.png)
    (#915)
  - NCT: Add a web form component to allow signing up for email lists at 
    govdelivery.com (#911)
  - A user can select one or more studies to request for download. This 
    dispatches a sower job which is monitored until it either sends back an s3 
    presigned url, or fails with an error description. (#906)

#### Bug Fixes
  - Mitigated PFB export bug (PXP-8400) by increasing timeout before checking 
    for status of PFB export job (#871)
  - Fix occ data bucket from being blocked by Content Security Policy (#919)
  - Workspace: fixed a bug causing workspace be putting into incorrect 
    `Launching` state if some containers has already been terminated (#903)

#### Improvements
  - refactor map data handling logic (#908)
  - update colors of Mobility Data layers (#908)
  - Misc: add the optional `Discovery` page to `nct` and `covid19` bundles 
    (note the `workspace` bundle still don't have it) (#918)
  - New configurable subtitle helper text under the Discovery page search box 
    in the gitops.json attribute inputSubtitle. (#909)
  - UX improvements in the Discovery page's Data Availability column header -- 
    3 filter options, remove sort icon (#909)
  - Removing `AccessLevel.UNACCESSIBLE` from table sorting and filtering 
    options (#909)
  - Core metadata / download page: remove empty values from the header (#910)

#### Deployment Changes
  - Misc: add option for bundle name: `ecosystem`, which is the same as `heal` 
    bundle under the hood (#918)
  - Requires `loginForDownload` flag set to true in gitops (#912)
  - User registration before download feature depends on 
    https://github.com/uc-cdis/fence/pull/906 (#912)
  - Requires the configuration of the `batch-export` sower job: 
    https://github.com/uc-cdis/sower-jobs/pull/29 in the environment's 
    manifest. This job also has its own setup in cloud automation: 
    https://github.com/uc-cdis/cloud-automation/pull/1708 (#906)
  - 2 new fields in `gitops.json`: 
    `discoveryconfig.features.exportToWorkspace.[enableDownloadZip (bool) 
    downloadZipButtonText (string)]` (#906)

## uc-cdis/sheepdog

#### New Features
  - Update for PostgreSQL SSL support (#351)

#### Bug Fixes
  - Add option for `isolation_level` `READ_COMMITTED`. This addresses an error 
    which occurs when there's competing transactions in the `sheepdog` 
    database, for example, when using multiple workers in `uwsgi` which are 
    trying to reach a shared resource in `sheepdog_db`. (#351)
  - The conflict occurs after submitting multiple requests to `sheepdog` using 
    the gen3sdk for python (see 
    https://github.com/uc-cdis/gen3sdk-python/blob/master/gen3/submission.py#L187)
    as part of populating the data dictionary with metadata. In this case, it 
    looks like the race condition mentioned here 
    https://github.com/uc-cdis/cloud-automation/blob/1f9cbb52cecf449a5ad76f984fe0dda449d924d3/kube/services/jobs/gdcdb-create-job.yaml#L48
    is occurring. This is a workaround to use `isolation_level` of 
    `READ_COMMITTED` within `sheepdog`. (#351)

#### Improvements
  - update to latest python base image (#356)
  - Update `uwsgi.ini` and `Dockerfile` to support `python` dependency installs 
    (#351)
  - Update test suite (#351)
  - Add debug log when unable to parse JSON input (#354)
  - Handle TSV/CSV data for program/project creation (#354)

#### Dependency Updates
  - Included `python` dependency updates in `requirements.txt` for 
    `datamodelutils==1.0.0`, `dictionaryutils==3.2.0`, `gen3authz==0.4.0`, 
    `six>=1.15.0`, `py2neo`, and `google-crc32==1.1.2`. (#351)
  - > Note that `dictionaryutils==3.4.0` is the current `sheepdog python` 
    dependency but is not available for download from pypi (at least with a 
    `wsl` / `windows` release). The lower version `3.2.0` is a workaround. 
    (#351)
  - Included `python` dependency updates in `dev-requirements.txt` for 
    `coverage==5.3.0` and `codacy-coverage==1.3.11` (#351)

## uc-cdis/sower

#### New Features
  - add filtering of list of jobs/outputs based on the user email (#23)

## uc-cdis/tube

#### Improvements
  - Refactor and improve documentation: split the readme into several smaller 
    files and add `etlMapping.yaml` configuration details (#156)
  - Add example Azure DevOps pipeline and documentation (#151)

## uc-cdis/indexs3client

#### Bug Fixes
  - This change will include parsing logic of uuid. (#33)

## uc-cdis/metadata-service

#### New Features
  - Use env and config for populate script rather than passing parameters (#33)
  - Add aggregate metadata adapters to talk to third party metadata services 
    (#29)

#### Improvements
  - Better name for the defaulted index namespace (#33)
  - Update documentation (#33)
  - More verbose logging for populate (#31)
  - Timeout retry via tenacity (#31)
  - Remove aggregate MDS configs from source control (#30)

#### Deployment Changes
  - A job has been created to make aggregate MDS population more robust 
    https://github.com/uc-cdis/cloud-automation/pull/1722 (#33)
  - Must set the appropriate `AGG_MDS_NAMESPACE` value in `metadata.env` (#29)
  - Per https://github.com/uc-cdis/cdis-manifest/pull/3332 a 
    `metadata/aggregate_config.json` file should be created as part of the 
    manifest config for a commons and the appropriate environment vars for 
    `metadata` should be defined in the manifest JSON (#30)
  - The new command to populate an aggregate MDS is `kubectl exec $(gen3 pod 
    metadata) -- python /src/src/mds/populate.py --config 
    /aggregate_config.json --hostname esproxy-service --port 9200` (#30)

#### Dependency Updates
  - Bumps [fastapi](https://github.com/tiangolo/fastapi) from 0.54.2 to 0.65.2. 
    (#32)

#### Breaking Changes
  - ES indices will not be namespaced per environment (#29)

#### Bug Fixes
  - Scope ES indices to a namespace so they don't conflict with other 
    environments (#29)
  - This fixes an issue that prevents populating a AggMDS if one or more of the 
    remote commons is down or unavailable. Instead of throwing an exception, 
    the error is logged and the remote commons is skipped. (#31)

#### Dependency Updates
  - Python package: tenacity (#31)

## uc-cdis/cloud-automation

#### New Features
  - gen3 job for syncing aggregate metadata to a metadata service (#1722)
  - Added netnolimit for indexd (#1725)
  - Added jenkins-ci cleanup to jenkins cronjob (#1712)
  - `save-failed-pod-logs` now will save both `initContainer` and `container` 
    logs for specific pod (#1711)

#### Bug Fixes
  - Increased header buffer size to prevent header too large error (#1724)

#### Improvements
  - Hatchery: mount `HOSTNAME` from `manifest-global` (#1717)

