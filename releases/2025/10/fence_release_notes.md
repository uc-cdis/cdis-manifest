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

