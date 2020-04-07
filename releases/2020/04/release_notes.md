Core Gen3 Release 202004 (Cottage Grove)

## uc-cdis/gen3-statics

#### Improvements
  - update dependencies to fix vulnerabilities (#4)
  - cache-control max-age 300, so client does not cache Secure/ data for more 
    than 5 minutes (#4)

## uc-cdis/fence

#### Dependency Updates
  - httplib2 to 0.17.0 (#763)
  - gen3authz updated to at least 0.4.0 for security updates (#757)

#### New Features
  - New config to specify an endpoint url for an s3 bucket (to support 
    cleversafe) (#744)

#### Bug Fixes
  - Handle the "fence_idp" query parameter for OIDC clients logging users in 
    through the "/authorize" endpoint (#761)

#### Improvements
  - Support dbgap syncing from an ftp site instead of sftp (#762)
  - default config no longer gives fake buckets and creds for s3 (avoids an s3 
    call to get missing bucket region and reduces confusion) (#759)
  - improve some log messages: fix package name, clarify error about whitelist 
    filename pattern match (#748)

## uc-cdis/guppy

#### Deployment Changes
  - Increased node.js max header size to prevent issue with large NIH login 
    session cookies hitting request header limit. (#79)

#### Improvements
  - Tiered access logic will checks for portions which are accessible by user, 
    and encypt results with that information in consideration (#75)
  - Checked filters won't get disabled unless they get unchecked first (#75)
  - Charts won't be hidden unless they contain any field from unaccessible 
    resources which has a total count less than the tier access limit (#75)
  - ENV_VAR `log_level` can be set from manifest (#75)

#### Dependency Updates
  - gen3-ui-component: 0.3.16 (#75)

## uc-cdis/indexd

#### New Features
  - Implemented new DRS endpoints paths and parameters that follows the DRS 
    spec https://ga4gh.github.io/data-repository-service-schemas/docs/#_paths 
    (#261)
  - Update swagger docs to include DRS (#261)
  - Added unit tests for DRS endpoints (#261)

#### Improvements
  - The "/versions" endpoint explicitly returns records in the order they were 
    created (#263)

#### Bug Fixes
  - keep existing behavior when using pagination using start did (instead of 
    new page param), ordering by date causes issues with previous behavior, now 
    only order by date when using new page param (#262)

## uc-cdis/pelican

#### Improvements
  - use revproxy to send requests to Guppy instead of going out to the internet 
    via commons hostname (#27)

## uc-cdis/data-portal

#### New Features
  - New page in windmill, /indexing, where admins can upload a file manifest 
    for inserting records into indexd, or generate and download a file 
    manifest. (#658)
  - Add configurable footer links to the bottom of the page. (#661)
  - Allow use of any link for a contact on the Login page, rather than only 
    emails. (#660)

#### Bug Fixes
  - Fix issue getting data for the DAT when the configured "caseField" is not 
    "node_id" (#662)
  - Fixed visual bug in default workspace where size of workspace was tiny 
    (Thanks to @bwalsh) (#646)

#### Deployment Changes
  - Added footer link configuration to portal config: `components.footer.links` 
    is an array of `{ text: <string, optional>, href: <string> }`. (#661)
  - Added a new property to gitops.json: `components.login.contact_link: { 
    text: string, href: string }`. If `login.contact_link` is present, it will 
    be displayed instead of `login.email`. Email links can be represented in 
    `contact_link` using "mailto:email@address" as the "href". (#660)
  - Updated tiered access logic requires Guppy server >= 0.4.0 (#650)
  - New optional `title` parameter in Terra Export Warning configuration: 
    `terraExportWarning: { subjectThreshold: int, title: string(optional), 
    message: string(optional) }` (#656)

#### Improvements
  - Updated dependencies to resolve high-severity vulnerabilities in 
    dependencies (#659)
  - Filters and charts will be locked or disabled based on improved tiered 
    access logic (see uc-cdis/guppy#75) (#650)
  - Title in Terra Export Warning is now configurable (#656)
  - Added fullpage button to default workspace (Thanks to @bwalsh) (#646)

#### Dependency Updates
  - Updated css-loader 0.23.1 > 3.4.2 (#659)
  - Updated react-svg-loader 2.1.0 > 3.0.3 (#659)
  - Updated less 2.7.1 > 3.11.1 (#659)
  - Guppy: 0.3.15 (#650)
  - Gen3-ui-component: 0.3.16 (#650)

## uc-cdis/sower

#### Bug Fixes
  - Handle null token (#13)

## uc-cdis/indexs3client

#### New Features
  - implement retry logic (#17)

