# Core Gen3 Release 202002 (Aurora)

## uc-cdis/fence

#### New Features
  - Added `google_primary_service_account` email to userinfo endpoint (to 
    support Google requester pays buckets, need to know email of service 
    account that signed the url) (#751)

#### Bug Fixes
  - Fix user.yaml authz information overriding other authz information (#750)
  - Do not allow specifying descriptions for groups (#743)

#### Improvements
  - Properly revoke access given to users in a group when the group is deleted 
    (#743)

#### Dependency Updates
  - gen3authz to 0.3.0 (#743)

## uc-cdis/indexd

#### Improvements
  - Improve messages in Authz errors (#257)

## uc-cdis/pelican

#### Bug Fixes
  - Fixes the order from pure dfs to topological (#23)

## uc-cdis/peregrine

#### New Features
  - Python 3  🎉 (#154)

#### Breaking Changes
  - Python 3 Support (not expected to be backwards compatible) (#154)

#### Dependency Updates
  - bumped dependencies to python3 compatible versions (#154)
  - also bumped `Jinja2` and `urllib3` for security compliance (#154)

#### Bug Fixes
  - Fix creation date and update date filters (#155)

## uc-cdis/data-portal

#### New Features
  - Added DICOM Viewer (OHIF Viewer) icon in workspaces (#634)

#### Improvements
  - Improve manifest button logic to be more fast and clean (#635)

## uc-cdis/sheepdog

#### New Features
  - Updated Dockerfile to use Python3 (#314)
  - ran 2to3 for syntax changes (#314)
  - updated travis to ignore py2.7 failures (#314)

#### Breaking Changes
  - Requires Python 3 (#314)
  - Updates Sheepdog to use new Indexd aliases endpoint rather than deprecated 
    aliases endpoint (uc-cdis/indexd#248) (#314)

#### Dependency Updates
  - bumped indexd to 2.3.0 (#314)
  - updated indexclient to 2.0.0 (#314)
  - psqlgraph to 
    [`release/py3`](https://github.com/NCI-GDC/psqlgraph/tree/release/py3) 
    branch to be compatible to python3 (#314)
  - Updated lxml from 3.8.0 -> 4.4.0 (versions <4.0.0 are not compatible with 
    python3) (#314)

#### Deployment Changes
  - Fix Travis coverage reports (combine the results of all 3 tests into one 
    coverage report). (#314)

