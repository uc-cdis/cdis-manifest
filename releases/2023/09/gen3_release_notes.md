# Core Gen3 Release 2023.09 (Tanzanite)

## uc-cdis/cloud-automation

#### New Features
  - running cohort-middleware with roll all ([#2302](https://github.com/uc-cdis/cloud-automation/pull/2302))
  - Update Cedar Ingestion script to conform to new HEAL MDS format ([#2268](https://github.com/uc-cdis/cloud-automation/pull/2268))
  - bigger headers size for default python image with nginx ([#2285](https://github.com/uc-cdis/cloud-automation/pull/2285))
  - Orthanc w/ S3 bucket as a storage ([#2276](https://github.com/uc-cdis/cloud-automation/pull/2276))
  - OHIF Viewer v3 ([#2276](https://github.com/uc-cdis/cloud-automation/pull/2276))
  - kube-setup-cohort-middleware script ([#2293](https://github.com/uc-cdis/cloud-automation/pull/2293))

#### Improvements
  - use upstream Docker images, this requires slightly different configuration
    for mounting ConfigMaps ([#2301](https://github.com/uc-cdis/cloud-automation/pull/2301))
  - Read the Stata Gen3 licenses from a kubernetes secret managed by g3auto
    ([#2289](https://github.com/uc-cdis/cloud-automation/pull/2289))
  - Update jupyter pystata repo name ([#2286](https://github.com/uc-cdis/cloud-automation/pull/2286))

## uc-cdis/data-portal

#### Improvements
  - Discovery page update tooltip text ([#1382](https://github.com/uc-cdis/data-portal/pull/1382))
  - Unit test written to validate initialTableSort function. ([#1377](https://github.com/uc-cdis/data-portal/pull/1377))
  - Replace the Dropdown text with `Select a Pay model` when there is no
    current_pay_model available. ([#1368](https://github.com/uc-cdis/data-portal/pull/1368))
  - Prevent `getWorkspacePayModel` from returning null when there is no
    current_pay_model ([#1368](https://github.com/uc-cdis/data-portal/pull/1368))
  - When there is no current_pay_model available ([#1368](https://github.com/uc-cdis/data-portal/pull/1368))
  - Disable the `Launch` button ([#1368](https://github.com/uc-cdis/data-portal/pull/1368))
  - Add an `Alert message` asking the user to choose a pay model ([#1368](https://github.com/uc-cdis/data-portal/pull/1368))

#### Bug Fixes
  - Discovery page: remove empty “Tags by category” component ([#1381](https://github.com/uc-cdis/data-portal/pull/1381))
  - GWAS Results app: Run Duration shows correct duration instead of “Invalid
    date” in Execution view ([#1378](https://github.com/uc-cdis/data-portal/pull/1378))
  - This resolves odd UI behavior that was the result of the incorrectly
    implemented initialTableSort function. ([#1377](https://github.com/uc-cdis/data-portal/pull/1377))

#### New Features
  - study descriptions render html tags for br, strong, table, tr, td, th
    ([#1369](https://github.com/uc-cdis/data-portal/pull/1369))
  - This updates the results App so that back button is hidden when not on home
    view, and shown on the app's home view. ([#1377](https://github.com/uc-cdis/data-portal/pull/1377))
  - New features and some bug fixes for VADC GWAS apps, including multiple
    improvements to the GWAS Results Viewer (see details
    [here](https://github.com/uc-cdis/data-portal/pull/1372#issuecomment-1660269113))
    ([#1372](https://github.com/uc-cdis/data-portal/pull/1372))
  - Updates to Study Registration / VLMD Submission page to support nested
    fields ([#1365](https://github.com/uc-cdis/data-portal/pull/1365))
  - update clinicaltrials.gov api to classic endpoint ([#1365](https://github.com/uc-cdis/data-portal/pull/1365))
  - Disocvery page: study details fields, discovery table fields, aggregation
    fields and search fields now supports using [JSONPath
    syntax](https://github.com/dchester/jsonpath#jsonpath-syntax) to represent
    nested fields in metadata ([#1324](https://github.com/uc-cdis/data-portal/pull/1324))

#### Dependency Updates
  - "@babel/core": "^7.22.9", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@emotion/react": "^11.11.1", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@fortawesome/react-fontawesome": "^0.2.0", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@gen3/guppy": "^0.16.1", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@gen3/ui-component": "^0.11.4", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "clipboard-plus": "^1.1.0", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "core-js": "^3.31.1", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "echarts": "^5.4.3", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "echarts-for-react": "^3.0.2", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "enzyme": "^3.11.0", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "enzyme-adapter-react-16": "^1.15.7", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "js-search": "^2.0.1", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "jszip": "^3.10.1", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "lodash": "^4.17.21", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "mock-local-storage": "^1.1.24", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "prop-types": "^15.8.1", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "react-query": "^3.39.3", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "react-virtualized": "^9.22.5", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "recharts": "^2.7.2", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "redux": "^4.2.1", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "redux-thunk": "^2.4.2", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "regenerator-runtime": "^0.13.11", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "semver": "^7.5.4", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@babel/eslint-parser": "^7.22.9", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@babel/plugin-proposal-object-rest-spread": "^7.20.7", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@babel/plugin-transform-modules-commonjs": "^7.22.5", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@babel/plugin-transform-runtime": "^7.22.9", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@babel/preset-env": "^7.22.9", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@babel/preset-react": "^7.22.5", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@babel/runtime-corejs3": "^7.22.6", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@storybook/cli": "^7.1.1", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@testing-library/jest-dom": "^5.17.0", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@types/core-js": "^2.5.5", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@types/enzyme": "^3.10.13", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@types/react-redux": "^7.1.25", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "@types/regenerator-runtime": "^0.13.1", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "babel-plugin-dev-expression": "^0.2.3", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "eslint-plugin-import": "^2.27.5", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "eslint-plugin-jsx-a11y": "^6.7.1", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "eslint-plugin-react": "~7.33.0", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "eslint-plugin-react-hooks": "^4.6.0", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "eslint-plugin-storybook": "^0.6.13", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "jest-localstorage-mock": "^2.4.26", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "msw-storybook-addon": "^1.8.0", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "postcss": "^8.4.27", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "redux-mock-store": "^1.5.4", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "relay-compiler-webpack-plugin": "^9.1.0", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - "stylelint": "^15.10.2", ([#1366](https://github.com/uc-cdis/data-portal/pull/1366))
  - Added `d3-axis, d3-format, d3-tip` ([#1372](https://github.com/uc-cdis/data-portal/pull/1372))
  - Adds: "jsonpath": "^1.1.1", ([#1324](https://github.com/uc-cdis/data-portal/pull/1324))

## uc-cdis/fence

#### New Features
  - Usersync now supports parent/child study authorizations from dbGaP,
    granting user access to child studies when they're given access to parent
    studies. fence-config.yaml should have its dbGaP config updated to include
    the `parent_to_child_studies_mapping` property to define known parent to
    child relationships in dbGaP. ([#1102](https://github.com/uc-cdis/fence/pull/1102))

#### Dependency Updates
  - temporarily override authlib install with a forked version with a security
    patch ([#1110](https://github.com/uc-cdis/fence/pull/1110))
  - Cryptography minimum version changed to 41.0.2 from 3.5. Support for
    OpenSSL <1.1.1d has been removed, support for LibreSSL <3.6 dropped. See
    https://cryptography.io/en/latest/changelog/#v41-0-0 for more information.
    ([#1102](https://github.com/uc-cdis/fence/pull/1102))

#### Deployment Changes
  - Update fence-config.yaml to include `parent_to_child_studies_mapping` to
    define parent/child relationships within the dbGaP block of the config.
    ([#1102](https://github.com/uc-cdis/fence/pull/1102))

## uc-cdis/guppy

#### Improvements
  - updated error logging to use GraphQLError per documentation ([#226](https://github.com/uc-cdis/guppy/pull/226))
  - updated schema to not need gql wrapper ([#226](https://github.com/uc-cdis/guppy/pull/226))
  - update way ApolloServer is called ([#226](https://github.com/uc-cdis/guppy/pull/226))

#### Dependency Updates
  - Add "@apollo/server": "^4.7.5", ([#226](https://github.com/uc-cdis/guppy/pull/226))
  - Remove "apollo-server": "^2.4.8", ([#226](https://github.com/uc-cdis/guppy/pull/226))
  - Remove ""apollo-server-express": "^2.4.8", ([#226](https://github.com/uc-cdis/guppy/pull/226))
  - "graphql": "^16.7.1", ([#226](https://github.com/uc-cdis/guppy/pull/226))
  - "graphql-middleware": "^6.1.34", ([#226](https://github.com/uc-cdis/guppy/pull/226))
  - "graphql-parse-resolve-info": "^4.13.0", ([#226](https://github.com/uc-cdis/guppy/pull/226))
  - "graphql-tools": "^9.0.0", ([#226](https://github.com/uc-cdis/guppy/pull/226))

## uc-cdis/hatchery

#### New Features
  - Added `/resetpaymodels` endpoint ([#70](https://github.com/uc-cdis/hatchery/pull/70))
  - Pay models are automatically reset when a workspace session is terminated.
    ([#70](https://github.com/uc-cdis/hatchery/pull/70))

#### Breaking Changes
  - `/launch` endpoint throws an error when there is no pay model selected (For
    commons with paymodels) ([#70](https://github.com/uc-cdis/hatchery/pull/70))
  - `/setPaymodel` throws an error when there is no active workspace running.
    (For commons with paymodels) ([#70](https://github.com/uc-cdis/hatchery/pull/70))

#### Bug Fixes
  - `/launch` endpoint throws a 400 BAD Request when a request without username
    is sent. ([#70](https://github.com/uc-cdis/hatchery/pull/70))

#### Improvements
  - Added unit tests for all the updated functions ([#70](https://github.com/uc-cdis/hatchery/pull/70))
  - Some error messages and response codes are updated to be more specific
    ([#70](https://github.com/uc-cdis/hatchery/pull/70))
  - Related document -
    [BRH-512](https://docs.google.com/document/d/1uJ3-2Ky8XcfIcXZiFs9UMTbd4gMvZ_NsxRS20Ubl5vQ/edit)
    ([#70](https://github.com/uc-cdis/hatchery/pull/70))
  - The `/currentPayModel` endpoint returns `Trial Workspace` only when there
    are no persistent pay models for the user. Returns `null` otherwise. ([#69](https://github.com/uc-cdis/hatchery/pull/69))


## uc-cdis/metadata-service

#### New Features
  - AggMDS field mappings now support using JSON path as field names to setup
    nested object in the result ([#95](https://github.com/uc-cdis/metadata-service/pull/95))

#### Improvements
  - Updated test codes ([#95](https://github.com/uc-cdis/metadata-service/pull/95))

## uc-cdis/peregrine

#### Improvement
  - Since there are some file having file_size larger than the largest possible
    Int32 type in GraphQL, we need to extend it to use Float. ([#201](https://github.com/uc-cdis/peregrine/pull/201))

#### Bug Fixes
  - Fix `/datasets` to correctly return an error when no `nodes` parameter is
    provided ([#202](https://github.com/uc-cdis/peregrine/pull/202))

## uc-cdis/workspace-token-service

#### Improvements
  - Now users can get `external_oidc` response regardless of the trailing slash
    i.e, both `/wts/external_oidc` and `/wts/external_oidc/` are accepted ([#63](https://github.com/uc-cdis/workspace-token-service/pull/63))
