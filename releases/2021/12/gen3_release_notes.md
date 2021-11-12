# Core Gen3 Release (Wicker Park)

## uc-cdis/arborist

#### New Features
  - Support `expand` parameter in `GET /policy` endpoint to get detailed roles 
    instead of only role IDs (#138)
  - adding golangci-lint (#137)

#### Improvements
  - Update `POST /user`, `GET /policy` and `GET /role` endpoints in API docs 
    (#138)
  - Update Go 1.17 (#136)

## uc-cdis/fence

#### Improvements
  - update to latest base image (#976)
  - populate the ID the IdP uses in the database if provided (for future 
    reference) NOTE: This may be the same as the unique username determined, 
    but if not, this allows storing both (#975)
  - Use new Python base image (now: Debian, before: Alpine) (#972)
  - Remove fallback to other fields from RAS userinfo response when UserID is 
    not provided and return an error instead. (#969)
  - Simplifying and optimizing of Docker image (#971)
  - Installs the following versions of `mcrypt`, `libmcrypt4` and `libmhash2`: 
    (#971)
  - ``` (#971)
  - libmhash2:amd64     0.9.9.9-7+b1    vs from sources 0.9.9.9 (#971)
  - libmcrypt4          2.5.8-3.4       vs from sources 2.5.8 (#971)
  - mcrypt              2.6.8-4         vs from sources 2.6.4 (#971)
  - ``` (#971)
  - Smaller size: (#971)
  - ``` (#971)
  - REPOSITORY TAG IMAGE ID CREATED SIZE (#971) 
    
  - fence feat_python3.6-buster-tricks 310739ca0fb2 12 minutes ago 1.28GB 
    (#971)
  - quay.io/cdis/fence feat_python3.6-buster ad81bb6a67e4 4 hours ago 1.39GB 
    (#971)
  - ``` (#971)

## uc-cdis/cdis-data-client

#### New Features
  - Use `go.ini` for configuration management (#104)
  - adding golangci-lint (#103)

#### Breaking Changes
  - The new `ini` format config file is not compatible with the old 
    line-sepearted plain-text config file, therefore users will need to 
    re-setup their profiles (#104)
  - Legacy command `generate-tsv` has been removed (#104)
  - Legacy code related to GDC has been removed (#104)

#### Bug Fixes
  - Fix a bug of not pasing existing profile configs correctly (#104)
  - Close progress bars to prevent too many open files (#102)
  - Fix error when the configuration does not include shepherd fields (#100)

#### Improvements
  - Reduce frequency of function call to read config from local file (#104)
  - Skip getting file info from `indexd` if already provided within manifest 
    (#104)
  - Cache the credentials configuration so we don't read the configuration file 
    more than once (#100)
  - Update Go 1.17 (#99)

## uc-cdis/guppy

#### Improvements
  - Not asking Elasticsearch for `_source` field (#126)
  - Add DD APM to Guppy (#127)

## uc-cdis/hatchery

#### New Features
  - Decoupled workspaces can be fulfilled by either EKS or ECS (#38)
  - For ECS workspaces, presistent storage volume are mounted using EFS (#38)
  - Fetch pay model data from DynamoDB; temporarily allow fallbacks to the 
    Hatchery configuration file (PR #35) (#38)
  - Traffics are routed through AWS Transit Gateway (#38)
  - Mount API key to decoupled workspace container when launching, and revoke 
    them when terminating (#38)
  - Fetch pay model data from DynamoDB; temporarily allow fallbacks to the 
    Hatchery configuration file (#35)

#### Bug Fixes
  - If no `PayModelsDynamodbTable` in Hatchery config, fallback to try to read 
    paymodels from config instead of DB (#36)

#### Improvements
  - Update Go 1.17 (#34)
  - Build flags to make GitCommit and GitVersion available for the code (#34)
  - Add "Quick start for local development" docs (PR #35) (#38)
  - Mount `/.gen3` directory for EKS, default mount path is `/.gen3` (PR #33) 
    (#38)
  - Mount `GEN3_ENDPOINT` as env var of container (#38)
  - Return `idleTimeLimit` and `lastActivityTime` from /status endpoint if 
    exists (#26) (#38)
  - Route all traffic privately between main AWS account, and workspace AWS 
    accounts over transit gateway. (#30)
  - Add "Quick start for local development" docs (#35)

#### Deployment Changes
  - Add `pay-models-dynamodb-table` to the Hatchery configuration file to fetch 
    pay model data from DynamoDB (PR #35) (#38)
  - Update the Hatchery configuration file `pay-models` block to change the 
    user field name to `user_id` (PR #35) (#38)
  - Add `gen3-volume-location` to the Hatchery configuration file for each 
    container to overwrite the directory that API key will be saved to (PR #33) 
    (#38)
  - Update the Hatchery configuration file `pay-models` block to add option 
    `ecs` for enabling ECS decoupled workspace (#38)
  - Update the Hatchery configuration file `pay-models` block to add option 
    `subnet` for setup transit gateway subnet addresses (#38)
  - Add `pay-models-dynamodb-table` to the Hatchery configuration file to fetch 
    pay model data from DynamoDB (#35)
  - Update the Hatchery configuration file `pay-models` block to change the 
    `user` field name to `user_id` (#35)

## uc-cdis/manifestservice

#### New Features
  - updating docker base image to debian (#26)

## uc-cdis/pelican

#### New Features
  - reverting base image change (#63)
  - installing ca-cartificates (#63)
  - reverting java update (#63)
  - new base image for docker files to update lets encrypt certs (#62)

#### Bug Fixes
  - Fix bug when launching an export job with an empty input in the body (#61)
  - Fix bug when launching an export job with a Sower `ROOT_NODE` index name 
    that is not the name of a node in the graph data model (#61)

#### Improvements
  - Reorganize documentation to make it easier to find and read (#61)
  - Document how to launch an export or import job (#61)
  - Remove unused `_get_dfs` function (#61)
  - Run black (#61)
  - Remove custom PR template (#61)

## uc-cdis/peregrine

#### Dependency Updates
  - Use new Python base image (now: Debian, before: Alpine) (#182)

#### Improvements
  - increase http timeout on the uWSGI side to 10 minutes (#181)

## uc-cdis/pidgin

#### New Features
  - updating docker image to python:pybase3-2.0.0 for lets encrypt update (#41)

## uc-cdis/data-portal

#### Improvements
  - Miner styling changes to study viewer page (#943)
  - Workspace: display user pay model information (if available) in a banner on 
    top of the workspace page (#900)
  - Workspace: external login options hint banner will only display if user has 
    any unconnected options (#900)
  - Misc: many eslint fixes (#940)
  - Data Explorer: Display a banner when a download is still in progress (#936)
  - Check for an existing download in progress when user loads discovery page 
    (#934)
  - Add more customized DD RUM actions (downloadManifest, downloadDataset, 
    launchWorkspace) (#932)

#### Deployment Changes
  - The pay model support depends on this PR: 
    https://github.com/uc-cdis/hatchery/pull/38 (#900)
  - set `"showExternalLoginsOnProfile": true` for showing external logins on 
    the profile page (#934)

#### New Features
  - Adds a System Use message to data-portal which when enabled will show a 
    system use message to the user and will be dismissed when the user accepts 
    the terms of use message. The accept state is stored in a cookie and is a 
    session cookie by default. The expiration of the cookie can be added to the 
    config file and is defined in terms of days. (#937)
  - The message is optional and is a non-breaking addition to the portal. (#937)
  - New icon for Notebook Browser tab (#938)
  - ![image](https://user-images.githubusercontent.com/67650599/138154752-8a28876d-e890-47df-abb5-d141a616fbd9.png)
    (#938)
  - Add detailed external login options to profile page, remove them from 
    workspaces page (#934)
  - When checking external login status, check only the status of logins whose 
    hosts match at least one selected data GUID (#934)
  - Add `"export-pfb-to-url"` button to Explorer, which allows exporting PFBs 
    to arbitrary URLs. See data-portal/docs/export_pfb_to_url.md (#929)

#### Bug Fixes
  - Fixes systemUseMessage showing displaying after logout. (#941)
  - Corrects documentation for systemUseTitle (#941)
  - Discovery: fixed a bug so customized DD RUM actions can be correctly 
    displayed as facets (#940)
  - When `verifyExternalLogins` is set to true, fix typeError preventing 
    export/download when a guid has no valid prefix (#939)
  - Data Explorer: `Download Data`, `Download Manifest` and `Download File 
    Manifest` buttons will be correctly disabled or turning into "pending" 
    state after a download action has been initialized but yet finishes (#936)
  - Workspace: fixed an error causing workspace launch status cut off texts 
    (#936)
  - Fix direct download error messages from incorrectly rendering as links 
    (#934)
  - Fixed a visual bug in Explorer dropdown buttons where dropdown button icons 
    were not configurable. (#929)

## uc-cdis/sheepdog

#### Bug Fixes
  - Fix export for non-string array values introduced in versions 3.2.0 / 
    2021.10 (#360)

#### Dependency Updates
  - Use new Python base image (now: Debian, before: Alpine) (#358)

#### Improvements
  - Increased uWSGI timeout to 10 minutes (600 seconds) (#357)

## uc-cdis/ssjdispatcher

#### Improvements
  - Update Go 1.17 (#40)

#### Deployment Changes
  - PS: This is follow-up on this one: #39 (#40)

## uc-cdis/tube

#### Dependency Updates
  - Install `libssl1.0.2` and `libgnutls30` to get updated certs (#161)

#### New Features
  - Support one node has multiple parents (#160)
  - Fix bug for nested index (#158)

## uc-cdis/workspace-token-service

#### New Features
  - updating base image to update outdated lets encrypt certificates (#37)

## uc-cdis/indexs3client

#### New Features
  - adding golangci-lint (#37)

#### Improvements
  - Explain in logs why a 404 from MDS isn't necessarily a problem. (#34)
  - Build flags to make GitCommit and GitVersion available for the code (#36)
  - Update Go 1.17 (#35)
  - Remove old PR templates (#35)

#### Bug Fixes
  - Fix for `x509: certificate signed by unknown authority` (#36)

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
  - Fixed newer version of `urllib` does api calls differently which was 
    breaking the way we called the GDC api (#97)

#### Improvements
  - Improved the way we separate bucket accounts (#96)
  - Move bucket account list to dcf_dataservice_settings (#96)
  - Improved bucket handling logic (#96)
  - Added new GDC projects to open bucket exception list (#95)
  - Updated readme to reflect more recent workflow process and clarity (#95)

## uc-cdis/mariner

#### Bug Fixes
  - Adding explicity labels for engine and task pods to talk with s3 (#62)

#### Improvements
  - Update Go to 1.17 (#61)
  - Optimize Docker images (#61)

#### Feature
  - This linter will show current style errors that should be fixed (#60)
  - We have via this PR fixed a variety of bugs described in the tickets above. 
    Also by fixing these bugs we are finally able to run the pre-genesis 
    workflow. (#59)

#### Bug Fix
  - 1. Right now initworkdir will put all commons and user files into the 
    working directory, this PR will fix that issue (#59)
  - 2. We are adding a temp fix for {} expression evaluation in javascript (#59)

## uc-cdis/ws-storage

#### Improvements
  - Update Go 1.17 (#2)

## uc-cdis/ws-storage

#### Improvements
  - Update Go 1.17 (#2)

## uc-cdis/cloud-automation

#### New Features
  - Added healthcheck script/cronjob for squid autohealing (#1770)
  - Using new manifest values for aws gateway (#1781)
  - new python 3.10 base image based off 3.6-buster (#1773)
  - mariner persistent volume and persistent volume claim added as part of 
    automatic deployment (#1767)
  - add mariner pod and mariner engine to indexd ingress policy (#1767)
  - New Python3.6 Debian Buster dockerfile (based heavily on official 
    dockerfiles for using Python / UWSGI / NGINX and previous Alpine-based 
    dockerfile) (#1753)

#### Bug Fixes
  - `[[ -z $THING ]]` syntax not available in default `sh` , change to `[ -z 
    $THING ]` (#1787)
  - Bug Fix: python nginx buster; change `echo -e` to `printf` for portability 
    (#1780)
  - Added kf and icgc keys to squid, for dbgap sync (#1759)
  - Fix some DD APM env vars for Hatchery (#1766)
  - Added netpolicy for mariner to talk to wts (#1754)
  - fix duplicate entries in the nginx access log (#1748)
  - skip aws_es_proxy_setup if ConfigMap doesn't exist (#1744)

#### Improvements
  - More documentation around Arborist nginx configuration for access to its 
    API (#1782)
  - increase the internal nginx (the one running inside the peregrine/sheepdog 
    Docker container) timeout for peregrine and sheepdog to 600 seconds (#1778)
  - All Kubernetes events will be sorted now (#1747)
  - Setup DD APM env vars for Guppy (#1766)
  - Logic to use new binary path from this PR 
    https://github.com/uc-cdis/aws-es-proxy/pull/2 (#1764)
  - Increase resources for aws-es-proxy (#1731)
  - Increasing the nginx proxy_read_timeout to 300 seconds (#1760)
  - Update timeouts to `/guppy` to 10 mins (#1749)

## uc-cdis/cloud-automation

#### New Features
  - Added healthcheck script/cronjob for squid autohealing (#1770)
  - Using new manifest values for aws gateway (#1781)
  - new python 3.10 base image based off 3.6-buster (#1773)
  - mariner persistent volume and persistent volume claim added as part of 
    automatic deployment (#1767)
  - add mariner pod and mariner engine to indexd ingress policy (#1767)
  - New Python3.6 Debian Buster dockerfile (based heavily on official 
    dockerfiles for using Python / UWSGI / NGINX and previous Alpine-based 
    dockerfile) (#1753)

#### Bug Fixes
  - `[[ -z $THING ]]` syntax not available in default `sh` , change to `[ -z 
    $THING ]` (#1787)
  - Bug Fix: python nginx buster; change `echo -e` to `printf` for portability 
    (#1780)
  - Added kf and icgc keys to squid, for dbgap sync (#1759)
  - Fix some DD APM env vars for Hatchery (#1766)
  - Added netpolicy for mariner to talk to wts (#1754)
  - fix duplicate entries in the nginx access log (#1748)
  - skip aws_es_proxy_setup if ConfigMap doesn't exist (#1744)

#### Improvements
  - More documentation around Arborist nginx configuration for access to its 
    API (#1782)
  - increase the internal nginx (the one running inside the peregrine/sheepdog 
    Docker container) timeout for peregrine and sheepdog to 600 seconds (#1778)
  - All Kubernetes events will be sorted now (#1747)
  - Setup DD APM env vars for Guppy (#1766)
  - Logic to use new binary path from this PR 
    https://github.com/uc-cdis/aws-es-proxy/pull/2 (#1764)
  - Increase resources for aws-es-proxy (#1731)
  - Increasing the nginx proxy_read_timeout to 300 seconds (#1760)
  - Update timeouts to `/guppy` to 10 mins (#1749)

## uc-cdis/audit-service

#### Bug Fixes
  - Fix querying timestamps (#12)

#### Improvements
  - Audit Service runs into a `CrashLoopBackOff` when there is an exception 
    instead of perpetually being in the `Running` state (#10)

