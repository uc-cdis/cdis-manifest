# Core Gen3 Release 2024.11 (Celestite)
## uc-cdis/cloud-automation

#### Bug Fixes
  - gen3_s3_info check for existing bucket ([#2637](https://github.com/uc-cdis/cloud-automation/pull/2637)) 

#### Improvements
  - Remove DD RUM related values from deployment ([#2632](https://github.com/uc-cdis/cloud-automation/pull/2632)) 

## uc-cdis/data-portal

#### New Features
  - Change repo selection option 'ICSPR/NAHDAP' to 'NAHDAP' ([#1571](https://github.com/uc-cdis/data-portal/pull/1571)) 
  - Provides an enhanced page loading experience for Discovery page using batch 
    loading ([#1599](https://github.com/uc-cdis/data-portal/pull/1599))
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

#### Snyk Has Created This Pr To Fix 1 Vulnerabilities In The Npm Dependencies Of This Project.
  - #### Snyk changed the following file(s): ([#280](https://github.com/uc-cdis/guppy/pull/280)) 
  - `package.json` ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - `package-lock.json` ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - #### Vulnerabilities that will be fixed with an upgrade: ([#280](https://github.com/uc-cdis/guppy/pull/280)) 
  - |  | Issue | Score | ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - :-------------------------:|:-------------------------|:-------------------------
    ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - ![low 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/l.png
    'low severity') | Cross-site Scripting 
    <br/>[SNYK-JS-SEND-7926862](https://snyk.io/vuln/SNYK-JS-SEND-7926862) | 
    &nbsp;&nbsp;**391**&nbsp;&nbsp; ([#280](https://github.com/uc-cdis/guppy/pull/280)) 
  - > [!IMPORTANT] ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - > ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - > - Check the changes in this PR to ensure they won't cause issues with 
    your project. ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - > - Max score is 1000. Note that the real score may have changed since the 
    PR was raised. ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - > - This PR was automatically created by Snyk using the credentials of a 
    real user. ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - Note:** _You are seeing this because you or someone else with access to 
    this repository has authorized Snyk to open fix PRs._ ([#280](https://github.com/uc-cdis/guppy/pull/280)) 
  - For more information: <img 
    src="https://api.segment.io/v1/pixel/track?data=eyJ3cml0ZUtleSI6InJyWmxZcEdHY2RyTHZsb0lYd0dUcVg4WkFRTnNCOUEwIiwiYW5vbnltb3VzSWQiOiI1ZTM4ODdkNS05MWFhLTQxMzItYWIzYi01ODEzNDFkODQ0NjciLCJldmVudCI6IlBSIHZpZXdlZCIsInByb3BlcnRpZXMiOnsicHJJZCI6IjVlMzg4N2Q1LTkxYWEtNDEzMi1hYjNiLTU4MTM0MWQ4NDQ2NyJ9fQ=="
    width="0" height="0"/> ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - 🧐 [View latest project 
    report](https://app.snyk.io/org/binamb-81n/project/0f7f7e80-9104-42d5-a3b7-6da0f05b9f5c?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr)
    ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - 📜 [Customise PR 
    templates](https://docs.snyk.io/scan-using-snyk/pull-requests/snyk-fix-pull-or-merge-requests/customize-pr-templates)
    ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - 🛠 [Adjust project 
    settings](https://app.snyk.io/org/binamb-81n/project/0f7f7e80-9104-42d5-a3b7-6da0f05b9f5c?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr/settings)
    ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - 📚 [Read about Snyk's upgrade 
    logic](https://support.snyk.io/hc/en-us/articles/360003891078-Snyk-patches-to-fix-vulnerabilities)
    ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - Learn how to fix vulnerabilities with free interactive lessons:** ([#280](https://github.com/uc-cdis/guppy/pull/280)) 
  - 🦉 [Cross-site 
    Scripting](https://learn.snyk.io/lesson/dom-based-xss/?loc&#x3D;fix-pr) 
    ([#280](https://github.com/uc-cdis/guppy/pull/280))
  - [//]: # 
    'snyk:metadata:{"customTemplate":{"variablesUsed":[],"fieldsUsed":[]},"dependencies":[{"name":"express","from":"4.19.2","to":"4.21.0"}],"env":"prod","issuesToFix":[{"exploit_maturity":"No
    Known 
    Exploit","id":"SNYK-JS-SEND-7926862","priority_score":391,"priority_score_factors":[{"type":"freshness","label":true,"score":71},{"type":"fixability","label":true,"score":214},{"type":"cvssScore","label":"2.1","score":105},{"type":"scoreVersion","label":"v1","score":1}],"severity":"low","title":"Cross-site
    Scripting"}],"prId":"5e3887d5-91aa-4132-ab3b-581341d84467","prPublicId":"5e3887d5-91aa-4132-ab3b-581341d84467","packageManager":"npm","priorityScoreList":[391],"projectPublicId":"0f7f7e80-9104-42d5-a3b7-6da0f05b9f5c","projectUrl":"https://app.snyk.io/org/binamb-81n/project/0f7f7e80-9104-42d5-a3b7-6da0f05b9f5c?utm_source=github&utm_medium=referral&page=fix-pr","prType":"fix","templateFieldSources":{"branchName":"default","commitMessage":"default","description":"default","title":"default"},"templateVariants":["updated-fix-title","priorityScore"],"type":"auto","upgrade":["SNYK-JS-SEND-7926862"],"vulns":["SNYK-JS-SEND-7926862"],"patch":[],"isBreakingChange":false,"remediationStrategy":"vuln"}'
    ([#280](https://github.com/uc-cdis/guppy/pull/280))

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

