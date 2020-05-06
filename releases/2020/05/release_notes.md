# Core Gen3 Release 202002 (Aurora)

## uc-cdis/fence

#### Bug Fixes
  - Pinning cryptography 2.8 as this bug only seem to manifest itself with 2.9. 
    (#768)
  - when AWS_CREDENTIALS cfg is gone, was trying to use boto when it wasn't 
    setup causing an exception (#766)

#### Dependency Updates
  - pin cryptography 2.8 b/c of known bug with 2.9 (#769)

## uc-cdis/guppy

#### Improvements
  - Guppy will not always return 401 for user who doesn't have a JWT (#80)

#### Dependency Updates
  - Bumps [acorn](https://github.com/acornjs/acorn) from 5.7.3 to 5.7.4. (#82)

## uc-cdis/hatchery

#### Improvements
  - initial support for dockstore docker-compose application specification (#4)
  - The link to hatcheryOverview.md was broken as the path to the file in the 
    docs directory expected the sub directory explain rather than the correct 
    sub directory explanation. Updated link path to resolve to the correct 
    location. (#3)

## uc-cdis/peregrine

#### Improvements
  - Running Peregrine locally with mocked authz no longer requires passing 
    access tokens (#156)

#### Dependency Updates
  - pin cryptography 2.8 b/c of known bug with 2.9 (#157)

## uc-cdis/data-portal

#### Improvements
  - Updated with new Gen3 logo (#665)
  - Adds TECHDEBT.md so we can track tech debt (#657)
  - Add support for multiple Terra template values to be added as query 
    parameters during the Export to Terra flow. (#663)

#### New Features
  - Navigation bar display a tooltip on hover for each button (#669)
  - Add resource browser (#668)
  - Implement ArboristUI for program/project submission (#657)

#### Deployment Changes
  - The Terra template attribute in gitops.json now expects a list of strings, 
    not just a single string. (#663)

#### Bug Fixes
  - Fixed bug in which Export to PFB and Export to Terra buttons were disabled 
    if a cohort of subjects contained 0 associated data files. (#667)
  - Bail out if `npm run` errors in runwebpack.sh (#664)

## uc-cdis/hatchery

#### New Features
  - Support for multi-container apps - see https://github.com/uc-cdis/hatchery/blob/master/testData/testConfig.json#L85

## uc-cdis/tube

#### Bug fixes
  - new injecting etl
  - no backup    

## uc-cdis/sheepdog

#### New Features
  - Switch checks guarding program/project CRUD to centralized auth (instead of 
    checking for "admin" in JWT, check for Sheepdog admin policy in Arborist) 
    (#319)

#### Deployment Changes
  - The environment's user.yaml needs to be updated to add the new Sheepdog 
    admin policy/resources/roles; for each user that has admin: true, grant 
    them the new policy. See https://github.com/uc-cdis/commons-users/pull/810 
    for an example. (#319)

#### Breaking Changes
  - Having admin: true in user.yaml no longer allows a user to do 
    program/project CRUD in Sheepdog. Users now need to have the Sheepdog admin 
    policy in Arborist. (#319)

#### Bug Fixes
  - Fix sheepdog X.0 integer handling (#322)

#### Dependency Updates
  - pin cryptography 2.8 b/c of known bug with 2.9 (#324)

## uc-cdis/ssjdispatcher

#### Breaking Changes
  - No retry on fail jobs (#19)

#### Bug Fixes
  - Using aws go sdk instead of mq-go which is not stable (#20)

## uc-cdis/workspace-token-service

#### New Features
  - WTS can now store refresh tokens for multiple Fence IDPs. Add "idp" 
    parameter to most endpoints to allow specifying which IDP to interact with 
    (#19)
  - Add "/external_oidc" endpoint that lists the configured identity providers 
    (#19)
  - DB migration setup with alembic + first migration to add 
    "refresh_token.idp" column (#19)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#22)

#### Improvements
  - Add initial state migration so that Alembic can be used to create a new WTS 
    DB (#20)
  - Add "Export to workspace" diagram to the documentation (#19)
  - Add unit tests (#19)

#### Dependency Updates
  - pin cryptography 2.8 b/c of known bug with 2.9 (#22)
  - Authlib to 0.11, authutils pinned to 4.0.0 (#19)

## uc-cdis/gen3-fuse

#### Improvements
  - The Gen3Fuse sidecar can now handle mounting to the workspace files from 
    multiple Data Commons (#28)

#### New Features
  - Add optional "wtsIDP" argument to the Gen3Fuse CLI, to be used with 
    "wtsURL" (#28)

## uc-cdis/metadata-service

#### New Features
  - add shallow merge option to metadata update (#5)

#### Bug Fixes
  - fixed wrong document about max limit in metadata query (#5)
  - allow slashes in GUID (#5)

