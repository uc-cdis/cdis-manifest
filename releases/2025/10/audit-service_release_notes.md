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

