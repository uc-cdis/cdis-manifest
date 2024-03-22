## uc-cdis/arborist

#### Improvements
  - Update `/auth/mapping` endpoints documentation to describe the behavior in 
    more detail. ([#162](https://github.com/uc-cdis/arborist/pull/162))

#### New Features
  - `POST /auth/mapping` supports parsing username and client ID from a token 
    instead of from the request body. ([#163](https://github.com/uc-cdis/arborist/pull/163)) 
  - `POST /auth/mapping` supports tokens produced from a "client_credentials" 
    OIDC flow. ([#163](https://github.com/uc-cdis/arborist/pull/163))

#### Dependency Updates
  - `x/crypto` to version 0.19.0, `x/net` to version 0.10.0 ([#160](https://github.com/uc-cdis/arborist/pull/160)) 

## uc-cdis/audit-service

#### Improvements
  - Update docs build action so the commit it pushes can trigger other GH 
    actions ([#49](https://github.com/uc-cdis/audit-service/pull/49))
  - Skip doomed tests for now until we refactor the code ([#49](https://github.com/uc-cdis/audit-service/pull/49)) 

#### Dependency Updates
  - `fastapi` to 0.110.0, `boto3` to 1.34.52 ([#49](https://github.com/uc-cdis/audit-service/pull/49)) 
  - cryptography to 42.0.5 ([#47](https://github.com/uc-cdis/audit-service/pull/47)) 
  - cryptography to 42.0.3 ([#44](https://github.com/uc-cdis/audit-service/pull/44)) 

## uc-cdis/cdis-data-client

#### New Features
  - Allow file name uploads using upload manifest ([#128](https://github.com/uc-cdis/cdis-data-client/pull/128)) 

## uc-cdis/cloud-automation

#### Improvements
  - Add new middleware url ([#2497](https://github.com/uc-cdis/cloud-automation/pull/2497)) 
  - kube-setup-hatchery will create a dynamodb table for gen3-license-users if 
    table in hatchery config ([#2441](https://github.com/uc-cdis/cloud-automation/pull/2441)) 
  - Increases VA prod parallel workflows to 3 ([#2473](https://github.com/uc-cdis/cloud-automation/pull/2473)) 

#### New Features
  - Add `ecr-access` job. See documentation at 
    https://github.com/uc-cdis/cloud-automation/blob/master/files/scripts/ecr-access-job.md
    ([#2480](https://github.com/uc-cdis/cloud-automation/pull/2480))
  - Support new Gen3 Discovery AI Service ([#2396](https://github.com/uc-cdis/cloud-automation/pull/2396)) 
  - Updates to the heal cedar ingestion script ([#2472](https://github.com/uc-cdis/cloud-automation/pull/2472)) 
  - added logic for `heal_platform_citation`, `repository_study_link`, 
    `repository_citation`, and `related studies` ([#2472](https://github.com/uc-cdis/cloud-automation/pull/2472)) 
  - `gen3 logs snapshot`: in addition to `containers` logs, also get 
    `initContainers` logs ([#2478](https://github.com/uc-cdis/cloud-automation/pull/2478)) 

#### Bug Fixes
  - Fixed a bug in the cedar ingestion script ([#2494](https://github.com/uc-cdis/cloud-automation/pull/2494)) 
  - fix typo ([#2483](https://github.com/uc-cdis/cloud-automation/pull/2483))
  - add missing config.ini option ([#2482](https://github.com/uc-cdis/cloud-automation/pull/2482)) 
  - fix mountpath, new argo-wrapper Docker images uses `/argowrapper` folder, 
    not `/src` ([#2481](https://github.com/uc-cdis/cloud-automation/pull/2481))
  - Added kms permissions for karpenter ([#2467](https://github.com/uc-cdis/cloud-automation/pull/2467)) 

#### Deployment Changes
  - Add azure blob storage to web_wildcard_whitelist ([#2475](https://github.com/uc-cdis/cloud-automation/pull/2475)) 

## uc-cdis/data-portal

#### Bug Fixes
  - Discovery: make sure arrays that passed into list components are always 
    single-level ([#1496](https://github.com/uc-cdis/data-portal/pull/1496))
  - Discovery: fixed an issue that array values are incorrectly flattened for 
    list components ([#1494](https://github.com/uc-cdis/data-portal/pull/1494))

#### Improvements
  - Updated list of repos showing in HEAL Study registration form to include 
    SPARC ([#1495](https://github.com/uc-cdis/data-portal/pull/1495))
  - Add IDP login tooltip for discovery detail page action buttons ([#1492](https://github.com/uc-cdis/data-portal/pull/1492)) 
  - Makes the _DownloadAllModal_ a more reusable and generic _DownloadModal_ 
    within data download list component ([#1476](https://github.com/uc-cdis/data-portal/pull/1476)) 
  - Adds additional type checking to CheckHealLoginNeeded to avoid JS errors 
    now that function is being called in more places. ([#1476](https://github.com/uc-cdis/data-portal/pull/1476)) 

#### New Features
  - Add buttons for downloading individual file in manifest from the tabbed 
    version discovery details page ([#1492](https://github.com/uc-cdis/data-portal/pull/1492)) 
  - Adds download variable metadata button to action buttons within data 
    download list ([#1476](https://github.com/uc-cdis/data-portal/pull/1476))

## uc-cdis/fence

#### Dependency Updates
  - paramiko, for security reasons ([#1138](https://github.com/uc-cdis/fence/pull/1138)) 
  - cryptography to >=42.0.2 ([#1137](https://github.com/uc-cdis/fence/pull/1137)) 
  - gen3users to ^1.0.2 ([#1137](https://github.com/uc-cdis/fence/pull/1137))
  - pyyaml to ^6.0.1 ([#1137](https://github.com/uc-cdis/fence/pull/1137))

## uc-cdis/arborist

#### Improvements
  - Update `/auth/mapping` endpoints documentation to describe the behavior in 
    more detail. ([#162](https://github.com/uc-cdis/arborist/pull/162))

#### New Features
  - `POST /auth/mapping` supports parsing username and client ID from a token 
    instead of from the request body. ([#163](https://github.com/uc-cdis/arborist/pull/163)) 
  - `POST /auth/mapping` supports tokens produced from a "client_credentials" 
    OIDC flow. ([#163](https://github.com/uc-cdis/arborist/pull/163))

#### Dependency Updates
  - `x/crypto` to version 0.19.0, `x/net` to version 0.10.0 ([#160](https://github.com/uc-cdis/arborist/pull/160)) 

## uc-cdis/audit-service

#### Improvements
  - Update docs build action so the commit it pushes can trigger other GH 
    actions ([#49](https://github.com/uc-cdis/audit-service/pull/49))
  - Skip doomed tests for now until we refactor the code ([#49](https://github.com/uc-cdis/audit-service/pull/49)) 

#### Dependency Updates
  - `fastapi` to 0.110.0, `boto3` to 1.34.52 ([#49](https://github.com/uc-cdis/audit-service/pull/49)) 
  - cryptography to 42.0.5 ([#47](https://github.com/uc-cdis/audit-service/pull/47)) 
  - cryptography to 42.0.3 ([#44](https://github.com/uc-cdis/audit-service/pull/44)) 

## uc-cdis/cdis-data-client

#### New Features
  - Allow file name uploads using upload manifest ([#128](https://github.com/uc-cdis/cdis-data-client/pull/128)) 

## uc-cdis/cloud-automation

#### Improvements
  - Add new middleware url ([#2497](https://github.com/uc-cdis/cloud-automation/pull/2497)) 
  - kube-setup-hatchery will create a dynamodb table for gen3-license-users if 
    table in hatchery config ([#2441](https://github.com/uc-cdis/cloud-automation/pull/2441)) 
  - Increases VA prod parallel workflows to 3 ([#2473](https://github.com/uc-cdis/cloud-automation/pull/2473)) 
  - updating the security policy used for https listener to be newer and fips 
    compliant. ([#2447](https://github.com/uc-cdis/cloud-automation/pull/2447))

#### New Features
  - Add `ecr-access` job. See documentation at 
    https://github.com/uc-cdis/cloud-automation/blob/master/files/scripts/ecr-access-job.md
    ([#2480](https://github.com/uc-cdis/cloud-automation/pull/2480))
  - Support new Gen3 Discovery AI Service ([#2396](https://github.com/uc-cdis/cloud-automation/pull/2396)) 
  - Updates to the heal cedar ingestion script ([#2472](https://github.com/uc-cdis/cloud-automation/pull/2472)) 
  - added logic for `heal_platform_citation`, `repository_study_link`, 
    `repository_citation`, and `related studies` ([#2472](https://github.com/uc-cdis/cloud-automation/pull/2472)) 
  - `gen3 logs snapshot`: in addition to `containers` logs, also get 
    `initContainers` logs ([#2478](https://github.com/uc-cdis/cloud-automation/pull/2478)) 

#### Bug Fixes
  - Fixed a bug in the cedar ingestion script ([#2494](https://github.com/uc-cdis/cloud-automation/pull/2494)) 
  - fix typo ([#2483](https://github.com/uc-cdis/cloud-automation/pull/2483))
  - add missing config.ini option ([#2482](https://github.com/uc-cdis/cloud-automation/pull/2482)) 
  - fix mountpath, new argo-wrapper Docker images uses `/argowrapper` folder, 
    not `/src` ([#2481](https://github.com/uc-cdis/cloud-automation/pull/2481))
  - Added kms permissions for karpenter ([#2467](https://github.com/uc-cdis/cloud-automation/pull/2467)) 
  - fix squid counter ([#2464](https://github.com/uc-cdis/cloud-automation/pull/2464)) 

#### Deployment Changes
  - Add azure blob storage to web_wildcard_whitelist ([#2475](https://github.com/uc-cdis/cloud-automation/pull/2475)) 

## uc-cdis/data-portal

#### Bug Fixes
  - Discovery: make sure arrays that passed into list components are always 
    single-level ([#1496](https://github.com/uc-cdis/data-portal/pull/1496))
  - Discovery: fixed an issue that array values are incorrectly flattened for 
    list components ([#1494](https://github.com/uc-cdis/data-portal/pull/1494))

#### Improvements
  - Updated list of repos showing in HEAL Study registration form to include 
    SPARC ([#1495](https://github.com/uc-cdis/data-portal/pull/1495))
  - Add IDP login tooltip for discovery detail page action buttons ([#1492](https://github.com/uc-cdis/data-portal/pull/1492)) 
  - Makes the _DownloadAllModal_ a more reusable and generic _DownloadModal_ 
    within data download list component ([#1476](https://github.com/uc-cdis/data-portal/pull/1476)) 
  - Adds additional type checking to CheckHealLoginNeeded to avoid JS errors 
    now that function is being called in more places. ([#1476](https://github.com/uc-cdis/data-portal/pull/1476)) 

#### New Features
  - Add buttons for downloading individual file in manifest from the tabbed 
    version discovery details page ([#1492](https://github.com/uc-cdis/data-portal/pull/1492)) 
  - Adds download variable metadata button to action buttons within data 
    download list ([#1476](https://github.com/uc-cdis/data-portal/pull/1476))

## uc-cdis/fence

#### Dependency Updates
  - paramiko, for security reasons ([#1138](https://github.com/uc-cdis/fence/pull/1138)) 
  - cryptography to >=42.0.2 ([#1137](https://github.com/uc-cdis/fence/pull/1137)) 
  - gen3users to ^1.0.2 ([#1137](https://github.com/uc-cdis/fence/pull/1137))
  - pyyaml to ^6.0.1 ([#1137](https://github.com/uc-cdis/fence/pull/1137))

## uc-cdis/arborist

#### Improvements
  - Update `/auth/mapping` endpoints documentation to describe the behavior in 
    more detail. ([#162](https://github.com/uc-cdis/arborist/pull/162))

#### New Features
  - `POST /auth/mapping` supports parsing username and client ID from a token 
    instead of from the request body. ([#163](https://github.com/uc-cdis/arborist/pull/163)) 
  - `POST /auth/mapping` supports tokens produced from a "client_credentials" 
    OIDC flow. ([#163](https://github.com/uc-cdis/arborist/pull/163))

#### Dependency Updates
  - `x/crypto` to version 0.19.0, `x/net` to version 0.10.0 ([#160](https://github.com/uc-cdis/arborist/pull/160)) 

## uc-cdis/audit-service

#### Improvements
  - Update docs build action so the commit it pushes can trigger other GH 
    actions ([#49](https://github.com/uc-cdis/audit-service/pull/49))
  - Skip doomed tests for now until we refactor the code ([#49](https://github.com/uc-cdis/audit-service/pull/49)) 

#### Dependency Updates
  - `fastapi` to 0.110.0, `boto3` to 1.34.52 ([#49](https://github.com/uc-cdis/audit-service/pull/49)) 
  - cryptography to 42.0.5 ([#47](https://github.com/uc-cdis/audit-service/pull/47)) 
  - cryptography to 42.0.3 ([#44](https://github.com/uc-cdis/audit-service/pull/44)) 

## uc-cdis/cdis-data-client

#### New Features
  - Allow file name uploads using upload manifest ([#128](https://github.com/uc-cdis/cdis-data-client/pull/128)) 

## uc-cdis/cloud-automation

#### New Features
  - Add `ecr-access` job. See documentation at 
    https://github.com/uc-cdis/cloud-automation/blob/master/files/scripts/ecr-access-job.md
    ([#2480](https://github.com/uc-cdis/cloud-automation/pull/2480))
  - Support new Gen3 Discovery AI Service ([#2396](https://github.com/uc-cdis/cloud-automation/pull/2396)) 
  - Updates to the heal cedar ingestion script ([#2472](https://github.com/uc-cdis/cloud-automation/pull/2472)) 
  - added logic for `heal_platform_citation`, `repository_study_link`, 
    `repository_citation`, and `related studies` ([#2472](https://github.com/uc-cdis/cloud-automation/pull/2472)) 
  - `gen3 logs snapshot`: in addition to `containers` logs, also get 
    `initContainers` logs ([#2478](https://github.com/uc-cdis/cloud-automation/pull/2478)) 

#### Bug Fixes
  - Fixed a bug in the cedar ingestion script ([#2494](https://github.com/uc-cdis/cloud-automation/pull/2494)) 
  - fix typo ([#2483](https://github.com/uc-cdis/cloud-automation/pull/2483))
  - add missing config.ini option ([#2482](https://github.com/uc-cdis/cloud-automation/pull/2482)) 
  - fix mountpath, new argo-wrapper Docker images uses `/argowrapper` folder, 
    not `/src` ([#2481](https://github.com/uc-cdis/cloud-automation/pull/2481))
  - Added kms permissions for karpenter ([#2467](https://github.com/uc-cdis/cloud-automation/pull/2467)) 
  - fix squid counter ([#2464](https://github.com/uc-cdis/cloud-automation/pull/2464)) 

#### Improvements
  - kube-setup-hatchery will create a dynamodb table for gen3-license-users if 
    table in hatchery config ([#2441](https://github.com/uc-cdis/cloud-automation/pull/2441)) 
  - Increases VA prod parallel workflows to 3 ([#2473](https://github.com/uc-cdis/cloud-automation/pull/2473)) 
  - updating the security policy used for https listener to be newer and fips 
    compliant. ([#2447](https://github.com/uc-cdis/cloud-automation/pull/2447))

#### Deployment Changes
  - Add azure blob storage to web_wildcard_whitelist ([#2475](https://github.com/uc-cdis/cloud-automation/pull/2475)) 

## uc-cdis/data-portal

#### Bug Fixes
  - Discovery: fixed an issue that array values are incorrectly flattened for 
    list components ([#1494](https://github.com/uc-cdis/data-portal/pull/1494))

#### New Features
  - Add buttons for downloading individual file in manifest from the tabbed 
    version discovery details page ([#1492](https://github.com/uc-cdis/data-portal/pull/1492)) 
  - Adds download variable metadata button to action buttons within data 
    download list ([#1476](https://github.com/uc-cdis/data-portal/pull/1476))

#### Improvements
  - Add IDP login tooltip for discovery detail page action buttons ([#1492](https://github.com/uc-cdis/data-portal/pull/1492)) 
  - Makes the _DownloadAllModal_ a more reusable and generic _DownloadModal_ 
    within data download list component ([#1476](https://github.com/uc-cdis/data-portal/pull/1476)) 
  - Adds additional type checking to CheckHealLoginNeeded to avoid JS errors 
    now that function is being called in more places. ([#1476](https://github.com/uc-cdis/data-portal/pull/1476)) 

## uc-cdis/fence

#### Dependency Updates
  - paramiko, for security reasons ([#1138](https://github.com/uc-cdis/fence/pull/1138)) 
  - cryptography to >=42.0.2 ([#1137](https://github.com/uc-cdis/fence/pull/1137)) 
  - gen3users to ^1.0.2 ([#1137](https://github.com/uc-cdis/fence/pull/1137))
  - pyyaml to ^6.0.1 ([#1137](https://github.com/uc-cdis/fence/pull/1137))

## uc-cdis/hatchery

#### Bug Fixes
  - Fix a bug where we were not using remote credentials to check AWS RAM 
    shares ([#95](https://github.com/uc-cdis/hatchery/pull/95))

#### Dependency Updates
  - Fix the prisma defender version. Long term we should read this from config, 
    this is a hotfix. ([#94](https://github.com/uc-cdis/hatchery/pull/94))

## uc-cdis/manifestservice

#### Dependency Updates
  - cryptography to 42.0.5 ([#41](https://github.com/uc-cdis/manifestservice/pull/41)) 

## uc-cdis/metadata-service

#### Improvements
  - Sanitize path for aggregate config file ([#101](https://github.com/uc-cdis/metadata-service/pull/101)) 

#### Dependency Updates
  - cryptography to 42.0.5 ([#101](https://github.com/uc-cdis/metadata-service/pull/101)) 
  - pyyaml to 6.0.1 ([#101](https://github.com/uc-cdis/metadata-service/pull/101)) 

## uc-cdis/peregrine

#### Dependency Updates
  - cryptography to 42.0.5 ([#215](https://github.com/uc-cdis/peregrine/pull/215)) 

## uc-cdis/sheepdog

#### Dependency Updates
  - cryptography to 42.0.5 ([#407](https://github.com/uc-cdis/sheepdog/pull/407)) 
  - cryptography to 42.0.2, poetry to 1.7.1 ([#406](https://github.com/uc-cdis/sheepdog/pull/406)) 

## uc-cdis/sower-jobs

#### Dependency Updates
  - Bumps [aiohttp](https://github.com/aio-libs/aiohttp) from 3.9.1 to 3.9.2. 
    (#48)

#### New Features
  - batch export job now can accept a manifest from input data ([#50](https://github.com/uc-cdis/sower-jobs/pull/50)) 

#### Improvements
  - Update Gen3SDK which conatins the change in Gen3SDK to relax the manifest 
    validation in DRS pull cmds ([#49](https://github.com/uc-cdis/sower-jobs/pull/49)) 

## uc-cdis/sower

#### Improvements
  - allow to config customized labels for job ([#43](https://github.com/uc-cdis/sower/pull/43)) 

## uc-cdis/tube

#### Dependency Updates
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 41.0.7 to 
    42.0.4. (#258)
  - Bumps [urllib3](https://github.com/urllib3/urllib3) from 1.26.16 to 
    1.26.18. (#255)
  - Bumps [werkzeug](https://github.com/pallets/werkzeug) from 2.2.2 to 2.3.8. 
    (#252)

## uc-cdis/workspace-token-service

#### Dependency Updates
  - Bumps [flask](https://github.com/pallets/flask) from 2.2.2 to 2.2.5. (#67)

## uc-cdis/hatchery

#### Bug Fixes
  - Fix a bug where we were not using remote credentials to check AWS RAM 
    shares ([#95](https://github.com/uc-cdis/hatchery/pull/95))

#### Dependency Updates
  - Fix the prisma defender version. Long term we should read this from config, 
    this is a hotfix. ([#94](https://github.com/uc-cdis/hatchery/pull/94))

## uc-cdis/manifestservice

#### Dependency Updates
  - cryptography to 42.0.5 ([#41](https://github.com/uc-cdis/manifestservice/pull/41)) 

## uc-cdis/metadata-service

#### Improvements
  - Sanitize path for aggregate config file ([#101](https://github.com/uc-cdis/metadata-service/pull/101)) 

#### Dependency Updates
  - cryptography to 42.0.5 ([#101](https://github.com/uc-cdis/metadata-service/pull/101)) 
  - pyyaml to 6.0.1 ([#101](https://github.com/uc-cdis/metadata-service/pull/101)) 

## uc-cdis/peregrine

#### Dependency Updates
  - cryptography to 42.0.5 ([#215](https://github.com/uc-cdis/peregrine/pull/215)) 

## uc-cdis/sheepdog

#### Dependency Updates
  - cryptography to 42.0.5 ([#407](https://github.com/uc-cdis/sheepdog/pull/407)) 
  - cryptography to 42.0.2, poetry to 1.7.1 ([#406](https://github.com/uc-cdis/sheepdog/pull/406)) 

## uc-cdis/sower-jobs

#### Dependency Updates
  - Bumps [aiohttp](https://github.com/aio-libs/aiohttp) from 3.9.1 to 3.9.2. 
    (#48)

#### New Features
  - batch export job now can accept a manifest from input data ([#50](https://github.com/uc-cdis/sower-jobs/pull/50)) 

#### Improvements
  - Update Gen3SDK which conatins the change in Gen3SDK to relax the manifest 
    validation in DRS pull cmds ([#49](https://github.com/uc-cdis/sower-jobs/pull/49)) 

## uc-cdis/sower

#### Improvements
  - allow to config customized labels for job ([#43](https://github.com/uc-cdis/sower/pull/43)) 

## uc-cdis/tube

#### Dependency Updates
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 41.0.7 to 
    42.0.4. (#258)
  - Bumps [urllib3](https://github.com/urllib3/urllib3) from 1.26.16 to 
    1.26.18. (#255)
  - Bumps [werkzeug](https://github.com/pallets/werkzeug) from 2.2.2 to 2.3.8. 
    (#252)

## uc-cdis/workspace-token-service

#### Dependency Updates
  - Bumps [flask](https://github.com/pallets/flask) from 2.2.2 to 2.2.5. (#67)

## uc-cdis/hatchery

#### Bug Fixes
  - Fix a bug where we were not using remote credentials to check AWS RAM 
    shares ([#95](https://github.com/uc-cdis/hatchery/pull/95))

#### Dependency Updates
  - Fix the prisma defender version. Long term we should read this from config, 
    this is a hotfix. ([#94](https://github.com/uc-cdis/hatchery/pull/94))

## uc-cdis/manifestservice

#### Dependency Updates
  - cryptography to 42.0.5 ([#41](https://github.com/uc-cdis/manifestservice/pull/41)) 

## uc-cdis/metadata-service

#### Improvements
  - Sanitize path for aggregate config file ([#101](https://github.com/uc-cdis/metadata-service/pull/101)) 

#### Dependency Updates
  - cryptography to 42.0.5 ([#101](https://github.com/uc-cdis/metadata-service/pull/101)) 
  - pyyaml to 6.0.1 ([#101](https://github.com/uc-cdis/metadata-service/pull/101)) 

## uc-cdis/peregrine

#### Dependency Updates
  - cryptography to 42.0.5 ([#215](https://github.com/uc-cdis/peregrine/pull/215)) 

## uc-cdis/sheepdog

#### Dependency Updates
  - cryptography to 42.0.5 ([#407](https://github.com/uc-cdis/sheepdog/pull/407)) 
  - cryptography to 42.0.2, poetry to 1.7.1 ([#406](https://github.com/uc-cdis/sheepdog/pull/406)) 

## uc-cdis/sower-jobs

#### Dependency Updates
  - Bumps [aiohttp](https://github.com/aio-libs/aiohttp) from 3.9.1 to 3.9.2. 
    (#48)

#### New Features
  - batch export job now can accept a manifest from input data ([#50](https://github.com/uc-cdis/sower-jobs/pull/50)) 

#### Improvements
  - Update Gen3SDK which conatins the change in Gen3SDK to relax the manifest 
    validation in DRS pull cmds ([#49](https://github.com/uc-cdis/sower-jobs/pull/49)) 

## uc-cdis/sower

#### Improvements
  - allow to config customized labels for job ([#43](https://github.com/uc-cdis/sower/pull/43)) 

## uc-cdis/tube

#### Dependency Updates
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 41.0.7 to 
    42.0.4. (#258)
  - Bumps [urllib3](https://github.com/urllib3/urllib3) from 1.26.16 to 
    1.26.18. (#255)

