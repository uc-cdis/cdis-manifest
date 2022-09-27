# Core Gen3 Release 2022.10

## uc-cdis/fence

#### Bug Fixes
  - Fix intermittent issue with db cache containing info that can't be loaded 
    into JSON (#1037)

#### Improvements
  - temporarily do not block on security flags until we update to Python 3.9 
    (#1044)
  - Switches to using Github Actions for CI (#1043)
  - Adds Superlint vs. Wool (#1043)
  - Adds Secrets Detection in line for additional coverage (#1043)
  - Adds Poetry Vuln Coverage (#1043)

#### Dependency Updates
  - Update poetry install in travis.yml due to 
    https://python-poetry.org/blog/announcing-poetry-1.2.0a1/#deprecation-of-the-get-poetrypy-script
    (#1037)

## uc-cdis/data-portal

#### Bug Fixes
  - Discovery page: fix "undefined tags" error when an entry does not have tags 
    (#1086)
  - disable interaction with page when reactour is present (#1078)
  - remove displayed cohort ids for custom dichotomous pairs (#1075)
  - download inputs button was missing for submitted jobs that completed (#1074)
  - deleting custom dichotomous covariate doesnt delete all of them anymore 
    (#1070)
  - filter was returning empty array each time (#1070)
  - [PXP-113](https://ctds-planx.atlassian.net/browse/VADC-113) (#1068)
  - [PXP-114](https://ctds-planx.atlassian.net/browse/VADC-114) (#1068)
  - Fixes pagination settings to allow the "size changer" to work again (#1063)

#### New Features
  - Fetch clinicaltrials.gov study metadata during study registration (#1081)
  - reveal submission error (#1073)
  - Allowing a user to continue defining a GWAS without covariates [in addition 
    to outcome] (#1072)
  - note minimum of 1 selected covariate because selected outcome/phenotype is 
    still mandatory (#1072)
  - case control gwas submission without mandatory covariate selection (#1071)
  - add cohort overlap to case control gwas (#1068)
  - [move submitted workflows to separate app 
    ](https://ctds-planx.atlassian.net/browse/VADC-41) (#1068)
  - add text box callout to nct home page right column (#1065)
  - additional react tour (#1066)
  - show info message when user is not logged in with correct credentials 
    (#1062)
  - add header for dichotomous variable step (#1060)
  - latest gwas ui post-refactor (#1054)

#### Improvements
  - debounce expensive endpoint call that updates the HARE dropdown (#1080)

#### Dependency Updates
  - sync w/ master on removing babel-eslint (#1054)

## uc-cdis/sheepdog

#### Bug Fixes
  - Fix issue where arrays of ints gets converted to array of floats (#371)

## uc-cdis/tube

#### New Features
  - Add document for nested feature (#191)

## uc-cdis/metadata-service

#### Bug Fixes
  - Aggregate MDS populate job: do not error if the entry does not contain tags 
    or their format is not as expected (#69)
  - Nested fields are not able to be normalized in elastic search. Adding 
    pydash to set items in nested fields. (#67)
  - Fix agg MDS normalizer to handle dates (#64)

#### New Features
  - MDS 1.8.0 -> 1.8.1 (#68)

#### Dependency Updates
  - adding pydash to poetry (#67)

## uc-cdis/cloud-automation

#### New Features
  - Opencost setup (#2014)

#### Bug Fixes
  - Fixed typo to allow squid healthcheck script to run (#2032)
  - Updated kube-dns-autoscaler to work with new k8 version (#2035)
  - Updated image search criteria to match submodule and fix tests (#2034)
  - Use gen3-qa-controller:fix_gen3qa_get_check quay image which uses get 
    request to fix gen3qa run script (#2023)
  - Fix gen3qa-run script (#1928)

#### Improvements
  - improvements for Apache Superset deployment: update of chart template to 
    0.7.1, pin version of Apache Superset to 2.0.0, pin busybox to 1.35 (#2022)
  - deployments changes for WebAPI: now it'll have an nginx container which 
    will be exposed, instead of WebAPI (and Tomcat) directly; this is needed 
    because WebAPI does not have an option to overwrite schema to https, when 
    it's running behind reverse proxy (ALB or any other), because of this the 
    [`proxy_redirect`](http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_redirect)
    probably the best solution to rewrite `Location` header, effectively 
    changing the schema. (#2021)

#### Dependency Updates
  - Updated postgresql client to psql 13 (#2024)

## uc-cdis/audit-service

#### Improvements
  - Use pip to install poetry in CI (#19)
  - Improve the documentation about authorization (#18)

#### Dependency Updates
  - Update pyjwt to ^2.4.0 (through authutils ^6.2.1), websockets to ^10 
    (through uvicorn ^0.18.3), jinja2 to ^3.0.3 (through gen3config ^1.0.0), 
    gen3authz to ^2.0.0, httpx to ^0.23.0 (#18)

