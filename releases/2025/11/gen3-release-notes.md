# Core Gen3 Release 2025.11 (Ekanite)
## uc-cdis/data-portal

#### Dependency Updates
  - Bumps [tar-fs](https://github.com/mafintosh/tar-fs) from 2.1.3 to 2.1.4. 
    (#1732)

#### Bug Fixes
  - fixed a bug cause access request form unable to submit in Gen3 bundle 
    ([#1730](https://github.com/uc-cdis/data-portal/pull/1730))

## uc-cdis/ecs-ws-sidecar

#### Breaking Changes
  - Updates the UID to 1010 via an environment variable for AL2 base images 
    ([#20](https://github.com/uc-cdis/ecs-ws-sidecar/pull/20))

#### Improvements
  - Skip mounting of stata-license for gen3-licensed workspaces ([#20](https://github.com/uc-cdis/ecs-ws-sidecar/pull/20)) 

#### Deployment Changes
  - The USER_UID environment variable can be set to 1010 for deployments that 
    use containers with AL2 base images. ([#20](https://github.com/uc-cdis/ecs-ws-sidecar/pull/20)) 

## uc-cdis/fence

#### New Features
  - Track X-forwarded headers for CADR reporting enhancements ([#1291](https://github.com/uc-cdis/fence/pull/1291)) 

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [brace-expansion](https://github.com/juliangruber/brace-expansion) 
    from 1.1.11 to 1.1.12. (#336)
  - Bumps [tar-fs](https://github.com/mafintosh/tar-fs) from 2.1.3 to 2.1.4. 
    (#333)

#### New Features
  - Guppy can now correctly handle querying deeply nested array field values 
    ([#329](https://github.com/uc-cdis/guppy/pull/329))

#### Deployment Changes
  - For deeply nested array fields, ETL needs to ensure its full path is 
    correctly generated in the array config index (for example, 
    `visits.treatments_array_under_subjects.test_article_name_array_under_treatments`
    instead of just `test_article_name_array_under_treatments`), otherwise 
    Guppy will not be able to handle it correctly ([#329](https://github.com/uc-cdis/guppy/pull/329)) 

## uc-cdis/hatchery

#### Breaking Changes
  - Restrict config file path to `/var/hatchery/hatchery.json` ([#133](https://github.com/uc-cdis/hatchery/pull/133)) 

#### Improvements
  - The gen3-license secret is written to env var, not available from 
    mount-files ([#131](https://github.com/uc-cdis/hatchery/pull/131))
  - Restrict config files to json ([#133](https://github.com/uc-cdis/hatchery/pull/133)) 

#### Dependency Updates
  - The license secret should be stored in a managed secret, no longer handled 
    by g3auto ([#131](https://github.com/uc-cdis/hatchery/pull/131))

#### Deployment Changes
  - If deploying to helm, the config mountPath should be specified in the 
    environment `values.yaml` or the environment should use a new release of 
    gen3-helm. ([#133](https://github.com/uc-cdis/hatchery/pull/133))

## uc-cdis/metadata-service

#### New Features
  - adds a prefix_option to the array configuration to better support the 
    changes to guppy's deep nesting ([#144](https://github.com/uc-cdis/metadata-service/pull/144)) 

#### Improvements
  - Added retries in metadata_aggregate_sync job while cloning temp indexes 
    ([#152](https://github.com/uc-cdis/metadata-service/pull/152))

#### Dependency Updates
  - Pinned starlette to 0.48.0 ([#152](https://github.com/uc-cdis/metadata-service/pull/152)) 
  - Pin starlette to 0.47.2 of higher to resolve the "Fix Allocation of 
    Resources Without Limits or Throttling" vulnerability ([#145](https://github.com/uc-cdis/metadata-service/pull/145)) 

