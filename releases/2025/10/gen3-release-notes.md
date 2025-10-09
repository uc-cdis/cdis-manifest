# Core Gen3 Release 2025.10 (Datolite)

## Release Highlights and Announcements

#### BREAKING CHANGE: Fence Usersync SFTP key management
  - For enhanced security, the dbGaP/SFTP host key must be provided in the known_hosts file; new keys will no longer be added automatically.
  - Please see the [breaking changes](#breaking-changes) AND [deployment changes](#deployment-changes) in the Fence notes for details.

#### Faster usersync execution 
  - Usersync has been dramatically accelerated by [streamlining the logic for updating policies](#improvements-2).

## uc-cdis/audit-service

#### New Features
  - Add optional `additional_data` column to `login` and `presigned_url` tables 
    ([#96](https://github.com/uc-cdis/audit-service/pull/96))
  - Schema Changes: ([#88](https://github.com/uc-cdis/audit-service/pull/88))
  - 'ip' column added to login parent table and all partitions to support log 
    requests from fence containing ip info. Nullable to support deprecated 
    format. ([#88](https://github.com/uc-cdis/audit-service/pull/88))
  - new Alembic migration to reflect schema change ([#88](https://github.com/uc-cdis/audit-service/pull/88)) 
  - API Changes: ([#88](https://github.com/uc-cdis/audit-service/pull/88))
  - GET /_schema now returns the current version number and model for each log 
    category. New fence versions should send deprecated format on 404 error 
    ([#88](https://github.com/uc-cdis/audit-service/pull/88))
  - Support older fence versions NOT sending ip info by making ip field 
    optional and nullable. ([#88](https://github.com/uc-cdis/audit-service/pull/88)) 
  - fence_idp, shib_idp, client_id now optional for login logs ([#88](https://github.com/uc-cdis/audit-service/pull/88)) 
  - Testing Changes: ([#88](https://github.com/uc-cdis/audit-service/pull/88))
  - Updates test suite to include tests for new _schema endpoint ([#88](https://github.com/uc-cdis/audit-service/pull/88)) 

#### Improvements
  - Update version to 2.1.0 ([#97](https://github.com/uc-cdis/audit-service/pull/97)) 

## uc-cdis/data-portal

#### Bug Fixes
  - Updated so that the DUA popup, if activated, has the highest priority and 
    should be able to be closed by the user ([#1727](https://github.com/uc-cdis/data-portal/pull/1727)) 
  - fixed a bug about search bar is initialized with incorrect fields 
    collection ([#1721](https://github.com/uc-cdis/data-portal/pull/1721))
  - fixed a bug cause page to freeze when search bar is active and switching 
    between pages ([#1721](https://github.com/uc-cdis/data-portal/pull/1721))
  - restore some default images ([#1720](https://github.com/uc-cdis/data-portal/pull/1720)) 
  - Fix issue on Discovery where the smaller batch for studies overwrites the 
    larger batch, causing studies to not appear on Discovery. ([#1676](https://github.com/uc-cdis/data-portal/pull/1676)) 

#### Improvements
  - Updated language to be more clear to users. ([#1728](https://github.com/uc-cdis/data-portal/pull/1728)) 
  - Updated language to be more clear to users. ([#1729](https://github.com/uc-cdis/data-portal/pull/1729)) 
  - Improves search UX with cache for search restriction selections ([#1718](https://github.com/uc-cdis/data-portal/pull/1718)) 

#### Dependency Updates
  - Bumps [on-headers](https://github.com/jshttp/on-headers) and 
    [compression](https://github.com/expressjs/compression). These dependencies 
    needed to be updated together. (#1717)
  - Bumps [pbkdf2](https://github.com/crypto-browserify/pbkdf2) from 3.1.2 to 
    3.1.3. (#1709)
  - Bumps [sha.js](https://github.com/crypto-browserify/sha.js) from 2.4.11 to 
    2.4.12. (#1723)
  - Bumps [cipher-base](https://github.com/crypto-browserify/cipher-base) from 
    1.0.4 to 1.0.6. (#1722)

## uc-cdis/fence

#### New Features
  - The user registration flow has been modified in order to enforce 
    registration before a user is officially logged in and can access website 
    pages and data (when user registration is enabled) ([#1286](https://github.com/uc-cdis/fence/pull/1286)) 
  - The login audit log now conditionally includes the user's IP information if 
    the audit schema version for login is 2.0 or greater. ([#1274](https://github.com/uc-cdis/fence/pull/1274)) 
  - Introduced AUDIT_SCHEMA_CACHE to cache audit service schema version/models, 
    cache is checked and updated before creating presigned URL and login audit 
    logs. ([#1274](https://github.com/uc-cdis/fence/pull/1274))
  - Added _get_audit_schema and _set_schema_models_cache methods to 
    AuditServiceClient to fetch and cache the audit schema from the 
    audit-service’s /_schema endpoint. ([#1274](https://github.com/uc-cdis/fence/pull/1274)) 
  - Falls back to a default v1 schema if the endpoint returns a 404 (older 
    audit-service versions) ([#1274](https://github.com/uc-cdis/fence/pull/1274)) 

#### Breaking Changes
  - Usersync SFTP now rejects unknown host keys. We switched from 
    paramiko.AutoAddPolicy() to paramiko.RejectPolicy() and load keys from 
    ~/.ssh/known_hosts. If that file does not contain the dbGaP/SFTP host key, 
    the usersync dbGaP sync will fail (previously it auto-trusted and added the 
    key) ([#1238](https://github.com/uc-cdis/fence/pull/1238))

#### Bug Fixes
  - Arborist timeouts no longer stop usersync ([#1293](https://github.com/uc-cdis/fence/pull/1293)) 
  - Replace grant bulk policy with smart policy diff ([#1293](https://github.com/uc-cdis/fence/pull/1293)) 

#### Improvements
  - Get user's projects from arborist to compare existing permissions to 
    incoming permissions to decide which permissions to retain, revoke or add. 
    ([#1268](https://github.com/uc-cdis/fence/pull/1268))
  - Added and adjusted tests for new features ([#1274](https://github.com/uc-cdis/fence/pull/1274)) 
  - bump to get new base image ([#1288](https://github.com/uc-cdis/fence/pull/1288)) 

#### Dependency Updates
  - updated dependency for `python_dateutil` ([#1268](https://github.com/uc-cdis/fence/pull/1268)) 
  - update dependency for `python-jose` ([#1268](https://github.com/uc-cdis/fence/pull/1268)) 

#### Deployment Changes
  - Provide and mount a known_hosts file in the usersync pod/container at 
    /root/.ssh/known_hosts (the process runs as root). ([#1238](https://github.com/uc-cdis/fence/pull/1238)) 
  - Helm: update to the gen3-helm change that adds the fence-ssh-known-hosts 
    ConfigMap and mounts it into the usersync job. After upgrading the chart, 
    populate that ConfigMap with the correct host keys. ([#1238](https://github.com/uc-cdis/fence/pull/1238)) 

## uc-cdis/guppy

#### Dependency Updates
  - Bumps [sha.js](https://github.com/crypto-browserify/sha.js) from 2.4.11 to 
    2.4.12. (#330)

## uc-cdis/sower

#### New Features
  - Add support to access tokens generated using `client_credentials` grant 
    type. ([#58](https://github.com/uc-cdis/sower/pull/58))

