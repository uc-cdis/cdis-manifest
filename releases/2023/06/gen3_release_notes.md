# Core Gen3 Release 2023.06 (Sapphire)

## uc-cdis/arborist

#### Improvements
  - Added ERD to README ([#149](https://github.com/uc-cdis/arborist/pull/149))

## uc-cdis/fence

#### Improvements
  - Fix `SQLAlchemyDriver` warning when running `fence-create` commands ([#1096](https://github.com/uc-cdis/fence/pull/1096)) 
  - Remove out of date Flask SQLAlchemy session handling library and refactor 
    session management to use a recommended pure Flask + SQLAlchemy approach 
    that is thread-safe ([#1086](https://github.com/uc-cdis/fence/pull/1086))
  - The `DELETE /data/<GUID>` endpoint now supports resolving and deleting a 
    GUID without its prefix ([#1094](https://github.com/uc-cdis/fence/pull/1094)) 
  - add backoff to Google Group API calls ([#1081](https://github.com/uc-cdis/fence/pull/1081)) 
  - log google update errors but don't raise error and don't halt usersync 
    process ([#1089](https://github.com/uc-cdis/fence/pull/1089))

#### New Features
  - Add new endpoint, `/data/buckets`, that exposes bucket-region mapping from 
    the fence-config ([#1083](https://github.com/uc-cdis/fence/pull/1083))

#### Breaking Changes
  - Removed most Prometheus support ([#1086](https://github.com/uc-cdis/fence/pull/1086)) 

#### Bug Fixes
  - Fix access for rotated client credentials ([#1090](https://github.com/uc-cdis/fence/pull/1090)) 

#### Dependency Updates
  - Update to next major version of Flask, alongside many other updates to 
    support that ([#1086](https://github.com/uc-cdis/fence/pull/1086))
  - Update to latest Werkzeug for security ([#1086](https://github.com/uc-cdis/fence/pull/1086)) 
  - Remove libmhash2 dependency ([#1093](https://github.com/uc-cdis/fence/pull/1093)) 

#### Deployment Changes
  - Allow setting `INDEXD_PASSWORD` via environment variable. ([#1092](https://github.com/uc-cdis/fence/pull/1092)) 

## uc-cdis/guppy

#### New Features
  - Guppy to support cardinality queries ([#175](https://github.com/uc-cdis/guppy/pull/175)) 
  - Lint guppy ([#175](https://github.com/uc-cdis/guppy/pull/175))
  - add countFields to connected filter that uses cardinality queries ([#175](https://github.com/uc-cdis/guppy/pull/175)) 

#### Improvements
  - speed up _totalCount by not pulling data only total ([#171](https://github.com/uc-cdis/guppy/pull/171)) 

## uc-cdis/hatchery

#### Improvements
  - Create a wrapper function around `launchEcsWorkspace` function to catch 
    errors when running in goroutine. ([#63](https://github.com/uc-cdis/hatchery/pull/63)) 
  - Terminate workspace immediately if the set up of transit gateway fails for 
    some reason. ([#63](https://github.com/uc-cdis/hatchery/pull/63))
  - Simplify the setup of transit gateway(s) on ECS launches ([#63](https://github.com/uc-cdis/hatchery/pull/63)) 

## uc-cdis/indexd

#### New Features
  - Adds description, content_updated_time and content_created_time to 
    IndexRecord. ([#357](https://github.com/uc-cdis/indexd/pull/357))
  - DRS responses now map updated_time and created_time to the underlying 
    content's updated and created times. ([#357](https://github.com/uc-cdis/indexd/pull/357)) 
  - DRS responses now include index_created_time and index_updated_time to 
    denote the time they were indexed and the time their index record was 
    changed. These fields replace the previous updated_time and created_time in 
    older indexd versions. ([#357](https://github.com/uc-cdis/indexd/pull/357))

#### Breaking Changes
  - DRS responses for update_time and created_time reflect the content's 
    updated and created times, not the time they were indexed or their index 
    record was updated. ([#357](https://github.com/uc-cdis/indexd/pull/357))

#### Bug Fixes
  - Fix the routing to the alias endpoint (This fixes data submission in helm) 
    ([#358](https://github.com/uc-cdis/indexd/pull/358))

#### Deployment Changes
  - New columns added to index_record table. Alembic migration needed. ([#357](https://github.com/uc-cdis/indexd/pull/357)) 

## uc-cdis/data-portal

#### Bug Fixes
  - 1.) This update resolves the following bug: Portal incorrectly block user 
    from creating a workspace access request if the user has a study reg access 
    request pending. ([#1297](https://github.com/uc-cdis/data-portal/pull/1297))
  - This also changes the text shown to a user when they make a request while 
    they already have a pending workspace access request. Workspace request 
    users will be shown ([#1297](https://github.com/uc-cdis/data-portal/pull/1297)) 
  - ```There is already a pending request for workspace access for this user. 
    Please wait while we are processing your request.``` ([#1297](https://github.com/uc-cdis/data-portal/pull/1297)) 
  - All other requests that have a pending request will be shown ([#1297](https://github.com/uc-cdis/data-portal/pull/1297)) 
  - ```There is already a pending request for this study/user combination, 
    please wait while we are processing your request.``` ([#1297](https://github.com/uc-cdis/data-portal/pull/1297)) 
  - Results App V2: Changes the startedAt column to instead be a finishedAt 
    column in the home table view ([#1291](https://github.com/uc-cdis/data-portal/pull/1291)) 
  - Results App V2: Fixes the sort function for Date Time Submitted column to 
    use correct keys ([#1291](https://github.com/uc-cdis/data-portal/pull/1291))
  - Results App V2: Workflows list now always refreshes immediately when VA 
    Results app opens ([#1291](https://github.com/uc-cdis/data-portal/pull/1291)) 

#### # Validation
  - Was able to successfully reproduce issue and successfully submit a workflow 
    request ([#1297](https://github.com/uc-cdis/data-portal/pull/1297))
  - <img width="1327" alt="Screenshot 2023-05-05 at 11 15 05 AM" 
    src="https://user-images.githubusercontent.com/113449836/236541103-5d6e9cfa-071c-4040-9693-461bd46b9e7f.png">
    ([#1297](https://github.com/uc-cdis/data-portal/pull/1297))
  - Validated that a user with an existing workspace request is shown the 
    correct message when trying to resubmit ([#1297](https://github.com/uc-cdis/data-portal/pull/1297)) 
  - <img width="1327" alt="Screenshot 2023-05-05 at 1 59 43 PM" 
    src="https://user-images.githubusercontent.com/113449836/236546231-0585a8a1-b595-487e-af95-53d37c8aa675.png">
    ([#1297](https://github.com/uc-cdis/data-portal/pull/1297))
  - Validated that a user with an existing data dictionary submission request 
    is shown the correct message when trying to resubmit: ([#1297](https://github.com/uc-cdis/data-portal/pull/1297)) 
  - <img width="718" alt="image" 
    src="https://user-images.githubusercontent.com/113449836/236551005-55d7bd51-cce1-4aa0-b129-f78ba7f98ace.png">
    ([#1297](https://github.com/uc-cdis/data-portal/pull/1297))
  - 2.) In the discovery page study detail UI the the request access button is 
    overlapping the permalink button on medium / smaller screens (Mac pro 
    laptop with browser maximized). This has been addressed by unsetting the 
    buttons width, so it will take up the space it needs. ([#1297](https://github.com/uc-cdis/data-portal/pull/1297)) 

#### ## Before
  - <img width="718" alt="image" 
    src="https://user-images.githubusercontent.com/113449836/236557701-d7445b45-d48d-4ce4-8909-92c4a050857a.png">
    ([#1297](https://github.com/uc-cdis/data-portal/pull/1297))

#### ## After
  - <img width="718" alt="image" 
    src="https://user-images.githubusercontent.com/113449836/236557004-1f84fcfc-458a-46fe-b5c1-d1b9e3e24f4e.png">
    ([#1297](https://github.com/uc-cdis/data-portal/pull/1297))

#### Improvements
  - fix incorrect button size ([#1302](https://github.com/uc-cdis/data-portal/pull/1302)) 
  - removed old GWASResults app ([#1296](https://github.com/uc-cdis/data-portal/pull/1296)) 
  - moved new app into old place ([#1296](https://github.com/uc-cdis/data-portal/pull/1296)) 
  - Expanding `Account Information` dropdown by default when `/workspace` page 
    is opened. ([#1292](https://github.com/uc-cdis/data-portal/pull/1292))
  - Update text for info messages ([#1292](https://github.com/uc-cdis/data-portal/pull/1292)) 
  - Discovery: removed hard-coded requirement of using `project_number` as UID 
    in direct download ([#1275](https://github.com/uc-cdis/data-portal/pull/1275)) 
  - Study Registration: allow `studyRegistrationUIDField` to honor the value of 
    `minimalFieldMapping.uid` by default ([#1275](https://github.com/uc-cdis/data-portal/pull/1275)) 
  - add header to prevent clickjacking ([#1286](https://github.com/uc-cdis/data-portal/pull/1286)) 

#### New Features
  - This updates the HEAL platform to use a generic access form, refactoring 
    the code used for the workspace/register from and the 
    study-reg/request-access form into a single generic access form. This also 
    creates a new form, the data-dictionary-submission/request-access form 
    using this generic access form. ([#1262](https://github.com/uc-cdis/data-portal/pull/1262)) 
  - This updates the home table and its test to use the ```name``` key and its 
    value instead of the ```uid``` key from the data returned from the server. 
    ([#1280](https://github.com/uc-cdis/data-portal/pull/1280))
  - Note:** This is targeting Master - Let me know if this should target a 
    different branch to aid updating preprod or other environments for Results 
    V2 App release 1 testing. ([#1280](https://github.com/uc-cdis/data-portal/pull/1280)) 

#### Dependency Updates
  - Bumps [nunjucks](https://github.com/mozilla/nunjucks) from 3.2.3 to 3.2.4. 
    (#1278)

#### # Changes Included In This Pr
  - Changes to the following files to upgrade the vulnerable dependencies to a 
    fixed version: ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - package.json ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - package-lock.json ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - Changes to the following files to upgrade the vulnerable dependencies to a 
    fixed version: ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - src/Covid19Dashboard/standalone/package.json ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 

#### ## With An Upgrade:
  - Severity | Priority Score (*) | Issue | Breaking Change | Exploit Maturity 
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - :-------------------------:|-------------------------|:-------------------------|:-------------------------|:-------------------------
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - ![high 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/h.png
    "high severity") | **768/1000** <br/> **Why?** Proof of Concept exploit, 
    Recently disclosed, Has a fix available, CVSS 7.5 | Uncaught Exception 
    <br/>[SNYK-JS-YAML-5458867](https://snyk.io/vuln/SNYK-JS-YAML-5458867) | 
    Yes | Proof of Concept ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - (*) Note that the real score may have changed since the PR was raised. 
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <details> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <summary><b>Commit messages</b></summary> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - </br> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <details> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <summary>Package name: <b>stylelint</b></summary> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - The new version differs by 90 commits.</br> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <ul> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/4f49f93297461d0f60f5b958a591dd145710c848">4f49f93</a>
    15.0.0</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/f6e48bcda6e89c51810165e082532ccd119ae848">f6e48bc</a>
    Prepare changelog</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/7e3d5f5192d0aaa87bbd5963a3c517e8c2204b7d">7e3d5f5</a>
    Add link to migration guide</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/c82b5601a69f3970de9fa2ac969f401b9cbe1729">c82b560</a>
    Prepare release 15.0.0 (#6555)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/aa0e5dbf8b956e8f310000538be4f9e4c8f567c5">aa0e5db</a>
    Refactor to remove needless code about &#x60;v15&#x60; branch (#6621)</li> 
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/6db4908c7c248e0bf458f61fb164ce0babf7cd9e">6db4908</a>
    Merge pull request #6618 from stylelint/v15</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/bf9f2228bb5c936446cfcbc20e26c1cef8d3cebb">bf9f222</a>
    Refactor &#x60;declaration-property-value-no-unknown&#x60; to reuse parsed 
    CSSTree node (#6616)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/a479b038ae2060408ad0bd39c9bf3000ce4f7268">a479b03</a>
    Prepare docs for website (#6612)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/392c6cd1baccd8d1c2dc955a7a93258f79012c89">392c6cd</a>
    Add declaration-property-value-no-unknown (#6511)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/450757b1c442f67e31e35b405256a2e9ab30d488">450757b</a>
    Bump typescript from 4.9.4 to 4.9.5 (#6614)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/b3af7d2bb8cce81bb7e51e81d980274bb4d14643">b3af7d2</a>
    Add &#x60;ignore: [&quot;custom-elements&quot;]&#x60; to 
    &#x60;selector-max-type&#x60; (#6588)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/731a4c43c65e38194f82d3921c724fa648d40b52">731a4c4</a>
    Fix &#x60;keyframe-selector-notation&#x60; false positives for named 
    timeline range (#6605)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/3358401d2a57d17c07b18e683339b0dc673f8a80">3358401</a>
    Fix &#x60;selector-not-notation&#x60; autofix for &quot;simple&quot; option 
    (#6608)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/e8654fdb01b92773d753615b93749bca6c2e184a">e8654fd</a>
    Bump http-cache-semantics from 4.1.0 to 4.1.1 (#6609)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/673dc468bb1e8e491ba6cf0cc9ec0acc31f44d2b">673dc46</a>
    Merge branch &#x27;main&#x27; into v15</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/3234fcf99e9b843aa1728ab96f87e9cd56997ac9">3234fcf</a>
    Bump @ csstools/css-tokenizer from 2.0.0 to 2.0.1 (#6602)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/101c437475bac8012587f1be94d0e04861fc545b">101c437</a>
    Bump @ csstools/css-parser-algorithms from 2.0.0 to 2.0.1 (#6601)</li> 
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/a6e6702de6420a78098e22c5f7b9dc3a89d5f1ad">a6e6702</a>
    Bump jest from 29.3.1 to 29.4.1 (#6603)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/35bae125ba51a7d94075f0e0ae4ba4499237fae5">35bae12</a>
    Bump deepmerge from 4.2.2 to 4.3.0 (#6598)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/0de0c6162baa627cd456ec7d1bed69d4363ea078">0de0c61</a>
    Bump @ csstools/selector-specificity from 2.1.0 to 2.1.1 (#6600)</li> 
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/a7c0e9fb8e3f9171ba0f092438f09bc1cf4c212f">a7c0e9f</a>
    Bump jest-watch-typeahead from 2.2.1 to 2.2.2 (#6599)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/7300302190ddf807ca3758f09fee9ac245068fa0">7300302</a>
    Bump eslint from 8.32.0 to 8.33.0 (#6597)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/ecbed06ebaa4696cdc5e3b36c0a64125d660174f">ecbed06</a>
    Bump @ csstools/media-query-list-parser from 2.0.0 to 2.0.1 (#6596)</li> 
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/f8988a10455be84b27c300631c902e289cfc730c">f8988a1</a>
    Add &#x60;ignoreFunctions: []&#x60; to &#x60;unit-disallowed-list&#x60; 
    (#6592)</li> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - </ul> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - <a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/compare/f1146c13b774d94325a3363e724f9f06ebb3b213...4f49f93297461d0f60f5b958a591dd145710c848">See
    the full diff</a> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - </details> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - </details> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - Check the changes in this PR to ensure they won't cause issues with your 
    project. ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - Note:** *You are seeing this because you or someone else with access to 
    this repository has authorized Snyk to open fix PRs.* ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - For more information: <img 
    src="https://api.segment.io/v1/pixel/track?data=eyJ3cml0ZUtleSI6InJyWmxZcEdHY2RyTHZsb0lYd0dUcVg4WkFRTnNCOUEwIiwiYW5vbnltb3VzSWQiOiI1MjQ5YTNhNC0zNTkwLTQ1YTItYjQzMy1mNWZkZDc0NTdiNDYiLCJldmVudCI6IlBSIHZpZXdlZCIsInByb3BlcnRpZXMiOnsicHJJZCI6IjUyNDlhM2E0LTM1OTAtNDVhMi1iNDMzLWY1ZmRkNzQ1N2I0NiJ9fQ=="
    width="0" height="0"/> ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - 🧐 [View latest project 
    report](https://app.snyk.io/org/plan-x/project/7954ccc1-e68c-4e7a-bc1e-3aa858736f91?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr)
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - 🛠 [Adjust project 
    settings](https://app.snyk.io/org/plan-x/project/7954ccc1-e68c-4e7a-bc1e-3aa858736f91?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr/settings)
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - 📚 [Read more about Snyk's upgrade and patch 
    logic](https://support.snyk.io/hc/en-us/articles/360003891078-Snyk-patches-to-fix-vulnerabilities)
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - [//]: # 
    (snyk:metadata:{"prId":"5249a3a4-3590-45a2-b433-f5fdd7457b46","prPublicId":"5249a3a4-3590-45a2-b433-f5fdd7457b46","dependencies":[{"name":"stylelint","from":"14.16.1","to":"15.0.0"}],"packageManager":"npm","projectPublicId":"7954ccc1-e68c-4e7a-bc1e-3aa858736f91","projectUrl":"https://app.snyk.io/org/plan-x/project/7954ccc1-e68c-4e7a-bc1e-3aa858736f91?utm_source=github&utm_medium=referral&page=fix-pr","type":"auto","patch":[],"vulns":["SNYK-JS-YAML-5458867"],"upgrade":["SNYK-JS-YAML-5458867"],"isBreakingChange":true,"env":"prod","prType":"fix","templateVariants":["updated-fix-title","priorityScore"],"priorityScoreList":[768],"remediationStrategy":"vuln"})
    ([#1285](https://github.com/uc-cdis/data-portal/pull/1285))
  - Learn how to fix vulnerabilities with free interactive lessons:** ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - 🦉 [Learn about vulnerability in an interactive lesson of Snyk 
    Learn.](https://learn.snyk.io/?loc&#x3D;fix-pr) ([#1285](https://github.com/uc-cdis/data-portal/pull/1285)) 
  - Severity | Issue | Breaking Change | Exploit Maturity ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - :-------------------------:|:-------------------------|:-------------------------|:-------------------------
    ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - ![high 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/h.png
    "high severity") | Uncaught Exception 
    <br/>[SNYK-JS-YAML-5458867](https://snyk.io/vuln/SNYK-JS-YAML-5458867) | 
    Yes | Proof of Concept ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <details> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <summary><b>Commit messages</b></summary> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - </br> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <details> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <summary>Package name: <b>stylelint</b></summary> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - The new version differs by 90 commits.</br> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <ul> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/4f49f93297461d0f60f5b958a591dd145710c848">4f49f93</a>
    15.0.0</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/f6e48bcda6e89c51810165e082532ccd119ae848">f6e48bc</a>
    Prepare changelog</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/7e3d5f5192d0aaa87bbd5963a3c517e8c2204b7d">7e3d5f5</a>
    Add link to migration guide</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/c82b5601a69f3970de9fa2ac969f401b9cbe1729">c82b560</a>
    Prepare release 15.0.0 (#6555)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/aa0e5dbf8b956e8f310000538be4f9e4c8f567c5">aa0e5db</a>
    Refactor to remove needless code about &#x60;v15&#x60; branch (#6621)</li> 
    ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/6db4908c7c248e0bf458f61fb164ce0babf7cd9e">6db4908</a>
    Merge pull request #6618 from stylelint/v15</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/bf9f2228bb5c936446cfcbc20e26c1cef8d3cebb">bf9f222</a>
    Refactor &#x60;declaration-property-value-no-unknown&#x60; to reuse parsed 
    CSSTree node (#6616)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/a479b038ae2060408ad0bd39c9bf3000ce4f7268">a479b03</a>
    Prepare docs for website (#6612)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/392c6cd1baccd8d1c2dc955a7a93258f79012c89">392c6cd</a>
    Add declaration-property-value-no-unknown (#6511)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/450757b1c442f67e31e35b405256a2e9ab30d488">450757b</a>
    Bump typescript from 4.9.4 to 4.9.5 (#6614)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/b3af7d2bb8cce81bb7e51e81d980274bb4d14643">b3af7d2</a>
    Add &#x60;ignore: [&quot;custom-elements&quot;]&#x60; to 
    &#x60;selector-max-type&#x60; (#6588)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/731a4c43c65e38194f82d3921c724fa648d40b52">731a4c4</a>
    Fix &#x60;keyframe-selector-notation&#x60; false positives for named 
    timeline range (#6605)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/3358401d2a57d17c07b18e683339b0dc673f8a80">3358401</a>
    Fix &#x60;selector-not-notation&#x60; autofix for &quot;simple&quot; option 
    (#6608)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/e8654fdb01b92773d753615b93749bca6c2e184a">e8654fd</a>
    Bump http-cache-semantics from 4.1.0 to 4.1.1 (#6609)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/673dc468bb1e8e491ba6cf0cc9ec0acc31f44d2b">673dc46</a>
    Merge branch &#x27;main&#x27; into v15</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/3234fcf99e9b843aa1728ab96f87e9cd56997ac9">3234fcf</a>
    Bump @ csstools/css-tokenizer from 2.0.0 to 2.0.1 (#6602)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/101c437475bac8012587f1be94d0e04861fc545b">101c437</a>
    Bump @ csstools/css-parser-algorithms from 2.0.0 to 2.0.1 (#6601)</li> 
    ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/a6e6702de6420a78098e22c5f7b9dc3a89d5f1ad">a6e6702</a>
    Bump jest from 29.3.1 to 29.4.1 (#6603)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/35bae125ba51a7d94075f0e0ae4ba4499237fae5">35bae12</a>
    Bump deepmerge from 4.2.2 to 4.3.0 (#6598)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/0de0c6162baa627cd456ec7d1bed69d4363ea078">0de0c61</a>
    Bump @ csstools/selector-specificity from 2.1.0 to 2.1.1 (#6600)</li> 
    ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/a7c0e9fb8e3f9171ba0f092438f09bc1cf4c212f">a7c0e9f</a>
    Bump jest-watch-typeahead from 2.2.1 to 2.2.2 (#6599)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/7300302190ddf807ca3758f09fee9ac245068fa0">7300302</a>
    Bump eslint from 8.32.0 to 8.33.0 (#6597)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/ecbed06ebaa4696cdc5e3b36c0a64125d660174f">ecbed06</a>
    Bump @ csstools/media-query-list-parser from 2.0.0 to 2.0.1 (#6596)</li> 
    ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <li><a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/commit/f8988a10455be84b27c300631c902e289cfc730c">f8988a1</a>
    Add &#x60;ignoreFunctions: []&#x60; to &#x60;unit-disallowed-list&#x60; 
    (#6592)</li> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - </ul> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - <a 
    href="https://snyk.io/redirect/github/stylelint/stylelint/compare/f1146c13b774d94325a3363e724f9f06ebb3b213...4f49f93297461d0f60f5b958a591dd145710c848">See
    the full diff</a> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - </details> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - </details> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - Check the changes in this PR to ensure they won't cause issues with your 
    project. ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - Note:** *You are seeing this because you or someone else with access to 
    this repository has authorized Snyk to open fix PRs.* ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - For more information: <img 
    src="https://api.segment.io/v1/pixel/track?data=eyJ3cml0ZUtleSI6InJyWmxZcEdHY2RyTHZsb0lYd0dUcVg4WkFRTnNCOUEwIiwiYW5vbnltb3VzSWQiOiI1NGFjZTc0OC1hMTEyLTQ2ZjMtYjQwZi0yZmYxNTRhZTg3ZTEiLCJldmVudCI6IlBSIHZpZXdlZCIsInByb3BlcnRpZXMiOnsicHJJZCI6IjU0YWNlNzQ4LWExMTItNDZmMy1iNDBmLTJmZjE1NGFlODdlMSJ9fQ=="
    width="0" height="0"/> ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - 🧐 [View latest project 
    report](https://app.snyk.io/org/plan-x/project/11af69b5-7fc0-47dc-913c-6e449adf094c?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr)
    ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - 🛠 [Adjust project 
    settings](https://app.snyk.io/org/plan-x/project/11af69b5-7fc0-47dc-913c-6e449adf094c?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;page&#x3D;fix-pr/settings)
    ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - 📚 [Read more about Snyk's upgrade and patch 
    logic](https://support.snyk.io/hc/en-us/articles/360003891078-Snyk-patches-to-fix-vulnerabilities)
    ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - [//]: # 
    (snyk:metadata:{"prId":"54ace748-a112-46f3-b40f-2ff154ae87e1","prPublicId":"54ace748-a112-46f3-b40f-2ff154ae87e1","dependencies":[{"name":"stylelint","from":"14.16.1","to":"15.0.0"}],"packageManager":"npm","projectPublicId":"11af69b5-7fc0-47dc-913c-6e449adf094c","projectUrl":"https://app.snyk.io/org/plan-x/project/11af69b5-7fc0-47dc-913c-6e449adf094c?utm_source=github&utm_medium=referral&page=fix-pr","type":"auto","patch":[],"vulns":["SNYK-JS-YAML-5458867"],"upgrade":["SNYK-JS-YAML-5458867"],"isBreakingChange":true,"env":"prod","prType":"fix","templateVariants":["updated-fix-title"],"priorityScoreList":[null],"remediationStrategy":"vuln"})
    ([#1287](https://github.com/uc-cdis/data-portal/pull/1287))
  - Learn how to fix vulnerabilities with free interactive lessons:** ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 
  - 🦉 [Learn about vulnerability in an interactive lesson of Snyk 
    Learn.](https://learn.snyk.io/?loc&#x3D;fix-pr) ([#1287](https://github.com/uc-cdis/data-portal/pull/1287)) 

#### ## Workspace Registration Submission
  - <img width="906" alt="image" 
    src="https://user-images.githubusercontent.com/113449836/231850475-ad7171e6-d52b-4fa8-9183-e513e11f6b86.png">
    ([#1262](https://github.com/uc-cdis/data-portal/pull/1262))
  - ![image](https://user-images.githubusercontent.com/113449836/231848066-766013be-f5bf-477d-b87d-d76df6ada6d0.png)
    ([#1262](https://github.com/uc-cdis/data-portal/pull/1262))

#### ## Study Registration Access Request
  - <img width="748" alt="image" 
    src="https://user-images.githubusercontent.com/113449836/231850193-e43f5ce7-147d-4356-ac13-79da1d3803f0.png">
    ([#1262](https://github.com/uc-cdis/data-portal/pull/1262))
  - ![image](https://user-images.githubusercontent.com/113449836/231848145-e08122f1-9d39-4abb-9f27-dc75618b61e0.png)
    ([#1262](https://github.com/uc-cdis/data-portal/pull/1262))

#### ## Data Dictionary Submission Request
  - <img width="748" alt="image" 
    src="https://user-images.githubusercontent.com/113449836/231849848-f6bbebf1-f6cc-4321-a89b-8bcdd0dbe562.png">
    ([#1262](https://github.com/uc-cdis/data-portal/pull/1262))
  - ![image](https://user-images.githubusercontent.com/113449836/231848214-076d89e1-dd21-43a5-8f09-fd06e4b1afbf.png)
    ([#1262](https://github.com/uc-cdis/data-portal/pull/1262))

#### Notes
  - Test URLS: ([#1262](https://github.com/uc-cdis/data-portal/pull/1262))
  - https://preprod.healdata.org/portal/dev.html/data-dictionary-submission/request-access
    ([#1262](https://github.com/uc-cdis/data-portal/pull/1262))
  - https://preprod.healdata.org/portal/dev.html/workspace/register ([#1262](https://github.com/uc-cdis/data-portal/pull/1262)) 
  - https://preprod.healdata.org/portal/dev.html/study-reg/request-access 
    ([#1262](https://github.com/uc-cdis/data-portal/pull/1262))

#### Implementation
  - <img width="1383" alt="image" 
    src="https://user-images.githubusercontent.com/113449836/233731938-3145921e-0f49-43d2-96da-4f1176654235.png">
    ([#1280](https://github.com/uc-cdis/data-portal/pull/1280))

## uc-cdis/tube

#### New Features
  - Add more tests for get_leaves ([#230](https://github.com/uc-cdis/tube/pull/230)) 

## uc-cdis/workspace-token-service

#### Bug Fixes
  - Manually release unneeded db session to free up connection pool to prevent 
    crashes ([#57](https://github.com/uc-cdis/workspace-token-service/pull/57))

## uc-cdis/metadata-service

#### Improvements
  - Log detailed authentication errors from authutils ([#93](https://github.com/uc-cdis/metadata-service/pull/93)) 
  - Set `USE_AGG_MDS` in the tests so that all tests pass locally out of the 
    box ([#87](https://github.com/uc-cdis/metadata-service/pull/87))
  - The `objects` module checks the validity of `authz` values by validating 
    both the `version` and the `resource_paths` ([#87](https://github.com/uc-cdis/metadata-service/pull/87)) 

## uc-cdis/cloud-automation

#### New Features
  - Added spot instance feed ([#2231](https://github.com/uc-cdis/cloud-automation/pull/2231)) 
  - Adding biosystics to whitelist to download external data in workspaces 
    ([#2227](https://github.com/uc-cdis/cloud-automation/pull/2227))

#### Bug Fixes
  - GPE-947 - Updated s3 buckets to remove deprecated ACL's ([#2236](https://github.com/uc-cdis/cloud-automation/pull/2236)) 
  - Added containerd support for ECR commands ([#2246](https://github.com/uc-cdis/cloud-automation/pull/2246)) 

#### Improvements
  - Updated kubecost to use more simplified standard deployment ([#2231](https://github.com/uc-cdis/cloud-automation/pull/2231)) 
  - add header to portal to prevent clickjacking ([#2229](https://github.com/uc-cdis/cloud-automation/pull/2229)) 

#### Dependency Updates
  - update Apache Superset to 2.1.0 and Helm chart for Apache Superset to 0.9.2 
    ([#2224](https://github.com/uc-cdis/cloud-automation/pull/2224))

#### Deployment Changes
  - Whitelist *.gen3.org (for helm and docs) ([#2241](https://github.com/uc-cdis/cloud-automation/pull/2241)) 

## uc-cdis/audit-service

#### Improvements
  - Log detailed authentication errors from authutils ([#30](https://github.com/uc-cdis/audit-service/pull/30)) 

## uc-cdis/requestor

#### Improvements
  - Log detailed authentication errors from authutils ([#56](https://github.com/uc-cdis/requestor/pull/56)) 

