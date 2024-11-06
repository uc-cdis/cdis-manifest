# Core Gen3 Release 2024.11 (Celestite)

## Release Highlights and Announcements
#### Improved user experience on Discovery page
  - The page-loading experience for the Discovery page has been [improved](#new-features) in Data Portal.

## uc-cdis/cloud-automation

#### Bug Fixes
  - gen3_s3_info check for existing bucket ([#2637](https://github.com/uc-cdis/cloud-automation/pull/2637)) 

#### Improvements
  - Remove DD RUM related values from deployment ([#2632](https://github.com/uc-cdis/cloud-automation/pull/2632)) 

## uc-cdis/data-portal

#### New Features
  - Provides an enhanced page loading experience for Discovery page using batch 
    loading ([#1599](https://github.com/uc-cdis/data-portal/pull/1599))
  - Change repo selection option 'ICSPR/NAHDAP' to 'NAHDAP' ([#1571](https://github.com/uc-cdis/data-portal/pull/1571))
  - Study Registration: Add a new page for "HEAL CDE submission" ([#1547](https://github.com/uc-cdis/data-portal/pull/1547)) 
  - Lock the CDE submission form for certain studies ([#1547](https://github.com/uc-cdis/data-portal/pull/1547)) 

#### Bug Fixes
  - Prevents a user from submitting duplicate covariates for both continuous 
    and dichotomous outcome types in the VADC Gen3 GWAS app ([#1597](https://github.com/uc-cdis/data-portal/pull/1597)) 

#### Improvements
  - Add `mixed availability` as one of the data availability status options for 
    discovery page ([#1604](https://github.com/uc-cdis/data-portal/pull/1604))
  - Adds unit tests for MDSUtils and aggMDSUtils ([#1599](https://github.com/uc-cdis/data-portal/pull/1599)) 
  - Fixes spelling mistakes in code base (continuous vs continous) ([#1597](https://github.com/uc-cdis/data-portal/pull/1597)) 
  - Globalizes data viz components (histogram and Simple3Sets ) for use between 
    VADC apps ([#1597](https://github.com/uc-cdis/data-portal/pull/1597))
  - In the case where the histogram bin data is missing (undefined) for the 
    histogram, application now shows an error message. Before it would only 
    show the error message when the value was null, and not when it is 
    undefined (i.e. it doesn't exist at all in the sent data). ([#1597](https://github.com/uc-cdis/data-portal/pull/1597)) 
  - Migrate customized DD RUM actions into Grafana Faro events ([#1595](https://github.com/uc-cdis/data-portal/pull/1595)) 

#### Dependency Updates
  - update guppy to 0.19.1 ([#1601](https://github.com/uc-cdis/data-portal/pull/1601)) 

#### Deployment Changes
  - The VLMD syntax in HEAL MDS has been updated ([#1547](https://github.com/uc-cdis/data-portal/pull/1547)) 

## uc-cdis/guppy

#### New Features
  - add nvm file to enable command `nvm use` to set proper node version ([#285](https://github.com/uc-cdis/guppy/pull/285)) 

#### Dependency Updates
  - update body-parser to 1.20.3 ([#285](https://github.com/uc-cdis/guppy/pull/285)) 
  - rebuild package lock file to use newer dependencies ([#285](https://github.com/uc-cdis/guppy/pull/285)) 

## uc-cdis/indexd

#### Bug Fixes
  - Fix resource authorize checks for delete and alias endpoints in single 
    table alchemy ([#383](https://github.com/uc-cdis/indexd/pull/383))

## uc-cdis/manifestservice

#### Dependency Updates
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 42.0.5 to 
    43.0.1. (#56)
  - Changing `requests` to `2.32.2` ([#58](https://github.com/uc-cdis/manifestservice/pull/58)) 

## uc-cdis/metadata-service

#### Dependency Updates
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 42.0.8 to 
    43.0.1. (#114)

## uc-cdis/sheepdog

#### Dependency Updates
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 42.0.7 to 
    43.0.1. (#419)

## uc-cdis/ssjdispatcher

#### Improvements
  - remove travis CI since we already have GH workflow in place 
    https://github.com/uc-cdis/ssjdispatcher/blob/master/.github/workflows/golang-ci-workflow.yaml
    ([#60](https://github.com/uc-cdis/ssjdispatcher/pull/60))

## uc-cdis/tube

#### Dependency Updates
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 42.0.7 to 
    43.0.1. (#284)

## uc-cdis/workspace-token-service

#### Bug Fixes
  - Properly close DB sessions ([#89](https://github.com/uc-cdis/workspace-token-service/pull/89)) 

#### Improvements
  - add User-Agent header to fetch_token and revoke_token ([#92](https://github.com/uc-cdis/workspace-token-service/pull/92)) 

#### Dependency Updates
  - Bumps [cryptography](https://github.com/pyca/cryptography) from 42.0.8 to 
    43.0.1. (#88)

