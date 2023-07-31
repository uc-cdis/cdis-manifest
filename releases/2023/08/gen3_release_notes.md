# Core Gen3 Release 2023.08 (Spinel)

## uc-cdis/fence

#### Bug Fixes
  - Fix usersync issue where arborist would not receive updates when Google 
    update errors occur. ([#1105](https://github.com/uc-cdis/fence/pull/1105))

#### Improvements
  - Enable client-credentials on /download/{guid} and 
    /ga4gh/drs/v1/objects/{guid}/access/{access_id} endpoints ([#1104](https://github.com/uc-cdis/fence/pull/1104)) 

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

#### Deployment Changes
  - update node from 14 to 16 ([#219](https://github.com/uc-cdis/guppy/pull/219)) 

## uc-cdis/hatchery

#### New Features
  - Add support for VPC's with multiple CIDR's ([#66](https://github.com/uc-cdis/hatchery/pull/66)) 

## uc-cdis/data-portal

#### New Features
  - add to discovery page setup ability to select guidType for the api call, 
    this allows for displaying only select mds records on the discovery page 
    ([#1357](https://github.com/uc-cdis/data-portal/pull/1357))

#### Improvements
  - Add warning for workspace user for waiting for proxy step ([#1347](https://github.com/uc-cdis/data-portal/pull/1347)) 
  - add to requiredIdpField docs to better explain what is going on ([#1344](https://github.com/uc-cdis/data-portal/pull/1344)) 

#### # Changes Included In This Pr
  - Changes to the following files to upgrade the vulnerable dependencies to a 
    fixed version: ([#1338](https://github.com/uc-cdis/data-portal/pull/1338))
  - src/Covid19Dashboard/standalone/package.json ([#1338](https://github.com/uc-cdis/data-portal/pull/1338)) 

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

#### Bug Fixes
  - remove duplicate padding ([#1333](https://github.com/uc-cdis/data-portal/pull/1333)) 
  - Fix Profile Page visual inconsistency ([#1333](https://github.com/uc-cdis/data-portal/pull/1333)) 

