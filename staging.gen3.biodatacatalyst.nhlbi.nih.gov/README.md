# TL;DR
gen3 deployment configuration for staging.datastage.io


## Google

The `datastage staging` commons mediates access to GCP buckets owned by the cloud
partners.  The commons (`fence`) provides access to objects via
signed URL's and temporary Google service account keys.


## Configuration Details

We do not track the configuration of secrets in this repo, but gen3.datastage.io
requires some custom secrets configuration to interact with Google which
AWS-only commons do not require.

* stagingdatastage/apis-configs/fence_google_app_creds_secret.json and fence_google_storage_creds_secret.json have creds for Google service accounts that fence uses to give access to Google storage - needed to copy those 2 files over from dcp, and update the secrets
* stagingdatastage/apis_configs/fence-config.yaml has a `CIRRUS_CONFIG` section that requires setup - `CIRRUS` is the name of our internal library for talking to Google
* also in fence-config.yaml (small change) - `ENABLED_IDENTITY_PROVIDERS` should just be `google` - commented out the `fence` provider that we currently only ever use for DbGap mediated authentication  
