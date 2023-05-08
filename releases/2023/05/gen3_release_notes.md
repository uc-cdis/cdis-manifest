# Core Gen3 Release 2023.05 (Ruby)

## uc-cdis/fence

#### New Features
  - Add the `ENABLE_VISA_UPDATE_CRON` setting ([#1087](https://github.com/uc-cdis/fence/pull/1087)) 

#### Breaking Changes
  - The default value for the `GLOBAL_PARSE_VISAS_ON_LOGIN` setting is now 
    `False` instead of `None`. By default, parsing visas on login is now 
    disabled and the `parse_visas` parameter cannot be used ([#1087](https://github.com/uc-cdis/fence/pull/1087)) 

#### Improvements
  - Add details to client_credentials and user.yaml docs ([#1082](https://github.com/uc-cdis/fence/pull/1082)) 
  - Use libraries functionality for automatically adding ssh keys ([#1078](https://github.com/uc-cdis/fence/pull/1078)) 

#### Deployment Changes
  - Systems that use visas parsing must update their Fence configuration to set 
    `ENABLE_VISA_UPDATE_CRON` to `True` and set `GLOBAL_PARSE_VISAS_ON_LOGIN` 
    to either `True` or `None` ([#1087](https://github.com/uc-cdis/fence/pull/1087)) 

## uc-cdis/cdis-data-client

#### Improvements
  - Improve error message when Fence upload returns 404 ([#114](https://github.com/uc-cdis/cdis-data-client/pull/114)) 

## uc-cdis/hatchery

#### New Features
  - Run ECS launch in a goroutine, but return 200 at once to prevent timeout 
    issues. ([#61](https://github.com/uc-cdis/hatchery/pull/61))
  - Add in support for above_limit paymodels and general fixes for paymodels 
    ([#61](https://github.com/uc-cdis/hatchery/pull/61))
  - Tear down Load Balancer Target group (It doesn't cost money, but sometimes 
    the configuration of it can be out of sync so better to create a new one 
    each time) ([#61](https://github.com/uc-cdis/hatchery/pull/61))

#### Improvements
  - Better logging when creating AWS resources, so it's easier to troubleshoot. 
    ([#61](https://github.com/uc-cdis/hatchery/pull/61))

## uc-cdis/indexd

#### New Features
  - Add GA4GH DRS `/service-info` endpoint ([#356](https://github.com/uc-cdis/indexd/pull/356)) 
  - Use Alembic for database migrations ([#354](https://github.com/uc-cdis/indexd/pull/354)) 

#### Bug Fixes
  - Reverting changes that cause existing indexd deployments to break due to 
    unhandled DB migration. ([#353](https://github.com/uc-cdis/indexd/pull/353))

#### Improvements
  - Remove unnecessary functions from config_helper that are only used by Fence 
    ([#352](https://github.com/uc-cdis/indexd/pull/352))

## uc-cdis/pelican

#### Improvements
  - Fence client is not required if access_format != "guid" ([#70](https://github.com/uc-cdis/pelican/pull/70)) 

## uc-cdis/data-portal

#### New Features
  - [Workspace Page] Replace `N/A` with numerical values when `total-usage` is 
    `0` ([#1270](https://github.com/uc-cdis/data-portal/pull/1270))
  - [Workspace Page] Update the drop down menu to display the pay models in the 
    following format `Direct Pay - $XX.XX - (Active/ Above Limit)` ([#1270](https://github.com/uc-cdis/data-portal/pull/1270)) 
  - [Workspace Page] Restrict users from selecting a pay model whose status is 
    Above Limit ([#1270](https://github.com/uc-cdis/data-portal/pull/1270))
  - [Workspace Page] Show an error Alert if the current pay model of the user 
    is above limit ([#1270](https://github.com/uc-cdis/data-portal/pull/1270))
  - [Workspace Page] Disable the Launch buttons in the workspace cards when the 
    current pay model is above limit ([#1270](https://github.com/uc-cdis/data-portal/pull/1270)) 
  - VADC-446: This PR uses the last modified date of the themeoverrides.css 
    file at build time to set the version. This change allows performing 
    automatic CSS pull after the gitops.css update. Resolves ESLINT errors. 
    ([#1264](https://github.com/uc-cdis/data-portal/pull/1264))
  - VADC-466: This updates the ResultsApp table to use pagination and column 
    sorting by converting the table to use AntD components. ([#1264](https://github.com/uc-cdis/data-portal/pull/1264)) 
  - VADC-474, VADC-484, VADC-497 This updates Execution view to display a table 
    associated with the selected Row, and a Logs UI, which displays the 
    execution log data. This also style the Execution view, including a new 
    reusable DetailPageHeader, that will be needed in the other Detail Pages. 
    Additionally the tests and stories associated with the Execution view have 
    been updated as needed. A new test and storybook was written for the 
    DetailPageHeader. This also includes the updates from closed PR 
    https://github.com/uc-cdis/data-portal/pull/1261, which includes new values 
    returned from the API for the home table: submittedAt and wf_name. ([#1264](https://github.com/uc-cdis/data-portal/pull/1264)) 
  - This creates the FE infrastructure for the new Results app. ([#1256](https://github.com/uc-cdis/data-portal/pull/1256)) 
  - Adds a spinner when submission screen is loading in GWASApp ([#1256](https://github.com/uc-cdis/data-portal/pull/1256)) 
  - Updates the ResultsAppV2 to connect to the gwasWorkflowPath API to populate 
    the table in the Home view. ([#1256](https://github.com/uc-cdis/data-portal/pull/1256)) 

#### # Merges Work From Sprint 07 To Master:
  - VADC-518: On the results view: Renames button to be “View Image in New 
    Tab”. On image itself adds tooltip with title: “Right click and select 
    “Save Images As” to download”. On the home table: Swaps columns location 
    for the home table for Started and Submitted. Fixes linting error with 
    comma in ExecutionTable.jsx ([#1274](https://github.com/uc-cdis/data-portal/pull/1274)) 
  - VADC-467: This updates the home table with final finishing touches to 
    better match the design. Execution table is also updated with new date 
    format in its table ([#1274](https://github.com/uc-cdis/data-portal/pull/1274)) 
  - VADC-469: Styles the result view to better match the design. ([#1274](https://github.com/uc-cdis/data-portal/pull/1274)) 
  - VADC-468: Adds a story book to mock a server 403 response for the Execution 
    View. This also creates a component for the loading error message so it is 
    more consistent across views and easier to maintain. This also provides a 
    global update for the AntD default button to better match the design. 
    ([#1274](https://github.com/uc-cdis/data-portal/pull/1274))
  - VADC-459: Adds Download and display of Manhattan plot in Results page, 
    using presigned URL step. Adds Download of .zip file with "all results" in 
    main workflows list page and in Results page ([#1274](https://github.com/uc-cdis/data-portal/pull/1274)) 

#### Bug Fixes
  - Study registration: fixed a typo that causing metadata tag being 
    incorrectly updated ([#1271](https://github.com/uc-cdis/data-portal/pull/1271)) 

#### Improvements
  - Update repository dropdown options on StudyRegistration pages to change MPS 
    to BioSystics ([#1268](https://github.com/uc-cdis/data-portal/pull/1268))
  - This globalizes the window match media override for all JEST / React 
    Testing Library tests in the code base, so that the test no longer 
    requiring importing an override or declaring an override for each test. 
    ([#1264](https://github.com/uc-cdis/data-portal/pull/1264))
  - Use new coremetadata URL ([#1252](https://github.com/uc-cdis/data-portal/pull/1252)) 

#### Deployment Changes
  - If Peregrine is on version 3.2.0/2023.04 or newer AND data-portal is on 
    version 5.4.2/2023.05 or newer, the Pidgin service ⚠️ **can and should be 
    removed** ⚠️ ([#1252](https://github.com/uc-cdis/data-portal/pull/1252))

## uc-cdis/sheepdog

#### Improvements
  - Fix Swagger docs: add `/v0/submission` prefix ([#395](https://github.com/uc-cdis/sheepdog/pull/395)) 
  - JSON export returns JSON arrays instead of comma-delimited strings ([#394](https://github.com/uc-cdis/sheepdog/pull/394)) 

## uc-cdis/tube

#### Bug Fixes
  - Fix to get correct type of items in list type field ([#228](https://github.com/uc-cdis/tube/pull/228)) 

## uc-cdis/gen3-fuse

#### New Features
  - remove not compatible CI workflow for running go tests ([#42](https://github.com/uc-cdis/gen3-fuse/pull/42)) 

