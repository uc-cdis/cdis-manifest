# Core Gen3 Release 2023.09

## uc-cdis/peregrine

#### Improvement
  - Since there are some file having file_size larger than the largest possible 
    Int32 type in GraphQL, we need to extend it to use Float. ([#201](https://github.com/uc-cdis/peregrine/pull/201)) 

#### Bug Fixes
  - Fix `/datasets` to correctly return an error when no `nodes` parameter is 
    provided ([#202](https://github.com/uc-cdis/peregrine/pull/202))

## uc-cdis/data-portal

#### New Features
  - Updates to Study Registration / VLMD Submission page to support nested 
    fields ([#1365](https://github.com/uc-cdis/data-portal/pull/1365))
  - update clinicaltrials.gov api to classic endpoint ([#1365](https://github.com/uc-cdis/data-portal/pull/1365)) 

#### Improvements
  - Replace the Dropdown text with `Select a Pay model` when there is no 
    current_pay_model available. ([#1368](https://github.com/uc-cdis/data-portal/pull/1368)) 
  - Prevent `getWorkspacePayModel` from returning null when there is no 
    current_pay_model ([#1368](https://github.com/uc-cdis/data-portal/pull/1368)) 
  - When there is no current_pay_model available ([#1368](https://github.com/uc-cdis/data-portal/pull/1368)) 
  - Disable the `Launch` button ([#1368](https://github.com/uc-cdis/data-portal/pull/1368)) 
  - Add an `Alert message` asking the user to choose a pay model ([#1368](https://github.com/uc-cdis/data-portal/pull/1368)) 

