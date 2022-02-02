# Core Gen3 Release 2022.02

## uc-cdis/fence

#### Bug Fixes
  - `visa_types` should be strings (#985)

## uc-cdis/data-portal

#### New Features
  - Update NIAID Clinical Trials Footer with `HHS responsible disclosure link` 
    (#960)
  - Update GWAS UI step tables by replacing mock data with data from cohort 
    middleware (#948)

#### Improvements
  - Removed commented code related to Global/World tabs (#959)

#### Bug Fixes
  - Dictionary: fixed a bug causing `clear history` and `clear result` buttons 
    are malfunctioning (#958)
  - Discovery: fixed an issue cuased by updated `antd` CSS sheet (#957)

#### Dependency Updates
  - Bumps [graphiql](https://github.com/graphql/graphiql) from 1.4.2 to 1.4.7. 
    (#955)

## uc-cdis/sheepdog

#### New Features
  - Validate `jsonschema` format during submission (#363)

#### Breaking Changes
  - Sheepdog now validates formats. If your dictionary uses formats and you 
    have existing data or submission pipelines that do not respect these 
    formats, this might be a breaking change (#363)

#### Dependency Updates
  - `gen3datamodel` to 3.1.0 (#363)

## uc-cdis/sower-jobs

#### New Features
  - Adds a sower job which accepts an input of (#29)
  - `{ "study_ids": [  "acb-xyz" ] }` (#29)
  - and constructs a manifest of the files in these studies, downloads and 
    compresses them, and uploads them to a user-specific location in s3 (which 
    is overwritten each time a user initiates a download) (#29)

## uc-cdis/cloud-automation

#### New Features
  - adding argoproj.github.io to squid whitelist to install argo in vhdc prod 
    (#1822)
  - Added cli command to quickly update hpa rules on the fly (#1741)

#### Bug Fixes
  - Correctly setup parameter group for new versions with custom values (#1823)
  - Added new NDE hostname so that subcommons can query parent (#1816)
  - fixed psql13 script (#1820)
  - Fixed psql13 script (#1819)

#### Improvements
  - Updated default postgres version (#1823)

## uc-cdis/requestor

#### New Features
  - Allow requesting access to any existing policy, in addition to allowing 
    requesting "read + read_storage" access to a resource path (#24)
  - Allow revoking access to a policy if this access was granted via Requestor 
    (#24)
  - The `GET /requests/user` endpoint accepts filter query parameters, for 
    example `?policy_id=foo&status=APPROVED` (#24)
  - The `GET /requests/user` endpoint accepts an `active` query parameter, to 
    only return access requests that are not in a final or draft status (#24)
  - The `POST /request/user_resource_paths` endpoint accepts a list of 
    permissions in the request body in addition to a list of resource paths 
    (#24)

#### Improvements
  - Reorganize documentation (#24)
  - Rename "maintain" module to "manage" in code and documentation (#24)
  - Allow specifying a custom `ARBORIST_URL` in the configuration if it is not 
    set as an environment variable (#24)

#### Dependency Updates
  - `gen3authz` to 1.4.1 (#24)

#### Deployment Changes
  - This Requestor update requires Arborist 3.2.0/2021.12 or more recent (#24)
  - Requestor database migration to version `42cbae986650` (should happen 
    automatically in cloud-automation deployments) (#24)

## uc-cdis/requestor

#### New Features
  - Allow requesting access to any existing policy, in addition to allowing 
    requesting "read + read_storage" access to a resource path (#24)
  - Allow revoking access to a policy if this access was granted via Requestor 
    (#24)
  - The `GET /requests/user` endpoint accepts filter query parameters, for 
    example `?policy_id=foo&status=APPROVED` (#24)
  - The `GET /requests/user` endpoint accepts an `active` query parameter, to 
    only return access requests that are not in a final or draft status (#24)
  - The `POST /request/user_resource_paths` endpoint accepts a list of 
    permissions in the request body in addition to a list of resource paths 
    (#24)

#### Improvements
  - Reorganize documentation (#24)
  - Rename "maintain" module to "manage" in code and documentation (#24)
  - Allow specifying a custom `ARBORIST_URL` in the configuration if it is not 
    set as an environment variable (#24)

#### Dependency Updates
  - `gen3authz` to 1.4.1 (#24)

#### Deployment Changes
  - This Requestor update requires Arborist 3.2.0/2021.12 or more recent (#24)
  - Requestor database migration to version `42cbae986650` (should happen 
    automatically in cloud-automation deployments) (#24)

