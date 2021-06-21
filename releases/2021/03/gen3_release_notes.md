# Core Gen3 Release 202103 (North Center)

## uc-cdis/fence

#### Bug Fixes
  - Fixed usersync not working due to async components of newer version of 
    gen3authz. (#862)
  - Fixed some tests not working with newer version of gen3authz. (#862)

#### Improvements
  - make sure to set httponly on all cookies (#872)

#### Dependency Updates
  - Updated `authutils=^5.0.5` (#862)
  - Updated `cdispyutils=^1.0.5` (#862)
  - Updated `gen3authz=^1.0.4` (#862)

## uc-cdis/guppy

#### Dependency Update
  - Update @gen3/ui-component dependency to version 0.6.5 (#109)

#### Bug Fixes
  - Make `format` to be optional in query strings issued by Guppy for backward 
    compatibility (#108)

#### New Features
  - Implemented new query argument "**format**" for Guppy to support TSV and 
    CSV downloads from Explorer. (#106)

#### Dependency Updates
  - Added Papaparse for conversion service (#106)

## uc-cdis/hatchery

#### Improvements
  - Add vim to the image and add a debug log for "more-configs" (#7)

## uc-cdis/indexd

#### Bug Fixes
  - all url query parameters sent to the DRS signed url endpoint now propagate 
    to the corresponding Fence request (instead of stripping off all query 
    params) (#303)

#### New Features
  - Show first layer of bundles when expand=false (#302)

#### Dependency Updates
  - indexd now uses poetry (#300)

## uc-cdis/pidgin

#### # Changes Included In This Pr
  - Changes to the following files to upgrade the vulnerable dependencies to a 
    fixed version: (#37)
  - dev-requirements.txt (#37)

#### ## By Pinning:
  - Severity | Priority Score (*) | Issue | Upgrade | Breaking Change | Exploit 
    Maturity (#37)
  - :-------------------------:|-------------------------|:-------------------------|:-------------------------|:-------------------------|:
    (#37)
  - ![high 
    severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/h.png
    "high severity") | **876/1000** <br/> **Why?** Mature exploit, Has a fix 
    available, CVSS 9.8 | Arbitrary Code Execution 
    <br/>[SNYK-PYTHON-PYYAML-590151](https://snyk.io/vuln/SNYK-PYTHON-PYYAML-590151)
    | `PyYAML:` <br> `5.2 -> 5.4` <br> `pyyaml:` <br> `5.2 -> 5.4` <br> | No | 
    Mature (#37)
  - (*) Note that the real score may have changed since the PR was raised. (#37)
  - Some vulnerabilities couldn't be fully fixed and so Snyk will still find 
    them when the project is tested again. This may be because the 
    vulnerability existed within more than one direct dependency, but not all 
    of the effected dependencies could be upgraded. (#37)
  - Check the changes in this PR to ensure they won't cause issues with your 
    project. (#37)
  - Note:** *You are seeing this because you or someone else with access to 
    this repository has authorized Snyk to open fix PRs. (#37)
  - For more information: <img 
    src="https://api.segment.io/v1/pixel/track?data=eyJ3cml0ZUtleSI6InJyWmxZcEdHY2RyTHZsb0lYd0dUcVg4WkFRTnNCOUEwIiwiYW5vbnltb3VzSWQiOiI5ODhhMzRhZi0wOGYwLTRlODYtYWQ1OC04YzBjZjZmNzYwNGIiLCJldmVudCI6IlBSIHZpZXdlZCIsInByb3BlcnRpZXMiOnsicHJJZCI6Ijk4OGEzNGFmLTA4ZjAtNGU4Ni1hZDU4LThjMGNmNmY3NjA0YiJ9fQ=="
    width="0" height="0"/> (#37)
  - ðŸ§ [View latest project 
    report](https://app.snyk.io/org/plan-x/project/feef15da-a000-4bd0-ace8-bfafc5a87dcb)
    (#37)
  - ðŸ›  [Adjust project 
    settings](https://app.snyk.io/org/plan-x/project/feef15da-a000-4bd0-ace8-bfafc5a87dcb/settings)
    (#37)
  - ðŸ“š [Read more about Snyk's upgrade and patch 
    logic](https://support.snyk.io/hc/en-us/articles/360003891078-Snyk-patches-to-fix-vulnerabilities)
    (#37)
  - [//]: # 
    (snyk:metadata:{"prId":"988a34af-08f0-4e86-ad58-8c0cf6f7604b","dependencies":[{"name":"PyYAML","from":"5.2","to":"5.4"},{"name":"pyyaml","from":"5.2","to":"5.4"}],"packageManager":"pip","projectPublicId":"feef15da-a000-4bd0-ace8-bfafc5a87dcb","projectUrl":"https://app.snyk.io/org/plan-x/project/feef15da-a000-4bd0-ace8-bfafc5a87dcb?utm_source=github&utm_medium=fix-pr","type":"auto","patch":[],"vulns":["SNYK-PYTHON-PYYAML-590151"],"upgrade":[],"isBreakingChange":false,"env":"prod","prType":"fix","templateVariants":["priorityScore"],"priorityScoreList":[876]})
    (#37)

## uc-cdis/data-portal

#### Improvements
  - Make workspace iframe acquire focus on ready to prevent keyboard issue 
    (#799)
  - Change maps to take up 100% height instead of calculating based on 
    window.innerHeight (#798)
  - Removed unneeded related code (#798)
  - Changed css from grid to flexbox for better flexibility in the layout, 
    constrained main maps width to only show globe once (#798)
  - Add pop confirm to "Terminate Workspace" button (#797)
  - [PXP-7560]: https://ctds-planx.atlassian.net/browse/PXP-7560 (#797)
  - Import bold font for Roboto and Martel explicitly (#789)
  - Add new chart type support `fullPie`, which will be rendered as a full pie 
    chart (#784)

#### New Features
  - space x axis dynamically based on how many items are in the data set (#796)
  - added toggle to show hide empty columns in tables (#793)
  - The new VA GWAS app is implemented (#777)
  - VA GWAS app now talks to workspace storage service for handling files (#777)
  - VA GWAS app now talks to mariner for submitting new GWAS jobs (#777)
  - VA GWAS app now has a progress tracking component to visualize mariner job 
    status and display logs (#777)
  - Add auspice tab for Illinois (#786)
  - When clicking on a country, state or county on the PRC homepage updated 
    main graph to have second y axis for deaths (#787)
  - Added support for TSV and CSV downloads from Explorer. (#780)

#### Chore
  - Running lint on code base, adding changes that were missed when i failed to 
    lint my code on a previous change (#795)

#### Deployment Changes
  - Added new entry `GWASApp` for `analysisTools` for this new GWAS app for VA. 
    Beaware not to confuse with the old "GWAS PoC" app, which bears the entry 
    `vaGWAS` (#777)
  - `antd modal` now by default will use `g3-color__base-blue` as header 
    background color, this is consistant with our color schemes for other UI 
    components. If an env has customized color scheme, please override 
    `.ant-modal-header` in `gitops.css` (#777)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#786)
  - The new feature of Portal **_requires_** Guppy v0.10.0 (#780)
  - Added new button types in the Portal config. See `portal_config.md` for an 
    example. (#780)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#780)

#### Bug Fixes
  - remove word-break css should not be needed (#792)
  - Make `format` to be optional in query strings issued by Guppy for backward 
    compatibility (#790)
  - fix PRC maps showing NaN when data is not a number (#788)

#### Dependency Updates
  - Guppy to 0.10.1 (#790)
  - Gen3-ui-component: up to 0.6.4 (#784)

## uc-cdis/tube

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#140)

## uc-cdis/gen3-fuse

#### Improvements
  - Sleep and retry for WTS every 15s, exit as failed after 5 mins (#33)

## uc-cdis/mariner

#### New Features
  - Update Mariner codebase to use go modules (#44)
  - Pin dependencies (#44)
  - Remove `vendor/` folder (#44)
  - Update Docker to `1.15-buster` (#44)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#44)

## uc-cdis/cloud-automation

#### New Features
  - Upgrading to K8's version 1.16 (#1512)
  - Add mdq.incommon.org, the new InCommon metadata service url, to squid 
    whitelist (#1508)

#### Bug Fixes
  - update access-backend deployment to use k8s 1.16 apiversion (#1525)

#### Improvements
  - Add timeout for ELB as well as hatchery and ambassador endpoints to prevent 
    the noVNC firefox lost connection with client every minutes (#1521)
  - no more Reuben (#1520)
  - helper for collecting some hatchery metrics from prometheus (#1518)
  - batch job for slack'ing hatchery use metrics - ex: `gen3 job cron 
    hatchery-metrics @daily` (#1518)
  - turn prometheus retention down to 5 days (#1518)
  - fix for vpn `user_status.sh` script (#1518)
  - rm busted terraform aws_vpc_endpoint_service data query (#1518)
  - squid github-releases.githubusercontent (#1515)
  - fix bug in kube-setup-fluentd (#1510)
  - `gen3 api api-key username` - generate an api-key for service accounts 
    (#1506)
  - prometheus - bigger disk, lower retention (#1506)
  - cognito - to terraform 12 (#1506)
  - Enabling Nginx and USGI metrics for Indexd. (#1494)
  - utilityvm to terraform 12 (#1500)
  - authorized_keys rm diw, add fasi (#1500)
  - gen3_aws_run 40 minute session minimum (#1500)
  - revproxy ttyadmin arborist guard for tty admin access (#1500)

#### Deployment Changes
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#1525)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#1515)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#1512)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#1508)
  - <!-- This section should only contain important things devops should know 
    when updating service versions. --> (#1500)
