# Core Gen3 Release 2026.08 (Hematite)
## uc-cdis/audit-service

#### New Features
  - Make `gen3` as the default audience for access token validation ([#110](https://github.com/uc-cdis/audit-service/pull/110)) 

#### Dependency Updates
  - Update authutils to `>=8.0.0` ([#110](https://github.com/uc-cdis/audit-service/pull/110)) 
  - Cryptography => 48.0.1 ([#108](https://github.com/uc-cdis/audit-service/pull/108)) 

## uc-cdis/cloud-automation

#### New Features
  - Updated squid to allow for setting custom config locations ([#2874](https://github.com/uc-cdis/cloud-automation/pull/2874)) 
  - Adding in some domains necessary for Vectis to get threat feed data ([#2876](https://github.com/uc-cdis/cloud-automation/pull/2876)) 

#### Improvements
  - add Zendesk domain to squid whitelist ([#2880](https://github.com/uc-cdis/cloud-automation/pull/2880)) 

## uc-cdis/cohort-middleware

#### New Features
  - new endpoint to return sources with team project information and current 
    access ([#141](https://github.com/uc-cdis/cohort-middleware/pull/141))

## uc-cdis/data-portal

#### Improvements
  - Updates VLMD form text and link ([#1836](https://github.com/uc-cdis/data-portal/pull/1836)) 
  - move loaders to dev dependency ([#1823](https://github.com/uc-cdis/data-portal/pull/1823)) 

#### Dependency Updates
  - remove image size optional dependency (did not see it being used anywhere) 
    ([#1835](https://github.com/uc-cdis/data-portal/pull/1835))
  - update "less": "^4.6.4" in standalone app to align with main app ([#1835](https://github.com/uc-cdis/data-portal/pull/1835)) 
  - update "less-loader": "^7.3.0" in standalone app to align with main app 
    ([#1835](https://github.com/uc-cdis/data-portal/pull/1835))
  - Update uuid dependency -> 11.1.1 ([#1832](https://github.com/uc-cdis/data-portal/pull/1832)) 
  - update `css-loader` to v5 ([#1823](https://github.com/uc-cdis/data-portal/pull/1823)) 
  - update `style-loader` to v2 ([#1823](https://github.com/uc-cdis/data-portal/pull/1823)) 
  - update `less-loader` to v7 ([#1823](https://github.com/uc-cdis/data-portal/pull/1823)) 

#### Bug Fixes
  - Rename `tableConfig.dicomServerUrl` to `tableConfig.dicomServerURL` to 
    match with 
    [portalConfig](https://github.com/uc-cdis/data-portal/blob/ca6938338e22481ae235b854a653cd32f194fd73/docs/portal_config.md#L275C10-L275C24).
    ([#1829](https://github.com/uc-cdis/data-portal/pull/1829))

## uc-cdis/fence

#### New Features
  - Bulk Content Retrieval support in Fence ([#1348](https://github.com/uc-cdis/fence/pull/1348)) 

## uc-cdis/gen3-user-data-library

#### New Features
  - Make `gen3` as the default audience for access token validation ([#84](https://github.com/uc-cdis/gen3-user-data-library/pull/84)) 

#### Dependency Updates
  - Update authutils to `>=8.0.0` ([#84](https://github.com/uc-cdis/gen3-user-data-library/pull/84)) 

## uc-cdis/guppy

#### Dependency Updates
  - Update `addon-actions": "^9.0.0"` and `"uuid": "^11.1.1",` ([#387](https://github.com/uc-cdis/guppy/pull/387)) 
  - Update base image to nodejs24 -- 
    [here](https://github.com/uc-cdis/base-images/blob/master/nodejs24-base/Dockerfile)
    ([#387](https://github.com/uc-cdis/guppy/pull/387))
  - Bumps [form-data](https://github.com/form-data/form-data) from 4.0.5 to 4.0.6. 
    [#389](https://github.com/uc-cdis/guppy/pull/389))
  - Bumps 
    [@babel/core](https://github.com/babel/babel/tree/HEAD/packages/babel-core) 
    from 7.29.0 to 7.29.6. ([#390](https://github.com/uc-cdis/guppy/pull/390))

## uc-cdis/hatchery

#### Bug Fixes
  - fix for long volume names due to Kubernetes limits (63 characters) ([#152](https://github.com/uc-cdis/hatchery/pull/152)) 

#### Improvements
  - prevent workspace from launching if the usage in current paymodel is 
    greater than the hard limit ([#158](https://github.com/uc-cdis/hatchery/pull/158)) 

## uc-cdis/indexd

#### New Features
  - New endpoint: `OPTIONS /objects/{object_id}` - returns a list of 
    Authorizations that can be used to determine how to authorize requests to 
    get object or post object. ([#441](https://github.com/uc-cdis/indexd/pull/441)) 
  - New endpoint: `OPTIONS /objects` - Returns authorization information for 
    multiple DrsObjects at once. ([#441](https://github.com/uc-cdis/indexd/pull/441)) 
  - New endpoint: `POST /objects` - Get info about multiple DrsObjects ([#441](https://github.com/uc-cdis/indexd/pull/441)) 
  - New endpoint: `POST /objects/access (Bulk Access URLs)` - Returns an array 
    of URL objects that can be used to download of multiple DrsObjects. ([#441](https://github.com/uc-cdis/indexd/pull/441)) 
  - Update to DrsObject's `access_methods`: `region`, `cloud`, `available` and 
    `authorization` are added to fields. ([#441](https://github.com/uc-cdis/indexd/pull/441)) 

#### Bug Fixes
  - sort list in unit test ([#448](https://github.com/uc-cdis/indexd/pull/448))

#### Improvements
  - Bump version in indexclient/pyproject.toml to match root level version and 
    the github tags. ([#448](https://github.com/uc-cdis/indexd/pull/448))

#### Dependency Updates
  - click to 8.4.1 ([#447](https://github.com/uc-cdis/indexd/pull/447))
  - cryptography to 49.0.0 ([#447](https://github.com/uc-cdis/indexd/pull/447))
  - gitpython to 3.1.50 ([#447](https://github.com/uc-cdis/indexd/pull/447))
  - mako to 1.3.12 ([#447](https://github.com/uc-cdis/indexd/pull/447))
  - pyjwt to 2.13.0 ([#447](https://github.com/uc-cdis/indexd/pull/447))
  - starlette to 1.3.1 ([#447](https://github.com/uc-cdis/indexd/pull/447))
  - urllib3 to 2.7.0 ([#447](https://github.com/uc-cdis/indexd/pull/447))

#### Deployment Changes
  - CLOUD_PROVIDER_MAP and DRS_AUTHORIZATION_METADATA environment variables 
    should be provided to support the cloud field for access_methods and the 
    authorizations field for access_methods. See docs for more information. 
    ([#441](https://github.com/uc-cdis/indexd/pull/441))

## uc-cdis/manifestservice

#### New Features
  - Make gen3 as the default audience for access token validation ([#89](https://github.com/uc-cdis/manifestservice/pull/89)) 

#### Dependency Updates
  - Bumps [joserfc](https://github.com/authlib/joserfc) from 1.6.5 to 1.6.8. 
    ([#87](https://github.com/uc-cdis/manifestservice/pull/87))
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 48.0.0 to 
    48.0.1. ([#85](https://github.com/uc-cdis/manifestservice/pull/85))
  - Bumps [pyjwt](https://github.com/jpadilla/pyjwt) from 2.12.1 to 2.13.0. 
    ([#83](https://github.com/uc-cdis/manifestservice/pull/83))
  - Update authutils to >=8.0.0 ([#89](https://github.com/uc-cdis/manifestservice/pull/89))

## uc-cdis/metadata-service

#### Dependency Updates
  - Cryptography => 48.0.1 ([#187](https://github.com/uc-cdis/metadata-service/pull/187))
  - Bumps [starlette](https://github.com/Kludex/starlette) from 0.49.3 to 1.3.1. 
    ([#184](https://github.com/uc-cdis/metadata-service/pull/184)) 
  - Bumps [pyjwt](https://github.com/jpadilla/pyjwt) from 2.12.1 to 2.13.0. 
    ([#182](https://github.com/uc-cdis/metadata-service/pull/182))
  - Bumps [idna](https://github.com/kjd/idna) from 3.11 to 3.15. 
    ([#180](https://github.com/uc-cdis/metadata-service/pull/180)) 

## uc-cdis/peregrine

#### New Features
  - Make gen3 as the default audience for access token validation ([#271](https://github.com/uc-cdis/peregrine/pull/271)) 

#### Dependency Updates
  - starlette to 1.3.1 ([#270](https://github.com/uc-cdis/peregrine/pull/270))
  - Update authutils to >=8.0.0 ([#271](https://github.com/uc-cdis/peregrine/pull/271)) 

## uc-cdis/requestor

#### New Features
  - Make `gen3` as the default audience for access token validation ([#87](https://github.com/uc-cdis/requestor/pull/87)) 

#### Dependency Updates
  - Update authutils to `>=8.0.0` ([#87](https://github.com/uc-cdis/requestor/pull/87)) 

## uc-cdis/sheepdog

#### New Features
  - Make `gen3` as the default audience for access token validation ([#474](https://github.com/uc-cdis/sheepdog/pull/474)) 

#### Dependency Updates
  - Update authutils to `>=8.0.0` ([#474](https://github.com/uc-cdis/sheepdog/pull/474)) 
  - Cryptography => 48.0.1 ([#473](https://github.com/uc-cdis/sheepdog/pull/473)) 

## uc-cdis/sower

#### New Features
  - Allows priorityClassName and annotations to be configured for a given sower 
    job ([#66](https://github.com/uc-cdis/sower/pull/66))

## uc-cdis/tube

#### Dependency Updates
  - cryptography to 49.0.0 ([#317](https://github.com/uc-cdis/tube/pull/317))
  - idna to 3.18 ([#317](https://github.com/uc-cdis/tube/pull/317))

## uc-cdis/workspace-token-service

#### New Features
  - Make `gen3` as the default audience for access token validation ([#153](https://github.com/uc-cdis/workspace-token-service/pull/153)) 

#### Dependency Updates
  - Update authutils to `>=8.0.0` ([#153](https://github.com/uc-cdis/workspace-token-service/pull/153)) 
  - Bumps [joserfc](https://github.com/authlib/joserfc) from 1.6.5 to 1.6.8. 
    ([#152](https://github.com/uc-cdis/workspace-token-service/pull/152))
  - Bumps [joserfc](https://github.com/Kludex/starlette) from 1.0.0 to 1.3.1. 
    ([#150](https://github.com/uc-cdis/workspace-token-service/pull/150))
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 48.0.0 to 48.0.1. 
    ([#149](https://github.com/uc-cdis/workspace-token-service/pull/149)) 
  - Bumps [pyjwt](https://github.com/jpadilla/pyjwt) from 2.12.1 to 2.13.0. 
    ([#148](https://github.com/uc-cdis/workspace-token-service/pull/148)) 

