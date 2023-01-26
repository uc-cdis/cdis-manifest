# Core Gen3 Release 2023.02 (Malachite)

## uc-cdis/fence

#### Improvements
  - ensure secure cookies are set based on configuration ([#1061](https://github.com/uc-cdis/fence/pull/1061)) 

## uc-cdis/cdis-data-client

#### New Features
  - Added a conditional environment variable `GEN3_CLIENT_VERSION_CHECK` to 
    allow bypassing client version checks, this is a workaround for users when 
    experiencing issues with github API rate limits due to multiple sequential 
    calls. ([#110](https://github.com/uc-cdis/cdis-data-client/pull/110))

#### Dependency Updates
  - update gopkg.in/yaml.v2 to 2.4.0 ([#109](https://github.com/uc-cdis/cdis-data-client/pull/109)) 
  - update gopkg.in/yaml.v3 to 3.0.1 ([#109](https://github.com/uc-cdis/cdis-data-client/pull/109)) 

#### Deployment Changes
  - [PPS-169]: 
    https://ctds-planx.atlassian.net/browse/PPS-169?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#109](https://github.com/uc-cdis/cdis-data-client/pull/109))

## uc-cdis/gen-statics

#### Improvements
  - Add CSP directives in response (#27)
  - Removing Veracode scanning pipeline (#14)
  - Removing Veracode scanning pipeline (#13)
  - Use Quay image for node 12 to fix "too many requests" from DockerHub (#10)
  - Update dependencies to support IAM-linked service accounts. (#5)
  - update dependencies to fix vulnerabilities (#4)
  - cache-control max-age 300, so client does not cache Secure/ data for more 
    than 5 minutes (#4)

#### Dependency Updates
  - Adpoted `helmet` (#27)
  - Adpoted `cors` (#27)

#### Deployment Changes
  - This change will add some CSP and CORS related header to the response that 
    returned from the dashboard services. They should not be interruptive, but 
    each team is encouraged to double check their webpages hosted by dashboard 
    to ensure they still works (#27)
  - Because of these CSP directives being added, starting from this version, if 
    anyone what to load remote scripts in their dashboard-hosted webpages, they 
    will need to update the CSP directives in this dashboard service if the 
    current directives doesn't fit, or to ship the script files with the page 
    (#27)

#### New Features
  - Added .secinclude to include all relevant files needed for veracode scan. 
    (#3)
  - Added .secexclude to explicitly remove any unneeded files. (#3)
  - Added Jenkinsfile.security for the veracode security organization in 
    Jenkins to scan this repo regularly. (#3)

## uc-cdis/guppy

#### Dependency Updates
  - update `trim-newlines` to 3.0.1 ([#165](https://github.com/uc-cdis/guppy/pull/165)) 
  - update `gen3-ui-component` to 0.11.2 ([#165](https://github.com/uc-cdis/guppy/pull/165)) 
  - update `isomorphic-fetch` to 3.0.0 ([#165](https://github.com/uc-cdis/guppy/pull/165)) 
  - [PPS-173]: 
    https://ctds-planx.atlassian.net/browse/PPS-173?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#165](https://github.com/uc-cdis/guppy/pull/165))
  - Bumps [moment](https://github.com/moment/moment) from 2.29.1 to 2.29.2. 
    (#137)

#### Bug Fixes
  - fixing "range" query in Guppy to properly account for a correct 
    Elasticsearch syntax: 
    https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-range-query.html
    ([#156](https://github.com/uc-cdis/guppy/pull/156))

## uc-cdis/hatchery

#### Bug Fixes
  - Set enableServiceLinks to false in workspace pods. ([#54](https://github.com/uc-cdis/hatchery/pull/54)) 
  - [GPE-735]: 
    https://ctds-planx.atlassian.net/browse/GPE-735?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#54](https://github.com/uc-cdis/hatchery/pull/54))

## uc-cdis/data-portal

#### Improvements
  - block access to some files ([#1199](https://github.com/uc-cdis/data-portal/pull/1199)) 
  - [PPS-143]: 
    https://ctds-planx.atlassian.net/browse/PPS-143?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1199](https://github.com/uc-cdis/data-portal/pull/1199))
  - updatedprops passed to some antd components since some of them will be 
    deprecated ([#1196](https://github.com/uc-cdis/data-portal/pull/1196))
  - Access Request (Study/Workspace): now can prevent user from creating extra 
    tickets if they already have a same request pending ([#1189](https://github.com/uc-cdis/data-portal/pull/1189)) 
  - Access Request (Study/Workspace): Improved message display ([#1189](https://github.com/uc-cdis/data-portal/pull/1189)) 
  - Discovery: filter AND/OR logic toggle button will not be disabled ([#1187](https://github.com/uc-cdis/data-portal/pull/1187)) 
  - Hiding DICOM Viewer button for the imaging studies that doesn't have one 
    ([#1174](https://github.com/uc-cdis/data-portal/pull/1174))
  - Discovery: add `advSearchFilters.displayName` config to customize Filter 
    button title ([#1160](https://github.com/uc-cdis/data-portal/pull/1160))
  - Discovery: enlarged search bar size ([#1160](https://github.com/uc-cdis/data-portal/pull/1160)) 
  - Discovery: add `Reset` button to filter component ([#1160](https://github.com/uc-cdis/data-portal/pull/1160)) 
  - Discovery: add `AND/OR` toggle to filter component, defaults to `AND` 
    ([#1160](https://github.com/uc-cdis/data-portal/pull/1160))
  - Discovery: Filter component won't shrink smaller than its size ([#1160](https://github.com/uc-cdis/data-portal/pull/1160)) 
  - Study Registration: update "Data Repository" tag in metadata during 
    registration ([#1160](https://github.com/uc-cdis/data-portal/pull/1160))
  - Move linter configs so they can be shared by npm commands and super-linter 
    GH action ([#1175](https://github.com/uc-cdis/data-portal/pull/1175))
  - Misc: security updates ([#1162](https://github.com/uc-cdis/data-portal/pull/1162)) 

#### Dependency Updates
  - update `trim-newlines` to 3.0.1 ([#1196](https://github.com/uc-cdis/data-portal/pull/1196)) 
  - update `gen3-ui-component` to 0.11.2 ([#1196](https://github.com/uc-cdis/data-portal/pull/1196)) 
  - update `guppy` to 0.15.4 ([#1196](https://github.com/uc-cdis/data-portal/pull/1196)) 
  - update `isomorphic-fetch` to 3.0.0 ([#1196](https://github.com/uc-cdis/data-portal/pull/1196)) 
  - [PPS-173]: 
    https://ctds-planx.atlassian.net/browse/PPS-173?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1196](https://github.com/uc-cdis/data-portal/pull/1196))

#### New Features
  - This is the sprint branch for sprint 25 and includes new functionality, 
    features and revisions including: ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Add Scrolling functionality to Attrition Table ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - FE for View 4.1 - Modal ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Cleanup - change inline styles to CSS referenced via class names ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Cleanup - Configure GWAS ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - FE for View 4.2 - Congratulations ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Change Text in Progress Bar to always say "Select" and not "Edit" for each 
    step ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - Cleanup - Move isEnterOrSpace to Shared Folder. Rename Shared Folder to 
    Utils ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - Add Selected Hare Functionality to Configure GWAS ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Cherry Pick FE Code and Deploy to QA ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - Integrate histogram into GWAS++ flow ([#1179](https://github.com/uc-cdis/data-portal/pull/1179)) 
  - [VADC-240]: 
    https://ctds-planx.atlassian.net/browse/VADC-240?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-244]: 
    https://ctds-planx.atlassian.net/browse/VADC-244?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-369]: 
    https://ctds-planx.atlassian.net/browse/VADC-369?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-375]: 
    https://ctds-planx.atlassian.net/browse/VADC-375?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-245]: 
    https://ctds-planx.atlassian.net/browse/VADC-245?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-379]: 
    https://ctds-planx.atlassian.net/browse/VADC-379?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-370]: 
    https://ctds-planx.atlassian.net/browse/VADC-370?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-324]: 
    https://ctds-planx.atlassian.net/browse/VADC-324?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - [VADC-368]: 
    https://ctds-planx.atlassian.net/browse/VADC-368?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1179](https://github.com/uc-cdis/data-portal/pull/1179))
  - This is VADC Sprint Branch for Sprint 24. ([#1158](https://github.com/uc-cdis/data-portal/pull/1158)) 
  - 331: Combine GWAS Workflows: Style View 2.0 ([#1158](https://github.com/uc-cdis/data-portal/pull/1158)) 
  - 341: Combine GWAS Workflows: File Organization for components and methods 
    for Sprint 24 ([#1158](https://github.com/uc-cdis/data-portal/pull/1158))
  - 329: Combine GWAS Workflows: Move logic from Children Components to Wrapper 
    Components ([#1158](https://github.com/uc-cdis/data-portal/pull/1158))
  - 307: Integrate Euler diagram into GWAS App ([#1158](https://github.com/uc-cdis/data-portal/pull/1158)) 
  - 361: Try out auto-complete dropdowns instead of searchable tables for 
    Custom Dichotomous view ([#1158](https://github.com/uc-cdis/data-portal/pull/1158)) 

#### Bug Fixes
  - Discovery: disable filter button if studies are still loading ([#1187](https://github.com/uc-cdis/data-portal/pull/1187)) 
  - Fixed an Aggregate authz related bug where a `null` response from a key in 
    `wts/aggregate/authz/mapping` is gracefully handled by Data-Portal ([#1186](https://github.com/uc-cdis/data-portal/pull/1186)) 
  - Workspace: do callback within debounce time ([#1183](https://github.com/uc-cdis/data-portal/pull/1183)) 

## uc-cdis/sheepdog

#### # Changes Included In This Pr
  - Changes to the following files to upgrade the vulnerable dependencies to a 
    fixed version: ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - requirements.txt ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - <details> ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - <summary>⚠️ <b>Warning</b></summary> ([#376](https://github.com/uc-cdis/sheepdog/pull/376)) 
  - ``` ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - pyOpenSSL 22.1.0 has requirement cryptography<39,>=38.0.0, but you have 
    cryptography 2.8. ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - psqlgraph 3.0.1 requires xlocal, which is not installed. ([#376](https://github.com/uc-cdis/sheepdog/pull/376)) 
  - psqlgraph 3.0.1 has requirement avro~=1.7, but you have avro 
    file-.avro-VERSION.txt. ([#376](https://github.com/uc-cdis/sheepdog/pull/376)) 
  - Jinja2 3.1.2 requires MarkupSafe, which is not installed. ([#376](https://github.com/uc-cdis/sheepdog/pull/376)) 
  - graphql-relay 0.5.0 has requirement graphql-core<2,>=0.5.0, but you have 
    graphql-core 2.3.2. ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - ``` ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - </details> ([#376](https://github.com/uc-cdis/sheepdog/pull/376))

#### ## By Pinning:
  - Severity | Priority Score (*) | Issue | Upgrade | Breaking Change | Exploit 
    Maturity ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - :-------------------------:|-------------------------|:-------------------------|:-------------------------|:-------------------------|:-------------------------
    ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - ![critical 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/c.png
    "critical severity") | **704/1000** <br/> **Why?** Has a fix available, 
    CVSS 9.8 | Arbitrary Code Execution 
    <br/>[SNYK-PYTHON-BOTO-2849305](https://snyk.io/vuln/SNYK-PYTHON-BOTO-2849305)
    | `boto:` <br> `2.36.0 -> 2.39.0` <br> | No | No Known Exploit ([#376](https://github.com/uc-cdis/sheepdog/pull/376)) 
  - (*) Note that the real score may have changed since the PR was raised. 
    ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - Some vulnerabilities couldn't be fully fixed and so Snyk will still find 
    them when the project is tested again. This may be because the 
    vulnerability existed within more than one direct dependency, but not all 
    of the affected dependencies could be upgraded. ([#376](https://github.com/uc-cdis/sheepdog/pull/376)) 
  - Check the changes in this PR to ensure they won't cause issues with your 
    project. ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - Note:** *You are seeing this because you or someone else with access to 
    this repository has authorized Snyk to open fix PRs.* ([#376](https://github.com/uc-cdis/sheepdog/pull/376)) 
  - For more information: <img 
    src="https://api.segment.io/v1/pixel/track?data=eyJ3cml0ZUtleSI6InJyWmxZcEdHY2RyTHZsb0lYd0dUcVg4WkFRTnNCOUEwIiwiYW5vbnltb3VzSWQiOiIwNmIzZTJmZC0wNTI4LTQ3ZDgtOWRhOS1kOGU0MTI0YjI5ZmUiLCJldmVudCI6IlBSIHZpZXdlZCIsInByb3BlcnRpZXMiOnsicHJJZCI6IjA2YjNlMmZkLTA1MjgtNDdkOC05ZGE5LWQ4ZTQxMjRiMjlmZSJ9fQ=="
    width="0" height="0"/> ([#376](https://github.com/uc-cdis/sheepdog/pull/376)) 
  - 🧐 [View latest project 
    report](https://app.snyk.io/org/plan-x/project/342fbc5f-5fbe-41ac-acc9-3b2b1fce5730?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr)
    ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - 🛠 [Adjust project 
    settings](https://app.snyk.io/org/plan-x/project/342fbc5f-5fbe-41ac-acc9-3b2b1fce5730?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr/settings)
    ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - 📚 [Read more about Snyk's upgrade and patch 
    logic](https://support.snyk.io/hc/en-us/articles/360003891078-Snyk-patches-to-fix-vulnerabilities)
    ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - [//]: # 
    (snyk:metadata:{"prId":"06b3e2fd-0528-47d8-9da9-d8e4124b29fe","prPublicId":"06b3e2fd-0528-47d8-9da9-d8e4124b29fe","dependencies":[{"name":"boto","from":"2.36.0","to":"2.39.0"}],"packageManager":"pip","projectPublicId":"342fbc5f-5fbe-41ac-acc9-3b2b1fce5730","projectUrl":"https://app.snyk.io/org/plan-x/project/342fbc5f-5fbe-41ac-acc9-3b2b1fce5730?utm_source=github&utm_medium=referral&page=fix-pr","type":"user-initiated","patch":[],"vulns":["SNYK-PYTHON-BOTO-2849305"],"upgrade":[],"isBreakingChange":false,"env":"prod","prType":"fix","templateVariants":["updated-fix-title","pr-warning-shown","priorityScore"],"priorityScoreList":[704]})
    ([#376](https://github.com/uc-cdis/sheepdog/pull/376))
  - Learn how to fix vulnerabilities with free interactive lessons:** ([#376](https://github.com/uc-cdis/sheepdog/pull/376)) 
  - 🦉 [Arbitrary Code 
    Execution](https://learn.snyk.io/lessons/malicious-code-injection/python/?loc&#x3D;fix-pr)
    ([#376](https://github.com/uc-cdis/sheepdog/pull/376))

#### Dependency Updates
  - `boto` to 2.39.0 ([#376](https://github.com/uc-cdis/sheepdog/pull/376))

## uc-cdis/sower

#### Dependency Updates
  - update gopkg.in/yaml.v2 to 2.4.0 ([#36](https://github.com/uc-cdis/sower/pull/36)) 
  - update gopkg.in/yaml.v3 to 3.0.1 ([#36](https://github.com/uc-cdis/sower/pull/36)) 

#### Deployment Changes
  - [PPS-169]: 
    https://ctds-planx.atlassian.net/browse/PPS-169?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#36](https://github.com/uc-cdis/sower/pull/36))

## uc-cdis/sower-jobs

#### New Features
  - Add a new sower-job which can delete all the expired objects from 
    `Indexd/fence` and `Metadata Service` ([#39](https://github.com/uc-cdis/sower-jobs/pull/39)) 

## uc-cdis/ssjdispatcher

#### New Features
  - moving to GitHub Actions for building Docker image ([#47](https://github.com/uc-cdis/ssjdispatcher/pull/47)) 

#### Dependency Updates
  - update gopkg.in/yaml.v2 to 2.4.0 ([#46](https://github.com/uc-cdis/ssjdispatcher/pull/46)) 
  - update gopkg.in/yaml.v3 to 3.0.1 ([#46](https://github.com/uc-cdis/ssjdispatcher/pull/46)) 

#### Deployment Changes
  - [PPS-169]: 
    https://ctds-planx.atlassian.net/browse/PPS-169?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#46](https://github.com/uc-cdis/ssjdispatcher/pull/46))

## uc-cdis/tube

#### Bug Fixes
  - Fix query failure with auth_resource_path ([#216](https://github.com/uc-cdis/tube/pull/216)) 

#### Improvements
  - Move `test_config_helper.py` so it runs with other standalone tests ([#216](https://github.com/uc-cdis/tube/pull/216)) 

## uc-cdis/metadata-service

#### New Features
  - Introduced 3 new Data Adapters for GDC, PDC and CIDC ([#85](https://github.com/uc-cdis/metadata-service/pull/85)) 

#### Improvements
  - Eliminated a few warnings related invalid operator `|` between `'dict' | 
    'dict'` --> `'dict' or 'dict'` ([#85](https://github.com/uc-cdis/metadata-service/pull/85)) 
  - [BRH-326]: 
    https://ctds-planx.atlassian.net/browse/BRH-326?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#85](https://github.com/uc-cdis/metadata-service/pull/85))

## uc-cdis/cloud-automation

#### New Features
  - Set FIPs through cloud-init ([#2134](https://github.com/uc-cdis/cloud-automation/pull/2134)) 
  - Add the `metadata-delete-expired-objects` job, which removes expired 
    objects from `indexd`, `fence` and `Metadata Service`. Set it up by running 
    the `gen3 kube-setup-metadata-delete-expired-objects-cronjob` command 
    ([#1941](https://github.com/uc-cdis/cloud-automation/pull/1941))
  - Updated health check script to clear Evicted pods ([#2125](https://github.com/uc-cdis/cloud-automation/pull/2125)) 
  - Enable waf through flag in the manifest ([#1973](https://github.com/uc-cdis/cloud-automation/pull/1973)) 

#### Bug Fixes
  - Updated values yaml image locations to match chart changes. ([#2123](https://github.com/uc-cdis/cloud-automation/pull/2123)) 
  - https://github.com/prometheus-community/helm-charts/commit/f528fe820fa0f8d4eabada1b158854487e0563d8
    ([#2123](https://github.com/uc-cdis/cloud-automation/pull/2123))

#### Improvements
  - improving resource management for OHDSI Atlas and WebAPI ([#2119](https://github.com/uc-cdis/cloud-automation/pull/2119)) 
  - decreasing requests for nginx containers ([#2119](https://github.com/uc-cdis/cloud-automation/pull/2119)) 
  - increasing limits for WebAPI container ([#2119](https://github.com/uc-cdis/cloud-automation/pull/2119)) 
  - Daily 24h report jobs ([#2086](https://github.com/uc-cdis/cloud-automation/pull/2086)) 
  - Update filter metadata compoment in HEAL CEDAR ingestion script ([#2093](https://github.com/uc-cdis/cloud-automation/pull/2093)) 
  - update revproxy nginx config to increase max request body size 
    (manifestservice has no limit and we're running into issues with it being 
    at 1m default) ([#2052](https://github.com/uc-cdis/cloud-automation/pull/2052)) 
  - Simplify and fix bugs in kube-setup-workvm ([#2103](https://github.com/uc-cdis/cloud-automation/pull/2103)) 
  - Add more logging, and make commands less verbose for easier troubleshooting 
    ([#2103](https://github.com/uc-cdis/cloud-automation/pull/2103))

#### Dependency Updates
  - Update metrics-server to version 0.6.2 ([#2129](https://github.com/uc-cdis/cloud-automation/pull/2129)) 
  - Upgrade node.js on adminvms to v16 ([#2103](https://github.com/uc-cdis/cloud-automation/pull/2103)) 

#### Deployment Changes
  - To set up the `metadata-delete-expired-objects` job, run the `gen3 
    kube-setup-metadata-delete-expired-objects-cronjob` command. Note that the 
    `metadata-delete-expired-objects-job` client must be granted access to 
    `(resource=/mds_gateway, method=access, service=mds_gateway)` and 
    `(resource=/programs, method=delete, service=fence)` ([#1941](https://github.com/uc-cdis/cloud-automation/pull/1941)) 
  - [PXP-9516]: 
    https://ctds-planx.atlassian.net/browse/PXP-9516?atlOrigin=eyJpIjoiNWRkNTljNzYxNjVmNDY3MDlhMDU5Y2ZhYzA5YTRkZjUiLCJwIjoiZ2l0aHViLWNvbS1KU1cifQ
    ([#1941](https://github.com/uc-cdis/cloud-automation/pull/1941))

