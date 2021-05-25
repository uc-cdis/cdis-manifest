# Core Gen3 Release 202106 (Quincy)

## uc-cdis/fence

#### Improvements
  - Documentation about public data (#911)
  - Use GITHUB_TOKEN for wool in CI (#907)
  - Swagger doc: add fence_idp to /oauth2/authorize endpoint (#898)

#### New Features
  - Add CILogon as an authentication option. CILogon provides a 
    standards-compliant OpenID Connect (OAuth 2.0) interface to federated 
    authentication including InCommon, the Australian Access Federation (AAF), 
    and eduGAIN. CILogon OpenID Connect (OIDC) client registration is available 
    to researchers and scholars at https://cilogon.org/oauth2/register (#896)

## uc-cdis/guppy

#### Improvements
  - The download format check is now case insensitive (#122)

#### New Features
  - add flag for inclusion in filters of missing data category (#120)
  - change test data generating script to also generate missing data fields 
    (#120)
  - Data Explorer state can now be loaded and unloaded to and from the page 
    URL. (#112)

## uc-cdis/hatchery

#### Improvements
  - Let `UserUID`, `GroupUID` and `FSGID` be able to handled in dockstore YAML 
    format configs (#12)
  - Add `PodConditions` and `ContainerStates` info to responses returned from 
    `/status` endpoint (#11)

## uc-cdis/indexd

#### New Features
  - Indexd admins can perform any operation (#306)

#### Improvements
  - Add unit tests fixture to mock calls to Arborist easily (#306)
  - Uses new image that has proper install of gen3authz package installation of 
    Cryptography requires Rust 
    (https://github.com/uc-cdis/cloud-automation/pull/1568 (#304)

#### Dependency Updates
  - pybase3-1.5.0 (#304)
  - gen3authz"^1.0.4" (#304)
  - sqlalchemy pinned to "~1.3.3", SQLAlchemy_utils not supported for 1.4 (#304)

#### Deployment Changes
  - When running gen3authz, backoff package needed separate poetry run pip 
    install (#304)

## uc-cdis/manifestservice

#### New Features
  - Project now using Poetry for package management and install (#25)
  - Dockerfile updated pybase (#25)

#### Dependency Updates
  - python = "^3.6" (#25)
  - Flask = "^1.1.2" (#25)
  - authutils = "^5.0.5" (#25)
  - boto3 = "^1.17.48" (#25)
  - cryptography = "2.8" #grr (#25)
  - requests = "^2.25.1" (#25)

#### Dependency Updates
  - Bumps [py](https://github.com/pytest-dev/py) from 1.9.0 to 1.10.0. (#23)

## uc-cdis/pelican

#### New Features
  - Adopt Poetry dependency mgmt. (#47)

#### Bug Fixes
  - Regenerate lock file (#50)

## uc-cdis/peregrine

#### Dependency Updates
  - Bumps [jinja2](https://github.com/pallets/jinja) from 2.10.1 to 2.11.3. 
    (#171)
  - Bumps [pyyaml](https://github.com/yaml/pyyaml) from 5.1 to 5.4. (#173)

## uc-cdis/data-portal

#### New Features
  - Add steps to workspace launching page to visualize progress of spinning up 
    a workspace pod (#847)
  - Add a timestamp of when we synced with JHU to IL and world map legend (#842)
  - Add beta support for exporting data files from the Discovery page to 
    Workspaces. This implementation is likely to change in the future, and the 
    configuration may not be supported in future versions of portal. (#839)
  - Added `requireLogin` option to Discovery page -- configures whether the 
    Discovery page is public or requires user to log in to view. (#839)
  - add explorerHideDataFilter and pass it through to guppy (#837)
  - Data Explorer state can now be loaded and unloaded to and from the page 
    URL. This feature is disabled by default; it can be enabled with the 
    `explorerStoreFilterInURL` featureFlag in the portal config. (#807)

#### Bug Fixes
  - Disable npm 7 update notifier because it is causing Portal pods to stuck at 
    starting up after 7 days (#845)

#### Improvements
  - Filtering by access level is done in the table to save space. (#839)
  - Adjust manifest service guid parameter key to match new manifest service 
    expectation for the Export PFB to Workspace flow. (#754)

#### Dependency Updates
  - Update @gen3/guppy dependency to version 0.13.0 (#837)

## uc-cdis/sheepdog

#### Dependency Updates
  - Bumps [lxml](https://github.com/lxml/lxml) from 4.4.2 to 4.6.3. (#342)
  - Bumps [pyyaml](https://github.com/yaml/pyyaml) from 5.1 to 5.4. (#343)

#### Bug Fixes
  - Fix bug when submitting array items as TSV (#346)
  - Fix bug when exporting array items to TSV (#346)
  - Fix bug when reporting array items errors to users (#346)

#### Improvements
  - Add logging to facilitate debugging validation issues (#346)
  - Improve program/project creation error messages (#345)

#### Dependency Updates
  - gdcdatamodel to 3.0.3 (#346)

## uc-cdis/sower-jobs

#### Bug Fixes
  - Build python image from quay, avoiding Dockerhub rate limit (#28)

## uc-cdis/workspace-token-service

#### New Features
  - Enable authentication with access token for `GET /token` endpoint (#31)

## uc-cdis/dcf-dataservice

#### Improvements
  - Added exception to other hardcoded areas (#93)

## uc-cdis/cloud-automation

#### Dependency Updates
  - Due to a security incident Hashicorp has updated the GPG keys used to sign 
    its releases (including providers and plugins etc) (#1595)
  - That's why we see cloud-automation CI runs fail on Terraform tests. (#1595)
  - We need to bump them to a new version that support the new keys. (#1595)
  - Ref: (#1595)
  - https://discuss.hashicorp.com/t/terraform-updates-for-hcsec-2021-12/23570 
    (#1595)

#### Bug Fixes
  - Disable npm 7 update notifier because it is causing Portal pods to stuck at 
    starting up after 7 days (#1592)
  - Change domain to correct one (#1586)
  - Capture logs from failed pods when K8sReset fails (before the k8s namespace 
    is teared down). (#1581)
  - Updated hostname so the connection to auspice works (#1571)

#### Improvements
  - covid19-bayes-model-(cron)job 20Gi memory (#1583)
  - PRC covid19-bayes-model job: add configurable state list (#1579)

