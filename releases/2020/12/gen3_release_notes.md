# 

## uc-cdis/indexd

#### Bug Fixes
  - Fix bundle schema to support all hash types. (#298)
  - Fix bundle POST endpoint to accept list of different types of checksums. 
    (#298)
  - Fix ga4gh/object GET endpoint to show list of checksums. (#298)

## uc-cdis/data-portal

#### Bug Fixes
  - Fixed a bug causing index bar chart to disappear (#765)

#### Improvements
  - The font size and label length of the COVID19 Dashboard charts is 
    configurable (#763)

## uc-cdis/sheepdog

#### Bug Fixes
  - Fix 500 error from Sheepdog when Indexd is unavailable (#335)
  - Fix mapping files for any node category ending in `"_file"` (#334)
  - Fix duplication of application logging messages by not propagating (#334)

#### Improvements
  - Set application log level based on 
    [`GEN3_DEBUG`](https://github.com/uc-cdis/cloud-automation/blob/a49af964e3b440883c3294f6138295d81855fc86/kube/services/sheepdog/sheepdog-deploy.yaml#L120)
    environment variable (#334)

## uc-cdis/ssjdispatcher

#### Breaking Changes
  - Going forward, to support the [indexing job updating the Metadata 
    Service](https://github.com/uc-cdis/indexs3client/pull/29), SSJDispatcher 
    now requires the Metadata Service to be deployed. Metadata Service creds 
    are now required in the `"imageConfig": {` section for every `"name": 
    "indexing"` job configured for SSJDispatcher. Without both Indexd and 
    Metadata Service creds configured for all `"name": "indexing"` jobs, 
    SSJDispatcher will exit immediately on startup. (#32)

#### Improvements
  - Exit with a status code of 1 instead of 0 when there are errors with 
    reading the credentials file (e.g. it can't be found, no SQS url present, 
    no MDS/Indexd creds) (#32)

#### Deployment Changes
  - `metadata-service` must already be present or added to the `"versions": {` 
    section of the `cdis-manifest`. After `metadata-service` has been confirmed 
    to be in the `cdis-manifest`, the now-required Metadata Service creds for 
    SSJDispatcher must be configured by running `gen3 roll all` with 
    `JENKINS_HOME` **not** set. `gen3 roll all` calls `gen3 
    kube-setup-ssjdispatcher`, which now [automatically 
    configures](https://github.com/uc-cdis/cloud-automation/pull/1428) the 
    SSJDispatcher secret with Metadata Service creds. (#32)

## uc-cdis/indexs3client

#### New Features
  - Update the `_bucket`, `_filename`, `_file_extension`, and `_upload_status` 
    (#29)
  - keys in corresponding Metadata Service object after a file has been 
    uploaded to the bucket. (#29)

#### Breaking Changes
  - Going forward, indexs3client now requires the Metadata Service to be 
    deployed. Metadata Service creds are now required in the `CONFIG_FILE` 
    environment variable in order for this job to run. Without both Indexd and 
    MDS creds configured, this job will immediately exit and update neither 
    Indexd or MDS. (#29)

#### Improvements
  - Determine if Indexd record already has hashes and size populated before 
    downloading S3 object and calculating hashes. If so, don’t bother 
    downloading/recalculating. (#29)
  - Define `ConfigInfo struct` so that the config (url and creds) for new 
    services can be easily unmarshalled from the `CONFIG_FILE` environment 
    variable (#29)
  - Make use of `retryablehttp` package to abstract http request retry logic 
    and only retry on 500-range errors (#29)

#### Dependency Updates
  - Add `github.com/hashicorp/go-retryablehttp v0.6.7` to `go.mod` (#29)

#### Deployment Changes
  - `metadata-service` must already be present or added to the `"versions": {` 
    section of the `cdis-manifest`. After `metadata-service` has been confirmed 
    to be in the `cdis-manifest`, the now-required Metadata Service creds for 
    SSJDispatcher/indexs3client must be configured by running `gen3 roll all` 
    with `JENKINS_HOME` **not** set. `gen3 roll all` calls `gen3 
    kube-setup-ssjdispatcher`, which now [automatically 
    configures](https://github.com/uc-cdis/cloud-automation/pull/1428) the 
    SSJDispatcher secret with the appropriate Metadata Service creds. After 
    running `gen3 roll all`, SSJDispatcher should be configured such that 
    SSJDispatcher can automatically pass the Metadata Service creds to the 
    indexs3client job instance (i.e. after running `gen3 roll all`, no further 
    action should be required by DevOps). (#29)

## uc-cdis/metadata-service

#### New Features
  - Add `GET /objects/{guid}/latest` endpoint that returns the Indexd record 
    and MDS object associated with the latest version of `guid` fetched from 
    Indexd. (#14)
  - Add `GET /objects/{guid}/download` endpoint to proxy a request to Fence to 
    generate a signed download url for the provided guid. (#12)

#### Improvements
  - Use `guid_mock` and `signed_url_mock` for repeated guids and signed urls in 
    `tests/conftest.py` (#14)
  - Configure `gunicorn` loggers so that http requests are logged to `stdout` 
    in production (#13)
  - Configure `uvicorn` loggers so that http requests are logged to `stdout` 
    while developing locally (#13)
  - Configure `mds` logger so that messages of a level greater than or equal to 
    the `mds` logger level are logged to `stdout`(e.g. if the `mds` logger is 
    set to `logging.DEBUG`, calling `logging.getLogger("mds").debug("message")` 
    results in a formatted `"message"` being logged to `stdout`) (#13)
  - Configure `root`, `gunicorn`, `uvicorn`, and `mds` loggers with a 
    consistent format using `cdislogging` (#13)
  - Fix a 
    [`DeprecationWarning`](https://github.com/uc-cdis/metadata-service/runs/1255470886)
    in the test suite (#13)

#### Dependency Updates
  - add `cdislogging = "^1.0.0"` to `pyproject.toml` (not changed in 
    `poetry.lock`) (#13)
  - update `alembic` from `1.4.2` to `1.4.3` (#13)
  - update `psycopg2-binary` from `2.8.5` to `2.8.6` (#13)
  - update `gen3authz ` from `1.0.0` to `1.0.1` (#13)

## uc-cdis/dcf-dataservice

#### Bug Fixes
  - Add missing botocore import (#86)
  - Add missing `bucket_name` variable and path (#86)
  - Fix aws replicate not using parameterized data endpoint. (#85)

## uc-cdis/mariner

#### Bug Fixes
  - Change base image to our hosted base image (#42)
  - fix error of duplicate secondary files getting loaded (#39)

#### Improvements
  - Expect "bearer" in the authorization header, and strip it to get the JWT 
    (#41)
  - removed the error-prone goofys FUSE tool previously used to read/write to 
    S3 (#40)
  - utilized AWS SDK for efficient file transfer before and after computations 
    (#40)
  - mount an auto-expanding EBS disk to every task pod to solve the storage 
    issue (#40)

#### Deployment Changes
  - mariner config in the manifest has been changed - see [Matt's dev 
    manifest](https://github.com/uc-cdis/gitops-dev/blob/e79fe85f475818379859c4314b057247557dce17/mattgarvin1.planx-pla.net/manifest.json#L183-L285)
    for example of latest config (#40)

