# Core Gen3 Release 202109 (Talley’s Corner)

## uc-cdis/fence

#### Improvements
  - Update "/delete" endpoint documentation (#953)
  - Fix the `/.well-known/openid-configuration` endpoint to always return the 
    environment's base URL in the `issuer` field, instead of returning the 
    upstream Fence IDP's base URL (#952)
  - Add `samesite="Lax"` to cookies of `access_token` and `fence` (#951)
  - Only try to update Google IAM with billing permissions for an SA if the SA 
    creds are NOT cached, e.g. only do it once per cache of the creds to reduce 
    unnecessary network calls to Google (#938)
  - When deciding whether to sign a URL for download, do not rely on "acl" if 
    the record has an "authz" (#949)
  - Once we retire the k8s sidecar containers from fence's k8s YAML (here: 
    https://github.com/uc-cdis/cloud-automation/pull/1643), old fence images 
    will face a lot of log noise as the HTTP metrics endpoints will no longer 
    exist. (#941)

#### New Features
  - Split the private fields from the public fields in the audit logging 
    configuration (#949)

#### Bug Fixes
  - PXP-7690 (#948)

## uc-cdis/guppy

#### Bug Fixes
  - Fixed a bug causing incorrectly putting `null` into filters that contain 
    nested fields (#124)

## uc-cdis/hatchery

#### New Features
  - Add DD APM support to Hatchery (#16)

## uc-cdis/pelican

#### Improvements
  - Add docs about EXTRA_NODES config (#55)

## uc-cdis/data-portal

#### New Features
  - add vaccine total to IL page (#897)
  - Use a side panel/drawer for Discovery page details (#876)
  - Enable exporting to workspaces for multiple Discovery results (#876)
  - Utilize the aggregate metadata service APIs provided by the 
    metadata-service app (#876)
  - Create a new configuration for a HEAL-specific bundle (#876)
  - Allow a site to default to the Discovery page without authentication (#876)
  - Allow public access to the Discovery page with prompts to authenticate 
    on-demand (#876)
  - Discovery page will have a new look and feel (#876)
  - Add Datadog RUM support to HEAL bundle (#876)
  - Create Date slider on maps to view data changes over time (#875)
  - Create multiple map layers to view other data (#875)
  - Add Datadog Real User Monitoring (RUM) integration (#881)

#### Bug Fixes
  - Fixed a bug in the Indexing page in which the download buttons would not 
    function in Chrome. (#905)
  - duplicate tags are removed (#898)
  - subject count fields are converted to integer if type is a string (#898)
  - cleaned up added fields in loadStudiesFromAggMDSRequests (x.name = 
    x.short_name;) (#898)
  - Fix broken carousel styling introduced in release 3.0.0 (#895)

#### Improvements
  - Discovery page: Links in table and study pages now open in new tab instead 
    of navigating away from Discovery page. (#901)
  - Misc: change CSP for mapbox according to [this 
    guide](https://docs.mapbox.com/mapbox-gl-js/api/#csp-directives) (#893)
  - Misc: change CSP `connect-src: https://*.s3.amazonaws.com` to `connect-src: 
    https://<DATA_UPLOAD_BUCKET_NAME>.s3.amazonaws.com` (#893)
  - Do not log warnings for empty study viewer values (#894)
  - Misc: feed `portalVersion` to DD RUM (#896)
  - Style updates (#876)
  - Responsive tags in the tag viewer (#876)
  - Updates to tests (#876)
  - Further componentize the Discovery page (#876)
  - New data availability status `pending` (#876)
  - Workspace: add support for waiting for network proxy becomes ready in 
    launch spinner (#887)
  - Use the RStudio logo for both 'RStudio' and 'R Studio' workspaces (#886)

#### Dependency Updates
  - Redux/local storage testing related dependencies (#876)

#### Deployment Changes
  - Requires https://github.com/uc-cdis/cloud-automation/pull/1687, otherwsie 
    `Indexing` page may not work properly (#893)
  - Portal config field `discoveryConfig.features.exportToWorkspaceBETA` has 
    been renamed to `discoveryConfig.features.exportToWorkspace` (#876)
  - Note that there are several other new configurations introduced for the 
    Discovery page, please refer to [this 
    diff](https://github.com/uc-cdis/data-portal/pull/876/files#diff-b44409708be4e154876122765a9fd3ada56184bb299149d53f7227a5db35c2ea)
    (#876)
  - New `GEN3_BUNDLE` option `heal` introduced for buliding a HEAL bundle (#876)
  - To enable DD RUM, must create a `portal-datadog-config` k8s secret with 
    `datadog_application_id` and `datadog_client_token` in it, see 
    https://github.com/uc-cdis/cloud-automation/pull/1651 (#881)

## uc-cdis/ssjdispatcher

#### Bug Fixes
  - Don't re-send failing messages to SQS which will result in duplicate data 
    (#38)
  - Properly purge messages after they exceed the retry count (#38)

#### Improvements
  - Move away from in-memory job tracking (#38)

#### Dependency Updates
  - Update to go 1.16 (#38)

## uc-cdis/tube

#### New Features
  - Tube support for PostgreSQL SSL (#150)
  - Multiple field for joining two indices (#153)

#### Bug Fixes
  - Bug fix for `Cannot run multiple SparkContexts at once` error when starting 
    up `tube`. (#150)

#### Improvements
  - Update Readme and test suite to cover using PostgreSQL with SSL (#150)
  - Update `wait_for_quay.sh` to support parsing option `-a` for number of 
    attempts (#149)
  - Update `travis` pipeline to use `-a` option from `wait_for_quay.sh` (#149)

#### Dependency Updates
  - Update `python` dependencies for `gdcdictionary` and `py2neo`. (#150)

## uc-cdis/workspace-token-service

#### Bug Fixes
  - Do not allow a user to indefinitely generate access tokens via the `/token` 
    endpoint (#35)

## uc-cdis/gen3-fuse

#### New Features
  - Manifest entries can optionally contain a `commons_url` field that points 
    to an external host supporting the DRS API. The files related to each 
    external object ID will be mounted alongside files from the host commons. 
    (#34)

## uc-cdis/mariner

#### Improvements
  - Update Mariner project repo and remove internal documentation. (#48)
  - Updated detect secrets baseline to include `api_key` for Mariner quickstart 
    example. (#48)

#### Deployment Changes
  - Removed netpolicy "off" from documentation for Mariner deployment, it has 
    been resolved in this 
    [PR](https://github.com/uc-cdis/cloud-automation/pull/1665). (#48)
  - New pre commit config requires `detect-secrets==1.0.3` (#48)

## uc-cdis/mariner

#### Improvements
  - Update Mariner project repo and remove internal documentation. (#48)
  - Updated detect secrets baseline to include `api_key` for Mariner quickstart 
    example. (#48)

#### Deployment Changes
  - Removed netpolicy "off" from documentation for Mariner deployment, it has 
    been resolved in this 
    [PR](https://github.com/uc-cdis/cloud-automation/pull/1665). (#48)
  - New pre commit config requires `detect-secrets==1.0.3` (#48)

## uc-cdis/mariner

#### Improvements
  - Update Mariner project repo and remove internal documentation. (#48)
  - Updated detect secrets baseline to include `api_key` for Mariner quickstart 
    example. (#48)

#### Deployment Changes
  - Removed netpolicy "off" from documentation for Mariner deployment, it has 
    been resolved in this 
    [PR](https://github.com/uc-cdis/cloud-automation/pull/1665). (#48)
  - New pre commit config requires `detect-secrets==1.0.3` (#48)

## uc-cdis/cloud-automation

#### New Features
  - Adding `.data-commons.org` and `.va.data-commons.org` to squid proxy 
    whitelist. (#1709)
  - Create configuration scripts for metadata-service (#1701)
  - Add DD APM support to Hatchery (#1695)
  - Added sqs monitoring (#1677)
  - Added little script to update the ssl cipher suite for revproxy (#1678)
  - Added slack webhook alerts to standard ETL jobs (#1675)
  - Added netpolicies to mariner (#1665)
  - `distribute-licenses` cron job to scan running pods for unlicensed stata 
    workspaces requresting a license, copy over demo licenses (#1663)
  - Allow connecting to the monqcle API for PDAPS data (#1659)
  - allow traffic to fwww.bc.edu, repec.org (ssc repositories) (#1658)
  - https://ctds-planx.atlassian.net/browse/HP-239 (#1658)
  - Added ability to configure cronjobs through manifest (#1640)
  - Squid update to allow clinicaltrials.gov (#1655)

#### Bug Fixes
  - Made mariner creds optional so EKS IAM deployments can leverage the 
    attached SA instead (#1654)

#### Improvements
  - Move aggregate MDS configuration to our standard manifest config process 
    (#1701)
  - Add `samesite="Lax"` to cookies of `session`, `visitor`, `csrftoken` and 
    `service_releases` (#1703)
  - MDS: Do not restrict body size for mds (#1706)
  - Pass the data upload bucket name in fence-config into portal as 
    `DATA_UPLOAD_BUCKET` when doing `kube-setup-portal` (#1687)
  - Pass Datadog RUM application ID and client token into Portal (#1651)

#### Dependency Updates
  - Ruby 2.5 will be EOL 7/30, updating to latest tested ruby version to 
    prevent deprecation (#1676)

#### Deployment Changes
  - Remove `USE_AGG_MDS` and `AGG_MDS_NAMESPACE` from 
    `Gen3Secrets/g3auto/metadata/metadata.env` and set those variables in a 
    `manifest: {}` block in `manifest.json` (#1701)
  - Migrate the appropriate agg MDS config to the relevant manifest repo under 
    a `metadata/aggregate_config.json` path (#1701)
  - Run `gen3 kube-setup-metdata` and roll the metadata service in Kubernetes 
    (#1701)
  - Add cronjobs to the manifest by making a cdis-manifest/(commons 
    folder)/manifests/cronjobs/cronjobs.json file with each cron name being a 
    key and the cron schedule being the value. (#1640)

#### Dependency Updates
  - Bumps [lodash](https://github.com/lodash/lodash) from 4.17.19 to 4.17.21. 
    (#1600)

## uc-cdis/audit-service

#### New Features
  - Split the private fields from the public fields in the audit logging 
    configuration (#6)

#### Improvements
  - Use SQS messages' 'SentTimestamp' instead of generating timestamps when 
    processing audit logs (#4)

