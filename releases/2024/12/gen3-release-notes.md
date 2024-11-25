# Core Gen3 Release 2024.12 (Charoite)

## Release Highlights and Announcements

#### New option to restrict login to known users
  - Gen3 typically allows users to log in through one of the configured IdPs so that they can access
    open data or search public metadata, even if they do not have authorization to see 
    any non-open data. You now have the [option to prevent such users from logging in](#new-features-2), 
    restricting platform access to users who are explicitly authorized to access data on the platform. 
    Operators of Gen3 instances which do not offer open data may prefer to enable this option.
    We've also added new endpoints to allow properly authorized admins to add or remove users.

#### Community Contribution - new endpoint to refresh Guppy
  - Properly authorized users can now [restart Guppy via a POST request](#new-features-3), to update configurations
    to reflect new columns in the elastic indices. This change facilitates the automation of data submissions.

    Thanks to Matthew from OHSU for contributing this to the Gen3 product codebase!

#### Elasticsearch 7 is now the default
  - Elasticsearch 7 has been available as an option, but is now the [default setting](#deployment-changes).
    You can set a parameter in the manifest.json to keep using ES6.

## uc-cdis/arborist

#### Bug Fixes
  - Fix "subquery in FROM must have an alias" error when making an anonymous 
    auth request call with a tag ([#167](https://github.com/uc-cdis/arborist/pull/167)) 

## uc-cdis/audit-service

#### Dependency Updates
  - starlette to 0.41.2, and other dependency updates ([#63](https://github.com/uc-cdis/audit-service/pull/63)) 

## uc-cdis/cloud-automation

#### New Features
  - The new indexd image uses poetry to manage the virtual environment, so we 
    need the job logic to work with the new image. To do this, the job should 
    work with either the "python" command or "poetry run python" command. 
    ([#2665](https://github.com/uc-cdis/cloud-automation/pull/2665))
  - Created webhook that can set node affinities to prevent scheduling on 
    fargate nodes. ([#2577](https://github.com/uc-cdis/cloud-automation/pull/2577)) 

#### Bug Fixes
  - fix to include special characters in db name ([#2664](https://github.com/uc-cdis/cloud-automation/pull/2664)) 

#### Deployment Changes
  - Need to mount the configuration files in "requestor" and "metadata" 
    directories to accommodate the new Dockerfile for these services. ([#2661](https://github.com/uc-cdis/cloud-automation/pull/2661)) 
  - We are also using Poetry to manage virtual environments instead of python, 
    so the command to run alembic needs to be modified. ([#2661](https://github.com/uc-cdis/cloud-automation/pull/2661)) 
  - Elasticsearch 7 endpoint will be the default. If you want to use ES6, make 
    sure to set "ES7" "false" in the manifest.json. ([#2655](https://github.com/uc-cdis/cloud-automation/pull/2655)) 

## uc-cdis/data-portal

#### Bug Fixes
  - Discovery: fixed a bug causing the discovery page cannot correctly loads 
    metadata in batches if neither AggMDS or StudyRegsistration has been 
    enabled ([#1632](https://github.com/uc-cdis/data-portal/pull/1632))
  - Replaces alt text on non-decorative images on analysis app selection page 
    with alt="" ([#1628](https://github.com/uc-cdis/data-portal/pull/1628))
  - Replaces non-compliant AntD combo box component with 508 compliant 
    TeamDropdown component using a labeled HTML select element. ([#1628](https://github.com/uc-cdis/data-portal/pull/1628)) 
  - Fixes button color to #215C9E in VADC Team Projects modal to ensure 
    accessibility ([#1628](https://github.com/uc-cdis/data-portal/pull/1628))
  - Fixes submission data for Dichotomous workflows for VADC GWAS app. ([#1628](https://github.com/uc-cdis/data-portal/pull/1628)) 
  - In GWAS Review Details modals: fixes colors for the buttons for 
    accessibility, Replaced "border" style with "border-color" style to affect 
    colors only, Updates VADC Team Modal text color ([#1628](https://github.com/uc-cdis/data-portal/pull/1628)) 
  - For VADC team projects header, ensures the contrast between foreground and 
    background colors meets WCAG 2 AA minimum contrast ratio thresholds ([#1628](https://github.com/uc-cdis/data-portal/pull/1628)) 
  - Addresses accessibility issues related to the team projects button in VADC 
    apps. ([#1610](https://github.com/uc-cdis/data-portal/pull/1610))
  - Resets noVariableLevelMetadata when choosing different studies so VLMD 
    button behaves as expected. ([#1608](https://github.com/uc-cdis/data-portal/pull/1608)) 

#### Improvements
  - Study registration: repository name will be a required field if user has 
    provided any repository study IDs ([#1630](https://github.com/uc-cdis/data-portal/pull/1630)) 
  - new logic to allow for coexistence of old and new VA data dictionary apps. 
    ([#1613](https://github.com/uc-cdis/data-portal/pull/1613))
  - Both apps are available under the same /analysis/AtlasDataDictionary 
    location. ([#1613](https://github.com/uc-cdis/data-portal/pull/1613))
  - removed unnecessary `ProtectedContent` wrapper for one of the Data 
    dictionary options since /analysis wrapper is already protected (see 
    https://github.com/uc-cdis/data-portal/blob/7d03acf24c498f57748d670773790b834412d3f4/src/index.jsx#L274-L291).
    ([#1613](https://github.com/uc-cdis/data-portal/pull/1613))
  - change top navigation structure ([#1602](https://github.com/uc-cdis/data-portal/pull/1602)) 
  - add skip navigation link to data portal ([#1602](https://github.com/uc-cdis/data-portal/pull/1602)) 
  - add role alertdialog to popup ([#1602](https://github.com/uc-cdis/data-portal/pull/1602)) 
  - add col header to API key(s) table on profile page ([#1602](https://github.com/uc-cdis/data-portal/pull/1602)) 
  - add empty alt text to 404 graphic and remove metadata from svg ([#1602](https://github.com/uc-cdis/data-portal/pull/1602)) 

#### Dependency Updates
  - update http-proxy-middleware ([#1622](https://github.com/uc-cdis/data-portal/pull/1622)) 

#### Deployment Changes
  - new config option `dataDictionaryVersion` that can be set to "new" or 
    something else. If "new", then the new data dictionary component is loaded. 
    This is a temporary solution until we have fully deprecated the old one. 
    ([#1613](https://github.com/uc-cdis/data-portal/pull/1613))

#### New Features
  - Adds modal to attrition table in GWAS App for histogram and euler diagram 
    visualizations. Modal can be triggered using chart icon. ([#1610](https://github.com/uc-cdis/data-portal/pull/1610)) 

## uc-cdis/fence

#### Improvements
  - The /admin endpoints in Fence are protected by a check agains Arborist 
    permissions instead of checking for user.is_admin in DB ([#1190](https://github.com/uc-cdis/fence/pull/1190)) 
  - feat: add extra (optional) fields to "create user" `/admin/user` POST 
    endpoint ([#1185](https://github.com/uc-cdis/fence/pull/1185))
  - to make user creation more uniform, reflecting what is also done elsewhere 
    ([#1185](https://github.com/uc-cdis/fence/pull/1185)),
    in [fence/sync/sync_users.py 
    _upsert_userinfo()](https://github.com/uc-cdis/fence/blob/eb90523fc544a7704a2e5c1cbc9be592fb280bfc/fence/sync/sync_users.py#L1119)
    for example ([#1185](https://github.com/uc-cdis/fence/pull/1185))

#### New Features
  - feat: new config option to allow only existing OR active users to login 
    ([#1184](https://github.com/uc-cdis/fence/pull/1184))

#### Deployment Changes
  - activation of the feature depends on a new configuration setting: 
    `ALLOW_NEW_USER_ON_LOGIN` ([#1184](https://github.com/uc-cdis/fence/pull/1184)) 
  - any env that has S3 buckets in fence config that has wildcard characters 
    should consider adopting this release ([#1193](https://github.com/uc-cdis/fence/pull/1193)) 

#### Bug Fixes
  - Update documentation link in setup.md ([#1194](https://github.com/uc-cdis/fence/pull/1194)) 
  - Fixed a bug cause Fence to unable to generate presigned URL for S3 buckets 
    in fence config that has wildcard characters in their names ([#1193](https://github.com/uc-cdis/fence/pull/1193)) 

## uc-cdis/guppy

#### Improvements
  - Use AL2023 base image ([#295](https://github.com/uc-cdis/guppy/pull/295))

#### New Features
  - Adds the ability to refresh guppy via a POST request to the path 
    `_refresh`. Guppy must be configured to accept this request via the 
    `allowRefresh` variable in the guppy config. If this variable is not set, 
    the feature is not available. ([#273](https://github.com/uc-cdis/guppy/pull/273)) 
  - Authenticated users who present a valid token that has `admin_access` or 
    `*` method permissions for service `guppy` on resource path `/guppy_admin` 
    are able to make the _refresh request. ([#273](https://github.com/uc-cdis/guppy/pull/273)) 
  - This request restarts the server, allowing for the ability to update the 
    guppy configurations to reflect any new column additions in the elastic 
    indices as a data submitter. ([#273](https://github.com/uc-cdis/guppy/pull/273)) 

#### Deployment Changes
  - To enable this feature in helm charts add `"allowRefresh": {{ 
    .Values.allowRefresh }}` to 
    `gen3-helm/helm/guppy/templates/guppy_config.yaml` and then in your 
    values.yaml file, specify allowRefresh as the boolean true value. ([#273](https://github.com/uc-cdis/guppy/pull/273)) 

## uc-cdis/metadata-service

#### Dependency Updates
  - fastapi to 0.115.4 and starlette to 0.41.2, and other dependency updates 
    ([#118](https://github.com/uc-cdis/metadata-service/pull/118))

#### Improvements
  - MDS search response now makes use of MDS index on the `data._guid_type` for 
    specific commons (MIDRC) ([#117](https://github.com/uc-cdis/metadata-service/pull/117)) 

## uc-cdis/requestor

#### Dependency Updates
  - starlette to 0.41.2, and other dependency updates ([#75](https://github.com/uc-cdis/requestor/pull/75)) 

## uc-cdis/sower

#### Dependency Updates
  - k8s.io/api to v0.23.14 ([#48](https://github.com/uc-cdis/sower/pull/48))
  - k8s.io/apimachinery to v0.23.14 ([#48](https://github.com/uc-cdis/sower/pull/48)) 

## uc-cdis/sower-jobs

#### Improvements
  - changing the batch export job to use IRSA instead of access keys. Also, changing the job to use environment variables to read in the bucket name for the batch export job. ([#53](https://github.com/uc-cdis/sower-jobs/pull/53)) 

#### Dependency Updates
  - Manifest.json files MUST be changed to use the new "batch-export-sa" service account and the "BUCKET" environment variable must be set to the batch-export-g3auto secret with the "bucket_name" key. You also no longer need to mount the batch-export-g3auto secret as this is now deprecated (it is replaced by the batch-export-g3auto configmap). ([#53](https://github.com/uc-cdis/sower-jobs/pull/53))
