# Core Gen3 Release (Topaz)

## uc-cdis/cdis-data-client

#### Improvements
  - Add integration tests to CI checks ([#121](https://github.com/uc-cdis/cdis-data-client/pull/121)) 

## uc-cdis/cloud-automation

#### New Features
  - Updating filters to pull in research program to `advSearchFilters` ([#2354](https://github.com/uc-cdis/cloud-automation/pull/2354)) 
  - backup or restore gen3 databases to/from S3 bucket. Usage: gen3 dbbackup 
    [dump|restore] ([#2334](https://github.com/uc-cdis/cloud-automation/pull/2334)) 

#### Breaking Changes
  - Requires argocd 2.6.1+ so run `gen3 kube-setup-argocd` first, or manually 
    upgrade argocd to newest verison. ([#2269](https://github.com/uc-cdis/cloud-automation/pull/2269)) 

#### Bug Fixes
  - Adding changes related to preventing Argo workflows from getting stuck due 
    to Karpenter not being available. ([#2342](https://github.com/uc-cdis/cloud-automation/pull/2342)) 
  - The fixes include: ([#2342](https://github.com/uc-cdis/cloud-automation/pull/2342)) 
  - raising the limits and the requests for karpenter pods to 2Gi, 2 cores 
    ([#2342](https://github.com/uc-cdis/cloud-automation/pull/2342))
  - Adding a backOffLimit of 20 to the jobs created by Argo Events in response 
    to a workflow being launched. ([#2342](https://github.com/uc-cdis/cloud-automation/pull/2342)) 
  - Adding a restartPolicy of OnFailure to the jobs ([#2342](https://github.com/uc-cdis/cloud-automation/pull/2342)) 
  - Updated kube-roll-all to not deploy cohort middleware twice and swapped 
    order to fix dependency issues ([#2333](https://github.com/uc-cdis/cloud-automation/pull/2333)) 
  - Updated kube-setup-wts to include new field ([#2318](https://github.com/uc-cdis/cloud-automation/pull/2318)) 

#### Improvements
  - Reverting kubelet config change ([#2323](https://github.com/uc-cdis/cloud-automation/pull/2323)) 
  - add registryPullQPS=0 to kubelet config for workflow nodes ([#2316](https://github.com/uc-cdis/cloud-automation/pull/2316)) 
  - Increase argo workflow parallelism to 5 ([#2321](https://github.com/uc-cdis/cloud-automation/pull/2321)) 
  - increase Argo resources for the memory ([#2320](https://github.com/uc-cdis/cloud-automation/pull/2320)) 

#### Dependency Updates
  - Updated metadata for fenceshib ([#2185](https://github.com/uc-cdis/cloud-automation/pull/2185)) 

## uc-cdis/data-portal

#### New Features
  - add global banner to portal ([#1398](https://github.com/uc-cdis/data-portal/pull/1398)) 
  - Adds new "Caution" dismissible message to GWASApp, updates Warning message 
    design ([#1393](https://github.com/uc-cdis/data-portal/pull/1393))
  - Shows new Caution dismissible message in GWASApp in step prior to 
    submission after Hare selection if hare population is less than 1000 
    ([#1393](https://github.com/uc-cdis/data-portal/pull/1393))
  - Adds dismissible messages to Results, adds logic to display Caution message 
    when hare population is less than 1000 ([#1393](https://github.com/uc-cdis/data-portal/pull/1393)) 
  - Updates storybook for new message types and includes a unit test for 
    ResultsApp version of Dismissible message component. ([#1393](https://github.com/uc-cdis/data-portal/pull/1393)) 
  - Changed error log display in Execution of GWASResults app ([#1393](https://github.com/uc-cdis/data-portal/pull/1393)) 
  - Changed storybook file and test file of Execution ([#1393](https://github.com/uc-cdis/data-portal/pull/1393)) 
  - Add detailed workspace launch statuses ([#1383](https://github.com/uc-cdis/data-portal/pull/1383)) 

#### Bug Fixes
  - This resolves a a redirect issue that occurs the following situation: 
    ([#1356](https://github.com/uc-cdis/data-portal/pull/1356))
  - ###### You can reproduce this bug via the following steps ([#1356](https://github.com/uc-cdis/data-portal/pull/1356)) 
  - In HEAL envs (QA/preprod/prod) the first time a user is not already logged 
    in ([#1356](https://github.com/uc-cdis/data-portal/pull/1356))
  - Go to the workspace page at /portal/workspace ([#1356](https://github.com/uc-cdis/data-portal/pull/1356)) 
  - Portal will redirect you to login page, login with a user that has access 
    to workspaces in these envs ([#1356](https://github.com/uc-cdis/data-portal/pull/1356)) 
  - Portal should redirect you back to /portal/workspace , but instead, it is 
    redirecting you to /portal/portal/workspace ([#1356](https://github.com/uc-cdis/data-portal/pull/1356)) 
  - study viewer check for data before running parse replace ([#1387](https://github.com/uc-cdis/data-portal/pull/1387)) 

#### Improvements
  - Fix the discovery page pop-up text to add spaces where needed ([#1396](https://github.com/uc-cdis/data-portal/pull/1396)) 
  - remove unneeded dependencies ([#1391](https://github.com/uc-cdis/data-portal/pull/1391)) 
  - move dev dependencies to dev ([#1391](https://github.com/uc-cdis/data-portal/pull/1391)) 

#### Bugfixes
  - Resolves issue where server response for a hareResult concept_breakdown is 
    null in the SelectHareDropDown.jsx. This can occur when the user selects a 
    case cohort size or control cohort size with a value of zero. ([#1393](https://github.com/uc-cdis/data-portal/pull/1393)) 

#### Dependency Updates
  - removed ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - @emotion/react ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - react-is ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - redux-devtools ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - @babel/core ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - echarts ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - @babel/preset-stage-0 ([#1391](https://github.com/uc-cdis/data-portal/pull/1391)) 
  - @types/jest ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - babel-plugin-syntax-jsx ([#1391](https://github.com/uc-cdis/data-portal/pull/1391)) 
  - estraverse ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - file-loader ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - postcss ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - prettier ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - relay-compiler-webpack-plugin ([#1391](https://github.com/uc-cdis/data-portal/pull/1391)) 
  - moved to dev ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - mock-local-storage ([#1391](https://github.com/uc-cdis/data-portal/pull/1391)) 
  - @storybook/addon-actions ([#1391](https://github.com/uc-cdis/data-portal/pull/1391)) 
  - @storybook/react ([#1391](https://github.com/uc-cdis/data-portal/pull/1391))
  - @types/redux-mock-store ([#1391](https://github.com/uc-cdis/data-portal/pull/1391)) 

## uc-cdis/fence

#### New Features
  - Enables support for identifying when users have authenticated with MFA. 
    ([#1106](https://github.com/uc-cdis/fence/pull/1106))

#### Deployment Changes
  - Deployment changes to enable this feature for commons are described here 
    https://github.com/uc-cdis/fence/blob/e36f6574ade17bb8c9c0c9df8801f9a59de423b1/docs/fence_multifactor_authentication_guide.md
    ([#1106](https://github.com/uc-cdis/fence/pull/1106))

## uc-cdis/hatchery

#### New Features
  - Add new status field to return workspace type ([#72](https://github.com/uc-cdis/hatchery/pull/72)) 

## uc-cdis/pelican

#### Bug Fixes
  - fix out of date docker files ([#71](https://github.com/uc-cdis/pelican/pull/71)) 

## uc-cdis/sheepdog

#### Dependency Updates
  - remove cryptography, update requests & urllib3, fix other packages to 
    ensure successful dependency resolution ([#399](https://github.com/uc-cdis/sheepdog/pull/399)) 
