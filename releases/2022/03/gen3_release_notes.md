# Core Gen3 Release 2022.03

## uc-cdis/fence

#### Bug Fixes
  - During arborist calls retries, only await `healthy()` if the arborist 
    client is async (#1002)

#### Improvements
  - Add authz column to project table during migration. Corresponds with 
    [uc-cdis/userdatamodel#74.](https://github.com/uc-cdis/userdatamodel/pull/74)
    (#1003)

#### Dependency Updates
  - Upgrade PyYAML to version 5.4 or higher. (#998)
  - Upgrade Flask-Cors to version 3.0.9 or higher. (#998)

## uc-cdis/cdis-data-client

#### Dependency Updates
  - run a `go get -u && go mod tidy` to update deps (#107)

## uc-cdis/hatchery

#### Improvements
  - Make sure all resources are idempotent, and exist before launch (#43)

#### Bug Fixes
  - Fix EFS persistent disk issue (#43)

#### New Features
  - Add ability to add a default pay model if a pay model for user hasn't been 
    specified. (#42)
  - This should help us with the work of adding and removing users from blanket 
    billing. (#42)
  - Also tackled [HP-617](https://ctds-planx.atlassian.net/browse/HP-617) (#42)
  - Tested manually in qa-heal. (#42)

## uc-cdis/indexd

#### Bug Fixes
  - Remove `contents` field from DRS Blob objects (#326)

#### Dependency Updates
  - Upgrade PyYAML to version 5.4 or higher. (#327)

## uc-cdis/peregrine

#### Dependency Updates
  - Upgrade Flask-Cors to version 3.0.9 or higher. (#184)
  - Upgrade python-Levenshtein to version 0.12.1 or higher. (#184)

## uc-cdis/pidgin

#### Dependency Updates
  - Upgrade urllib3 to version 1.26.5 or higher. (#43)

## uc-cdis/data-portal

#### Improvements
  - The homepage introduction button link could already be customized, now also 
    allow customizing the button text (#972)
  - Study viewer: log an error when getting a non-200 status code from 
    Requestor and do not process error data (#971)
  - Update the HHS Footer link in NIAID Commons (#970)
  - PRC homepage: remove unused data (#967)

#### Bug Fixes
  - PRC homepage: fix chart tooltips (#971)
  - Display Numeric Values on Study Details (#961)

## uc-cdis/sheepdog

#### Improvements
  - Split "use SSL" and "isolation level" unit tests into their own file. The 
    previous parametrization caused the tests to take 30+ min to run, because 
    all tests that use the `pg_driver` fixture were ran 12 times (#364)

#### Dependency Updates
  - Upgrade Flask-Cors to version 3.0.9 or higher. (#365)
  - Upgrade urllib3 to version 1.26.5 or higher. (#365)

## uc-cdis/sower

#### Dependency Updates
  - run a `go get -u && go mod tidy` to update deps and update a function call 
    for new version (#32)

## uc-cdis/ssjdispatcher

#### Bug Fixes
  - Fixes an endless loop in ssjdispatcher (#44)

#### Dependency Updates
  - run a `go get -u && go mod tidy` to update deps (#43)

## uc-cdis/tube

#### Dependency Updates
  - Pin fixed version for ipaddress. (#164)

## uc-cdis/metadata-service

#### Improvements
  - PDAPS adapter now support filtering studies with `id` field (#46)

## uc-cdis/dcf-dataservice

#### Bug Fixes
  - Fix incorrent loggin keyword from `indexd_urls` to `indexd_url` (#104)
  - Fix dependency issues (#103)

#### Improvements
  - don't list all of indexd or what's in bucket, just ingest what's in the 
    provided manifest (#102)

#### Dependency Updates
  - python_dateutil==2.8.0 (#103)
  - requests==2.22.0 (#103)
  - boto3>=1.9.111<2.0.0 (#103)
  - retry<=0.9.2 (#103)
  - google-auth==1.6.3 (#103)
  - google-resumable-media==0.4.1 (#103)
  - google-cloud-storage==1.6.0 (#103)
  - httplib2==0.12.0 (#103)
  - pyparsing==2.4.2 (#103)
  - apache-beam[gcp]==2.16.0 (#103)
  - setuptools==41.4.0 (#103)

## uc-cdis/cloud-automation

#### Improvements
  - Add `frontend-framework` to `roll all` cmd (#1836)
  - Update `gen3ff` deployment script (#1835)
  - update `metadata-config` secret with `kube-setup-secrets` script so 
    `metadata-aggregate-sync` job can run more seamlessly (#1829)

#### New Features
  - add argo-wrapper deployment as part of cloud automation (#1832)
  - Added cordon step before draining nodes so new pods wont be scheduled on 
    them (#1486)
  - Added documentation for updating indexd prefixes in indexd (#1514)
  - service and deployment for frontend framework (#1827)
  - nginx routing behind /ff endpoint (#1827)
  - Added little script to remove deprecated letsencrypt cert (#1777)
  - Automate rolling after public Fence config update (#1830)
  - Added initial tf files to setup storage gateway (#1772)
  - add new, required ga4gh expiration cronjob (NOTE: this PR does not 
    automatically enable it, that will be done in a future PR when the feature 
    is fully ready) (#1806)

#### Deployment Changes
  - we will now be deploying a new service called argo-wrapper (#1832)
  - Move datadog deployment to helm for easier configuration and upgrades 
    (#1824)

#### Bug Fixes
  - Added netnolimit netpolicy so pidgin can download python packages (#1831)
  - Fixed bug where multiple esproxy replicas would cause check to timeout 
    (#1789)
  - fix commented out cronjob name so when we uncomment in the future, it works 
    (#1825)

## uc-cdis/audit-service

#### Bug Fixes
  - Temporarily accept string "sub" in login logs (#14)

