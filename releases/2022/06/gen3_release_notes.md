# Core Gen3 Release 2022.06

## uc-cdis/fence

#### Improvements
  - InCommon: do not configure duplicate Shibboleth IDPs (#1024)
  - Fix generic OIDC: `get_user_id` returns the correct user ID field (#1021)

## uc-cdis/cdis-data-client

#### New Features
  - add GitHub Action for Golang CI (#108)

## uc-cdis/guppy

#### New Features
  - add total terms count to parent termsFields (#134)

## uc-cdis/hatchery

#### Improvements
  - using the new github action instead of the reusable workflow (#48)

#### New Features
  - Reusable workflow for Go tests with coverage (#46)

## uc-cdis/indexd

#### New Features
  - Adding listen queue to uwsgi config. We were seeing issues with large 
    instances of indexd (100M) on a large amount of `GET` requests we had a 
    1.5% failure rate. Adding a listen queue solved this. (#332)

## uc-cdis/pelican

#### Bug Fixes
  - don't attempt to query if id_chunks is False-y for whatever reason (as this 
    causes an exception) (#64)

## uc-cdis/data-portal

#### New Features
  - Make portal works with customized `BASENAME`, in both production mode and 
    dev mode (#990)
  - tabbed metadata detail display (#983)

#### Improvements
  - webpackdev-server works now with proper websocket connections, and fixed 
    page hot-reload (#990)

#### Deployment Changes
  - See gitops configuration options for tabbed metadata detail vs traditional 
    (#983)

#### Bug Fixes
  - Discovery: fixed a bug so now array content will show up in discovery table 
    with proper concatenation (#988)

## uc-cdis/sheepdog

#### # Changes Included In This Pr
  - Changes to the following files to upgrade the vulnerable dependencies to a 
    fixed version: (#368)
  - requirements.txt (#368)
  - <details> (#368)
  - <summary>⚠️ <b>Warning</b></summary> (#368)
  - ``` (#368)
  - pyOpenSSL 22.0.0 has requirement cryptography>=35.0, but you have 
    cryptography 2.8. (#368)
  - psqlgraph 3.0.1 requires xlocal, which is not installed. (#368)
  - psqlgraph 3.0.1 has requirement avro~=1.7, but you have avro 
    file-.avro-VERSION.txt. (#368)
  - Jinja2 3.1.1 requires MarkupSafe, which is not installed. (#368)
  - graphql-relay 0.5.0 has requirement graphql-core<2,>=0.5.0, but you have 
    graphql-core 2.3.2. (#368)
  - ``` (#368)
  - </details> (#368)

#### ## By Pinning:
  - Severity | Priority Score (*) | Issue | Upgrade | Breaking Change | Exploit 
    Maturity (#368)
  - :-------------------------:|-------------------------|:-------------------------|:-------------------------|:-------------------------|:
    (#368)
  - ![high 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/h.png
    "high severity") | **624/1000** <br/> **Why?** Has a fix available, CVSS 
    8.2 | Cross-site Scripting (XSS) 
    <br/>[SNYK-PYTHON-LXML-2316995](https://snyk.io/vuln/SNYK-PYTHON-LXML-2316995)
    | `lxml:` <br> `4.6.3 -> 4.6.5` <br> | No | No Known Exploit (#368)
  - (*) Note that the real score may have changed since the PR was raised. 
    (#368)
  - Some vulnerabilities couldn't be fully fixed and so Snyk will still find 
    them when the project is tested again. This may be because the 
    vulnerability existed within more than one direct dependency, but not all 
    of the effected dependencies could be upgraded. (#368)
  - Check the changes in this PR to ensure they won't cause issues with your 
    project. (#368)
  - Note:** *You are seeing this because you or someone else with access to 
    this repository has authorized Snyk to open fix PRs. (#368)
  - For more information: <img 
    src="https://api.segment.io/v1/pixel/track?data=eyJ3cml0ZUtleSI6InJyWmxZcEdHY2RyTHZsb0lYd0dUcVg4WkFRTnNCOUEwIiwiYW5vbnltb3VzSWQiOiI4ZWQ0MzU0Zi1iMTVkLTRkOWItOTlmMy0yOTY1YjM0MGQxNjIiLCJldmVudCI6IlBSIHZpZXdlZCIsInByb3BlcnRpZXMiOnsicHJJZCI6IjhlZDQzNTRmLWIxNWQtNGQ5Yi05OWYzLTI5NjViMzQwZDE2MiJ9fQ=="
    width="0" height="0"/> (#368)
  - 🧐 [View latest project 
    report](https://app.snyk.io/org/plan-x/project/342fbc5f-5fbe-41ac-acc9-3b2b1fce5730?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr)
    (#368)
  - 🛠 [Adjust project 
    settings](https://app.snyk.io/org/plan-x/project/342fbc5f-5fbe-41ac-acc9-3b2b1fce5730?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr/settings)
    (#368)
  - 📚 [Read more about Snyk's upgrade and patch 
    logic](https://support.snyk.io/hc/en-us/articles/360003891078-Snyk-patches-to-fix-vulnerabilities)
    (#368)
  - [//]: # 
    (snyk:metadata:{"prId":"8ed4354f-b15d-4d9b-99f3-2965b340d162","prPublicId":"8ed4354f-b15d-4d9b-99f3-2965b340d162","dependencies":[{"name":"lxml","from":"4.6.3","to":"4.6.5"}],"packageManager":"pip","projectPublicId":"342fbc5f-5fbe-41ac-acc9-3b2b1fce5730","projectUrl":"https://app.snyk.io/org/plan-x/project/342fbc5f-5fbe-41ac-acc9-3b2b1fce5730?utm_source=github&utm_medium=referral&page=fix-pr","type":"user-initiated","patch":[],"vulns":["SNYK-PYTHON-LXML-2316995"],"upgrade":[],"isBreakingChange":false,"env":"prod","prType":"fix","templateVariants":["updated-fix-title","pr-warning-shown","priorityScore"],"priorityScoreList":[624]})
    (#368)
  - Learn how to fix vulnerabilities with free interactive lessons: (#368)
  - 🦉 [Cross-site Scripting 
    (XSS)](https://learn.snyk.io/lessons/xss/python?loc&#x3D;fix-pr) (#368)

## uc-cdis/tube

#### Bug Fixes
  - Treat boolean as string (#179)
  - Docker build is failing. This PR change dockerfile to official base image 
    and correct the build (#178)
  - Currently, in some etlMapping file, there is an explicit declaration of 
    field like `source_node` which should not be since this field is only an 
    additional field add into file etl to annotate the node where the file 
    from. (#176)
  - We put a check and log with WARN in code to skip this field when there are 
    some fields like that in etlMapping. (#176)
  - Fixing type of fields to be number, boolean rather than only text (#175)

## uc-cdis/metadata-service

#### New Features
  - Wildcards can be used in filters to query all data with a value for a 
    specific field, regardless of value (#56)

#### Improvements
  - Improving DELETE endpoint for `/objects` API. (#53)

## uc-cdis/cloud-automation

#### Bug Fixes
  - Fix kube-setup-fence.sh to create GA4GH jobs if they do not already exist 
    (#1892)
  - Fix `mutate-guppy-config-for-pfb-export-test` so that indices have correct 
    types (#1915)
  - add label selector and days to persist record to argo engine archive (#1908)
  - spacing issues in argo deploy yaml (#1904)

#### New Features
  - Whitelisted kubecost repo (#1924)

#### Improvements
  - In `mutate-etl-mapping-config`, mutate all `etlMapping.yaml` names so that 
    all aliases created have consistent prefix (#1915)

#### # Changes Included In This Pr
  - Docker/Jenkins-CI-Worker/Dockerfile (#1913)
  - We recommend upgrading to `jenkins/jnlp-slave:4.9-1`, as this image has 
    only 161 known vulnerabilities. To do this, merge this pull request, then 
    verify your application still works as expected. (#1913)
  - Some of the most important vulnerabilities in your base image include: 
    (#1913)
  - | Severity | Priority Score / 1000 | Issue | Exploit Maturity | (#1913) 
    
  - | :------: | :-------------------- | :---- | :--------------- | (#1913) 
    
  - | ![critical 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/c.png
    "critical severity") | **714** | Buffer Overflow 
    <br/>[SNYK-DEBIAN10-OPENSSL-1569403](https://snyk.io/vuln/SNYK-DEBIAN10-OPENSSL-1569403)
    | No Known Exploit | (#1913)
  - | ![high 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/h.png
    "high severity") | **614** | Out-of-bounds Write 
    <br/>[SNYK-DEBIAN10-PERL-570792](https://snyk.io/vuln/SNYK-DEBIAN10-PERL-570792)
    | No Known Exploit | (#1913)
  - | ![high 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/h.png
    "high severity") | **614** | Buffer Overflow 
    <br/>[SNYK-DEBIAN10-PERL-570797](https://snyk.io/vuln/SNYK-DEBIAN10-PERL-570797)
    | No Known Exploit | (#1913)
  - | ![high 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/h.png
    "high severity") | **614** | Integer Overflow or Wraparound 
    <br/>[SNYK-DEBIAN10-PERL-570802](https://snyk.io/vuln/SNYK-DEBIAN10-PERL-570802)
    | No Known Exploit | (#1913)
  - | ![high 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/h.png
    "high severity") | **614** | NULL Pointer Dereference 
    <br/>[SNYK-DEBIAN10-SUBVERSION-1071814](https://snyk.io/vuln/SNYK-DEBIAN10-SUBVERSION-1071814)
    | No Known Exploit | (#1913)
  - Note:** _You are seeing this because you or someone else with access to 
    this repository has authorized Snyk to open fix PRs._ (#1913)
  - For more information: <img 
    src="https://api.segment.io/v1/pixel/track?data=eyJ3cml0ZUtleSI6InJyWmxZcEdHY2RyTHZsb0lYd0dUcVg4WkFRTnNCOUEwIiwiYW5vbnltb3VzSWQiOiI3NGU0MGI4NC1hMjI5LTQ4ZDgtOTQ4OC0zMTI5Y2FkN2FmMGIiLCJldmVudCI6IlBSIHZpZXdlZCIsInByb3BlcnRpZXMiOnsicHJJZCI6Ijc0ZTQwYjg0LWEyMjktNDhkOC05NDg4LTMxMjljYWQ3YWYwYiJ9fQ=="
    width="0" height="0"/> (#1913)
  - 🧐 [View latest project 
    report](https://app.snyk.io/org/plan-x/project/f79f7074-befd-4734-8167-eab5654a17e3?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr)
    (#1913)
  - 🛠 [Adjust project 
    settings](https://app.snyk.io/org/plan-x/project/f79f7074-befd-4734-8167-eab5654a17e3?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr/settings)
    (#1913)
  - [//]: # 
    'snyk:metadata:{"prId":"74e40b84-a229-48d8-9488-3129cad7af0b","prPublicId":"74e40b84-a229-48d8-9488-3129cad7af0b","dependencies":[{"name":"jenkins/jnlp-slave","from":"4.3-1","to":"4.9-1"}],"packageManager":"dockerfile","projectPublicId":"f79f7074-befd-4734-8167-eab5654a17e3","projectUrl":"https://app.snyk.io/org/plan-x/project/f79f7074-befd-4734-8167-eab5654a17e3?utm_source=github&utm_medium=referral&page=fix-pr","type":"user-initiated","patch":[],"vulns":["SNYK-DEBIAN10-OPENSSL-1569403","SNYK-DEBIAN10-SUBVERSION-1071814","SNYK-DEBIAN10-PERL-570802","SNYK-DEBIAN10-PERL-570797","SNYK-DEBIAN10-PERL-570792"],"upgrade":["SNYK-DEBIAN10-OPENSSL-1569403","SNYK-DEBIAN10-PERL-570792","SNYK-DEBIAN10-PERL-570797","SNYK-DEBIAN10-PERL-570802","SNYK-DEBIAN10-SUBVERSION-1071814"],"isBreakingChange":false,"env":"prod","prType":"fix","templateVariants":["updated-fix-title","priorityScore"],"priorityScoreList":[714,614,614,614,614]}'
    (#1913)
  - Learn how to fix vulnerabilities with free interactive lessons: (#1913)
  - 🦉 [Learn about vulnerability in an interactive lesson of Snyk 
    Learn.](https://learn.snyk.io?loc&#x3D;fix-pr) (#1913)

## uc-cdis/requestor

#### Improvements
  - Improve logs for access request creation (#28)

#### New Features
  - Grant or revoke the access when a request is created with an initial status 
    that is configured in `UPDATE_ACCESS_STATUSES` (#27)

## uc-cdis/requestor

#### Improvements
  - Improve logs for access request creation (#28)

#### New Features
  - Grant or revoke the access when a request is created with an initial status 
    that is configured in `UPDATE_ACCESS_STATUSES` (#27)

