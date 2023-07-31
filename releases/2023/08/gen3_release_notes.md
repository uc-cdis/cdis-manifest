# Core Gen3 Release 2023.08

## uc-cdis/fence

#### Bug Fixes
  - Fix usersync issue where arborist would not receive updates when Google 
    update errors occur. ([#1105](https://github.com/uc-cdis/fence/pull/1105))
  - Fixes issue where get/add/remove members for google groups weren't working. 
    ([#1100](https://github.com/uc-cdis/fence/pull/1100))
  - Usersync no longer prematurely ends when encountering google errors. 
    ([#1097](https://github.com/uc-cdis/fence/pull/1097))

#### Improvements
  - Enable client-credentials on /download/{guid} and 
    /ga4gh/drs/v1/objects/{guid}/access/{access_id} endpoints ([#1104](https://github.com/uc-cdis/fence/pull/1104)) 
  - Replacing the `and` with `,` in user scope description to improve 
    readability ([#1101](https://github.com/uc-cdis/fence/pull/1101))
  - More robust CSV parsing in `usersync` ([#1098](https://github.com/uc-cdis/fence/pull/1098)) 
  - Adds backoff for the give_service_account_billing_access calls ([#1095](https://github.com/uc-cdis/fence/pull/1095)) 

## uc-cdis/guppy

#### Dependency Updates
  - "react": "^17.0.2" ([#225](https://github.com/uc-cdis/guppy/pull/225))
  - "react-dom": "^17.0.2" ([#225](https://github.com/uc-cdis/guppy/pull/225))
  - "@gen3/ui-component": "^0.11.4", ([#224](https://github.com/uc-cdis/guppy/pull/224)) 
  - "array.prototype.flatmap": "^1.3.1", ([#224](https://github.com/uc-cdis/guppy/pull/224)) 
  - "dd-trace": "^4.5.0", ([#224](https://github.com/uc-cdis/guppy/pull/224))
  - "express": "^4.18.2", ([#224](https://github.com/uc-cdis/guppy/pull/224))
  - "file-saver": "^2.0.5", ([#224](https://github.com/uc-cdis/guppy/pull/224))
  - "flat": "^5.0.2", ([#224](https://github.com/uc-cdis/guppy/pull/224))
  - "lodash": "^4.17.21", ([#224](https://github.com/uc-cdis/guppy/pull/224))
  - "loglevel": "^1.8.1", ([#224](https://github.com/uc-cdis/guppy/pull/224))
  - "prop-types": "^15.8.1", ([#224](https://github.com/uc-cdis/guppy/pull/224))
  - remove core-js nothing uses it ([#216](https://github.com/uc-cdis/guppy/pull/216)) 
  - update storybook table to antd table from unsupported react-table ([#222](https://github.com/uc-cdis/guppy/pull/222)) 
  - install "antd": "^4.24.11" ([#222](https://github.com/uc-cdis/guppy/pull/222)) 
  - remove "react-table": "^6.9.2", ([#222](https://github.com/uc-cdis/guppy/pull/222)) 
  - update eslint and fix formatting errors ([#223](https://github.com/uc-cdis/guppy/pull/223)) 
  - "eslint" to "^8.44.0" ([#223](https://github.com/uc-cdis/guppy/pull/223))
  - "eslint-config-airbnb" to "^19.0.4" ([#223](https://github.com/uc-cdis/guppy/pull/223)) 
  - "@babel/cli": "^7.22.6", ([#221](https://github.com/uc-cdis/guppy/pull/221))
  - "@babel/core": "^7.22.8", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@babel/node": "^7.22.6", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@babel/plugin-proposal-object-rest-spread": "^7.20.7", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@babel/plugin-proposal-private-methods": "^7.18.6", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@babel/plugin-transform-runtime": "^7.22.7", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@babel/preset-env": "^7.22.7", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@babel/preset-react": "^7.22.5", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@babel/runtime-corejs3": "^7.22.6", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@storybook/addon-actions": "^7.0.26", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@storybook/addon-links": "^7.0.26", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@storybook/react": "^7.0.26", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "@storybook/react-webpack5": "^7.0.26", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "babel-jest": "^29.6.1", ([#221](https://github.com/uc-cdis/guppy/pull/221))
  - "babel-loader": "^9.1.2", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "commander": "^3.0.2", ([#221](https://github.com/uc-cdis/guppy/pull/221))
  - "jest": "^29.6.1", ([#221](https://github.com/uc-cdis/guppy/pull/221))
  - "json-schema-faker": "^0.5.3", ([#221](https://github.com/uc-cdis/guppy/pull/221)) 
  - "nock": "^13.3.1", ([#221](https://github.com/uc-cdis/guppy/pull/221))
  - "storybook": "^7.0.26" ([#221](https://github.com/uc-cdis/guppy/pull/221))
  - update helmet to 7 ([#220](https://github.com/uc-cdis/guppy/pull/220))
  - update node to 16 for future dependency updates ([#219](https://github.com/uc-cdis/guppy/pull/219)) 
  - Bumps [glob-parent](https://github.com/gulpjs/glob-parent) to 5.1.2 and 
    updates ancestor dependency 
    [@storybook/react](https://github.com/storybookjs/storybook/tree/HEAD/code/renderers/react).
    These dependencies need to be updated together. (#195)
  - upgrade @gen3/ui-component to 0.11.3 ([#192](https://github.com/uc-cdis/guppy/pull/192)) 

#### Deployment Changes
  - update node from 14 to 16 ([#219](https://github.com/uc-cdis/guppy/pull/219)) 

#### New Features
  - add _totalCount to guppy items ([#180](https://github.com/uc-cdis/guppy/pull/180)) 
  - remove unneeded countFields and extraAggsFieldsCardinalityCount property 
    ([#180](https://github.com/uc-cdis/guppy/pull/180))

#### Bug Fixes
  - fix performance bug where charts were being processed as filters, now only 
    processes filters ([#180](https://github.com/uc-cdis/guppy/pull/180))

## uc-cdis/hatchery

#### New Features
  - Add support for VPC's with multiple CIDR's ([#66](https://github.com/uc-cdis/hatchery/pull/66)) 

## uc-cdis/indexd

#### Bug Fixes
  - Indexd records no longer return empty strings for content_updated_date and 
    content_updated_time when not provided. ([#361](https://github.com/uc-cdis/indexd/pull/361)) 

#### Dependency Updates
  - Allow any Python 3.9.* ([#360](https://github.com/uc-cdis/indexd/pull/360))

## uc-cdis/manifestservice

#### New Features
  - Use EKS IAM service account tied to a role instead of AWS IAM user. ([#32](https://github.com/uc-cdis/manifestservice/pull/32)) 

#### Deployment Changes
  - ManifestService does not expect `aws_access_key_id` and 
    `aws_secret_access_key` settings anymore. Instead, the service relies on 
    AWS EKS IRSA credentials mounted to the pod. See 
    https://github.com/uc-cdis/manifestservice/blob/master/docs/credentials_breaking_change.md
    for more details ([#32](https://github.com/uc-cdis/manifestservice/pull/32))

## uc-cdis/peregrine

#### Improvements
  - Log more error details in the core metadata endpoint ([#200](https://github.com/uc-cdis/peregrine/pull/200)) 

## uc-cdis/data-portal

#### New Features
  - add to discovery page setup ability to select guidType for the api call, 
    this allows for displaying only select mds records on the discovery page 
    ([#1357](https://github.com/uc-cdis/data-portal/pull/1357))

#### Improvements
  - Add warning for workspace user for waiting for proxy step ([#1347](https://github.com/uc-cdis/data-portal/pull/1347)) 
  - add to requiredIdpField docs to better explain what is going on ([#1344](https://github.com/uc-cdis/data-portal/pull/1344)) 
  - File page: improve display of array values ([#1327](https://github.com/uc-cdis/data-portal/pull/1327)) 
  - use new guppy count field insted of calculating it ([#981](https://github.com/uc-cdis/data-portal/pull/981)) 
  - CSS update to handle newlines better in Discovery modal ([#1289](https://github.com/uc-cdis/data-portal/pull/1289)) 

#### # Changes Included In This Pr
  - Changes to the following files to upgrade the vulnerable dependencies to a 
    fixed version: ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - src/Covid19Dashboard/standalone/package.json ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - Changes to the following files to upgrade the vulnerable dependencies to a 
    fixed version: ([#1247](https://github.com/uc-cdis/data-portal/pull/1247))
  - package.json ([#1247](https://github.com/uc-cdis/data-portal/pull/1247))
  - package-lock.json ([#1247](https://github.com/uc-cdis/data-portal/pull/1247)) 
  - Changes to the following files to upgrade the vulnerable dependencies to a 
    fixed version: ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - package.json ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - package-lock.json ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 

#### ## With An Upgrade:
  - Severity | Issue | Breaking Change | Exploit Maturity ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - :-------------------------:|:-------------------------|:-------------------------|:-------------------------
    ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - ![medium 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/m.png
    "medium severity") | Regular Expression Denial of Service (ReDoS) 
    <br/>[SNYK-JS-SEMVER-3247795](https://snyk.io/vuln/SNYK-JS-SEMVER-3247795) 
    | Yes | Proof of Concept ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <details> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - <summary><b>Commit messages</b></summary> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - </br> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - <details> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - <summary>Package name: <b>css-loader</b></summary> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - The new version differs by 34 commits.</br> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <ul> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/7857d8f75937ad34e6250859e8ff0bbf2b88f098">7857d8f</a>
    chore(release): 4.0.0</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/560420567eb0e1a635648b7f4ff0365db475384c">5604205</a>
    feat: support &#x60;file:&#x60; protocol</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/5303db217e1449c9e363f0ecfd3dbeaab755c5d3">5303db2</a>
    chore(deps): update (#1131)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/9aa0549e99a7a88001a60758b4e95dd30fa72b03">9aa0549</a>
    chore(deps): update</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/a54c955b4a79bee0721ba71dd01fca7db0cce0bb">a54c955</a>
    test: imports</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/5b45d87e5d9517d6da71f62369a5e1eef1284fd2">5b45d87</a>
    test: support in &#x60;@ import&#x60; at-rule</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/83515fac8c78a6d475e80758dd689c1f2daa8bca">83515fa</a>
    refactor: code</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/1c20b1e32b138be5369c5300597c53cb1526c3bf">1c20b1e</a>
    fix: parsing</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/7f49a0a6047846bb2e432558365e19d4a0dfb366">7f49a0a</a>
    feat: &#x60;@ value&#x60; supports importing &#x60;url()&#x60; (#1126)</li> 
    ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/791fff36c8aaceaaa27e8665172008c28ad11484">791fff3</a>
    refactor: named export (#1125)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/01e8c7683a5f66eda7e050896a383099d6ea14e3">01e8c76</a>
    refactor: change function arguments of the &#x60;import&#x60; option 
    (#1124)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/c153fe6b1d76d24115001e163f5d39f8ed40ee22">c153fe6</a>
    refactor: improve schema options (#1123)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/58b4b9866de45fc2ee10b169f9bcf153d0306d52">58b4b98</a>
    test: unresolved (#1122)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/d2f6bd2755a513e98faca84c3f52544be72d53f3">d2f6bd2</a>
    refactor: getLocalIdent function (#1121)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/069dbb0abe8cd9034fcd248653909ac4806042d3">069dbb0</a>
    refactor: the &#x60;modules.localsConvention&#x60; option was renamed to 
    the &#x60;modules.exportLocalsConvention&#x60; option (#1120)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/fc044012e2dc2855e919e603a065fbca19d3a5dc">fc04401</a>
    refactor: the &#x60;modules.context&#x60; option was renamed to the 
    &#x60;modules.localIdentContext&#x60; option (#1119)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/3a96a3d5704c8cdd0dbb471bbd82b53cf22bd202">3a96a3d</a>
    refactor: the &#x60;hashPrefix&#x60; option was renamed to the 
    &#x60;localIdentHashPrefix&#x60; option (#1118)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/0080f88c67abb2d9a6eee909eef229ef086b8c9e">0080f88</a>
    refactor: default values &#x60;modules&#x60; and &#x60;module.auto&#x60; 
    are true (#1117)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/e1c55e4ae46b6c84141604b0652db8b87b08b0c1">e1c55e4</a>
    refactor: rename the &#x60;onlyLocals&#x60; option (#1116)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/ac5f413a889934b9a55bf770f45885a04bde368e">ac5f413</a>
    refactor: code</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/a5c1b5ff5fb1cf2fc899e03b1c4d774f1190839b">a5c1b5f</a>
    test: code coverange (#1114)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/908eceec974cd2f3d77d300d00e1cd976e3143a4">908ecee</a>
    refactor: &#x60;esModule&#x60; option is &#x60;true&#x60; by default 
    (#1111)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/7cca035df1efbc5b8dde6eb8f829e4bff4d14a86">7cca035</a>
    test: coverange (#1112)</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - <li><a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/commit/bc19ddd8779dafbc2a420870a3cb841041ce9c7c">bc19ddd</a>
    feat: improve &#x60;url()&#x60; resolving algorithm</li> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - </ul> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - <a 
    href="https://snyk.io/redirect/github/webpack-contrib/css-loader/compare/22e16e2fc88f920571219570953d3da5702d4fdb...7857d8f75937ad34e6250859e8ff0bbf2b88f098">See
    the full diff</a> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - </details> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - </details> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - Check the changes in this PR to ensure they won't cause issues with your 
    project. ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - Note:** *You are seeing this because you or someone else with access to 
    this repository has authorized Snyk to open fix PRs.* ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - For more information: <img 
    src="https://api.segment.io/v1/pixel/track?data=eyJ3cml0ZUtleSI6InJyWmxZcEdHY2RyTHZsb0lYd0dUcVg4WkFRTnNCOUEwIiwiYW5vbnltb3VzSWQiOiJlMTZkZTAwZS05ZDNkLTQ4M2ItOTlmYS1jY2I0NmFjOTg3YTgiLCJldmVudCI6IlBSIHZpZXdlZCIsInByb3BlcnRpZXMiOnsicHJJZCI6ImUxNmRlMDBlLTlkM2QtNDgzYi05OWZhLWNjYjQ2YWM5ODdhOCJ9fQ=="
    width="0" height="0"/> ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - 🧐 [View latest project 
    report](https://app.snyk.io/org/plan-x/project/11af69b5-7fc0-47dc-913c-6e449adf094c?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr)
    ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - 🛠 [Adjust project 
    settings](https://app.snyk.io/org/plan-x/project/11af69b5-7fc0-47dc-913c-6e449adf094c?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr/settings)
    ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - 📚 [Read more about Snyk's upgrade and patch 
    logic](https://support.snyk.io/hc/en-us/articles/360003891078-Snyk-patches-to-fix-vulnerabilities)
    ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - [//]: # 
    (snyk:metadata:{"prId":"e16de00e-9d3d-483b-99fa-ccb46ac987a8","prPublicId":"e16de00e-9d3d-483b-99fa-ccb46ac987a8","dependencies":[{"name":"css-loader","from":"3.6.0","to":"4.0.0"}],"packageManager":"npm","projectPublicId":"11af69b5-7fc0-47dc-913c-6e449adf094c","projectUrl":"https://app.snyk.io/org/plan-x/project/11af69b5-7fc0-47dc-913c-6e449adf094c?utm_source=github&utm_medium=referral&page=fix-pr","type":"auto","patch":[],"vulns":["SNYK-JS-SEMVER-3247795"],"upgrade":["SNYK-JS-SEMVER-3247795"],"isBreakingChange":true,"env":"prod","prType":"fix","templateVariants":["updated-fix-title"],"priorityScoreList":[null],"remediationStrategy":"vuln"})
    ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - Learn how to fix vulnerabilities with free interactive lessons:** ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 
  - 🦉 [Regular Expression Denial of Service 
    (ReDoS)](https://learn.snyk.io/lessons/redos/javascript/?loc&#x3D;fix-pr) 
    ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - Severity | Priority Score (*) | Issue | Breaking Change | Exploit Maturity 
    ([#1247](https://github.com/uc-cdis/data-portal/pull/1247))
  - :-------------------------:|-------------------------|:-------------------------|:-------------------------|:-------------------------
    ([#1247](https://github.com/uc-cdis/data-portal/pull/1247))
  - ![medium 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/m.png
    "medium severity") | **454/1000** <br/> **Why?** Has a fix available, CVSS 
    4.8 | Undesired Behavior 
    <br/>[SNYK-JS-STYLEDCOMPONENTS-3149924](https://snyk.io/vuln/SNYK-JS-STYLEDCOMPONENTS-3149924)
    | No | No Known Exploit ([#1247](https://github.com/uc-cdis/data-portal/pull/1247)) 
  - (*) Note that the real score may have changed since the PR was raised. 
    ([#1247](https://github.com/uc-cdis/data-portal/pull/1247))
  - Check the changes in this PR to ensure they won't cause issues with your 
    project. ([#1247](https://github.com/uc-cdis/data-portal/pull/1247))
  - Note:** *You are seeing this because you or someone else with access to 
    this repository has authorized Snyk to open fix PRs.* ([#1247](https://github.com/uc-cdis/data-portal/pull/1247)) 
  - For more information: <img 
    src="https://api.segment.io/v1/pixel/track?data=eyJ3cml0ZUtleSI6InJyWmxZcEdHY2RyTHZsb0lYd0dUcVg4WkFRTnNCOUEwIiwiYW5vbnltb3VzSWQiOiJkY2M5ZWU2YS00YmVmLTRlYjQtOWU0Ny05MDRmMWQwYWIzMzMiLCJldmVudCI6IlBSIHZpZXdlZCIsInByb3BlcnRpZXMiOnsicHJJZCI6ImRjYzllZTZhLTRiZWYtNGViNC05ZTQ3LTkwNGYxZDBhYjMzMyJ9fQ=="
    width="0" height="0"/> ([#1247](https://github.com/uc-cdis/data-portal/pull/1247)) 
  - 🧐 [View latest project 
    report](https://app.snyk.io/org/binamb-81n/project/dfa5c1e8-232f-4e59-a66c-9f2092088368?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr)
    ([#1247](https://github.com/uc-cdis/data-portal/pull/1247))
  - 🛠 [Adjust project 
    settings](https://app.snyk.io/org/binamb-81n/project/dfa5c1e8-232f-4e59-a66c-9f2092088368?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr/settings)
    ([#1247](https://github.com/uc-cdis/data-portal/pull/1247))
  - 📚 [Read more about Snyk's upgrade and patch 
    logic](https://support.snyk.io/hc/en-us/articles/360003891078-Snyk-patches-to-fix-vulnerabilities)
    ([#1247](https://github.com/uc-cdis/data-portal/pull/1247))
  - [//]: # 
    (snyk:metadata:{"prId":"dcc9ee6a-4bef-4eb4-9e47-904f1d0ab333","prPublicId":"dcc9ee6a-4bef-4eb4-9e47-904f1d0ab333","dependencies":[{"name":"styled-components","from":"5.3.6","to":"5.3.7"}],"packageManager":"npm","projectPublicId":"dfa5c1e8-232f-4e59-a66c-9f2092088368","projectUrl":"https://app.snyk.io/org/binamb-81n/project/dfa5c1e8-232f-4e59-a66c-9f2092088368?utm_source=github&utm_medium=referral&page=fix-pr","type":"auto","patch":[],"vulns":["SNYK-JS-STYLEDCOMPONENTS-3149924"],"upgrade":["SNYK-JS-STYLEDCOMPONENTS-3149924"],"isBreakingChange":false,"env":"prod","prType":"fix","templateVariants":["updated-fix-title","priorityScore"],"priorityScoreList":[454]})
    ([#1247](https://github.com/uc-cdis/data-portal/pull/1247))
  - Learn how to fix vulnerabilities with free interactive lessons:** ([#1247](https://github.com/uc-cdis/data-portal/pull/1247)) 
  - 🦉 [Learn about vulnerability in an interactive lesson of Snyk 
    Learn.](https://learn.snyk.io/?loc&#x3D;fix-pr) ([#1247](https://github.com/uc-cdis/data-portal/pull/1247)) 
  - Severity | Priority Score (*) | Issue | Breaking Change | Exploit Maturity 
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - :-------------------------:|-------------------------|:-------------------------|:-------------------------|:-------------------------
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - ![medium 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/m.png
    "medium severity") | **586/1000** <br/> **Why?** Proof of Concept exploit, 
    Has a fix available, CVSS 5.3 | Regular Expression Denial of Service 
    (ReDoS) 
    <br/>[SNYK-JS-D3COLOR-1076592](https://snyk.io/vuln/SNYK-JS-D3COLOR-1076592)
    | No | Proof of Concept ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - (*) Note that the real score may have changed since the PR was raised. 
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <details> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <summary><b>Commit messages</b></summary> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - </br> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <details> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <summary>Package name: <b>recharts</b></summary> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - The new version differs by 55 commits.</br> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <ul> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/e71d83ca562f90f46732687dd577cd624194b7d4">e71d83c</a>
    2.3.0</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/1216e06412fd896da484bc0a84ca85d2b415fbd9">1216e06</a>
    fix: cartesian utils unit test, remove demo,src from files array</li> 
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/bcb199c0d60b79fa09704413ed9a440cc0a7b1c9">bcb199c</a>
    fix: d3 security vulnerability in d3-color</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/85f7c81a47d8f095cf70b7fdf0b4d00e67202b20">85f7c81</a>
    chore: add npm publish action (#3166)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/447fd7af2fefc2709a5215fa6c7fdf54c1da313c">447fd7a</a>
    test: add jest coverage, differentiate jest and karma envs to fix errors 
    (#3164)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/a290cfa2b0856bf3a964138955ca6a2f38897bd8">a290cfa</a>
    fix: area chart test part3 (#3163)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/90ed7e7a81b4ff8c4df54e31503aa778edd36caa">90ed7e7</a>
    refactor(ReactUtils): findByType – use generic to have a better return 
    type</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/da9e91392dfb9f4c9f237d00be6da0ee851486eb">da9e913</a>
    chore(gitignore): add .vscode</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/cc78f8ca904bac855541fc82d6890d6e8b63e632">cc78f8c</a>
    fix(ChartUtils): appendOffsetOfLegend – correct verticalAlign match to 
    “middle”</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/21b923a3ae854ce74e2c293a76604597f7bff7ed">21b923a</a>
    fix: area chart test migration follow up (#3161)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/0d82154804cad253ed470904c06c136a0df01516">0d82154</a>
    LineChart.spec jest migration (#3141)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/3214d1405d13d5ddcd3931d870634bcb80a52b22">3214d14</a>
    refactor(ResponsiveContainer): improve performance memoizing internal 
    variables</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/fe8f75843111b5fe35735419d5612ed20808d9a4">fe8f758</a>
    test(JestMigration): convert ResponsiveContainer (closes #3156)</li> 
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/518b4b198a5d31aecdff67d5fb1800503631b0bf">518b4b1</a>
    JestMigration: Label and LabelList (#3154)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/9b8339992e0a55bb9cc565e7db67a830a4df3532">9b83399</a>
    Jest Migration: ChartUtils (#3148)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/8db8edfcdb3c3d96c3f34c09164c3523b244cac6">8db8edf</a>
    fix: migrate area chart test to typescript (#3151)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/81d271b903e27afcc4de7df679bced85ce6fc5ab">81d271b</a>
    test(JestMigration): convert FunnelChart (closes #3127) (#3153)</li> 
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/f4f9607015c4a4edea233de3640a97db625e18b3">f4f9607</a>
    Jest Migration: Cell (#3150)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/08f405e46e9860cd284c6d91f871cf6970d2b829">08f405e</a>
    Jest Migration: util/DataUtils (#3134) (#3147)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/287552f3fbec73346b5fc37503674ffbd8e254ab">287552f</a>
    Jest Migration: util/CartesianUtils (#3145)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/81f08fcbe76803c3450ccb4054fc5230ed0e0ac6">81f08fc</a>
    chore(deps-dev): remove unused dependencies (#3144)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/c07f762fbcdb6d7515ecc5c1b42067d3c6367938">c07f762</a>
    AreaChart: Respect baseValue of AreaChart, but allow override from Area 
    (#3140)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/2e8dffd2fbcb80f13bcfafc4ee32d6570d726c0d">2e8dffd</a>
    test(ShallowEqual): convert test using jest (#3143)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - <li><a 
    href="https://snyk.io/redirect/github/recharts/recharts/commit/787f041e119caa78616ed80ec03dac471599588c">787f041</a>
    test(jest): remove console error and warn from stdout in LogUtils and 
    ReactUtils (#3142)</li> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - </ul> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - <a 
    href="https://snyk.io/redirect/github/recharts/recharts/compare/808d60b771b3eb74fc1251f3aca52dc42d5f3a7e...e71d83ca562f90f46732687dd577cd624194b7d4">See
    the full diff</a> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - </details> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - </details> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - Check the changes in this PR to ensure they won't cause issues with your 
    project. ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - Note:** *You are seeing this because you or someone else with access to 
    this repository has authorized Snyk to open fix PRs.* ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - For more information: <img 
    src="https://api.segment.io/v1/pixel/track?data=eyJ3cml0ZUtleSI6InJyWmxZcEdHY2RyTHZsb0lYd0dUcVg4WkFRTnNCOUEwIiwiYW5vbnltb3VzSWQiOiIzMTI4ZTI2MC1iOWY4LTQ0NmMtYjQ2Zi0xMTIzNTc2MTk1ZWUiLCJldmVudCI6IlBSIHZpZXdlZCIsInByb3BlcnRpZXMiOnsicHJJZCI6IjMxMjhlMjYwLWI5ZjgtNDQ2Yy1iNDZmLTExMjM1NzYxOTVlZSJ9fQ=="
    width="0" height="0"/> ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - 🧐 [View latest project 
    report](https://app.snyk.io/org/plan-x/project/7954ccc1-e68c-4e7a-bc1e-3aa858736f91?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr)
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - 🛠 [Adjust project 
    settings](https://app.snyk.io/org/plan-x/project/7954ccc1-e68c-4e7a-bc1e-3aa858736f91?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr/settings)
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - 📚 [Read more about Snyk's upgrade and patch 
    logic](https://support.snyk.io/hc/en-us/articles/360003891078-Snyk-patches-to-fix-vulnerabilities)
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - [//]: # 
    (snyk:metadata:{"prId":"3128e260-b9f8-446c-b46f-1123576195ee","prPublicId":"3128e260-b9f8-446c-b46f-1123576195ee","dependencies":[{"name":"recharts","from":"2.2.0","to":"2.3.0"}],"packageManager":"npm","projectPublicId":"7954ccc1-e68c-4e7a-bc1e-3aa858736f91","projectUrl":"https://app.snyk.io/org/plan-x/project/7954ccc1-e68c-4e7a-bc1e-3aa858736f91?utm_source=github&utm_medium=referral&page=fix-pr","type":"auto","patch":[],"vulns":["SNYK-JS-D3COLOR-1076592"],"upgrade":["SNYK-JS-D3COLOR-1076592"],"isBreakingChange":false,"env":"prod","prType":"fix","templateVariants":["updated-fix-title","priorityScore"],"priorityScoreList":[586]})
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))
  - Learn how to fix vulnerabilities with free interactive lessons:** ([#1200](https://github.com/uc-cdis/data-portal/pull/1200)) 
  - 🦉 [Regular Expression Denial of Service 
    (ReDoS)](https://learn.snyk.io/lessons/redos/javascript/?loc&#x3D;fix-pr) 
    ([#1200](https://github.com/uc-cdis/data-portal/pull/1200))

#### Bug Fixes
  - remove duplicate padding ([#1333](https://github.com/uc-cdis/data-portal/pull/1333)) 
  - Fix Profile Page visual inconsistency ([#1333](https://github.com/uc-cdis/data-portal/pull/1333)) 
  - fix bug where filters dont reset table to page one ([#1330](https://github.com/uc-cdis/data-portal/pull/1330)) 
  - `fixed` position should fix the bug where popup appear in the hidden 
    (scrolled past) area ([#1298](https://github.com/uc-cdis/data-portal/pull/1298)) 

#### Dependency Updates
  - updating guppy to 0.16.0 ([#1309](https://github.com/uc-cdis/data-portal/pull/1309)) 

#### Deployment Changes
  - will require server to also be using guppy ^0.16.0 on backend ([#1309](https://github.com/uc-cdis/data-portal/pull/1309)) 

## uc-cdis/sheepdog

#### Bug Fixes
  - Fix validation issue when submitting null values allowed by a `oneOf/anyOf` 
    dictionary property definition ([#398](https://github.com/uc-cdis/sheepdog/pull/398)) 

## uc-cdis/tube

#### Bug Fixes
  - Left join should be applied for nested props ([#237](https://github.com/uc-cdis/tube/pull/237)) 

#### Improvements
  - Github workflow updated to use `GITBHUB_OUTPUT`, since `set-output` is 
    deprecated ([#236](https://github.com/uc-cdis/tube/pull/236))

## uc-cdis/workspace-token-service

#### Improvements
  - Update Version number to make a new release ([#58](https://github.com/uc-cdis/workspace-token-service/pull/58)) 
  - Close the session in the health check endpoint ([#60](https://github.com/uc-cdis/workspace-token-service/pull/60)) 

