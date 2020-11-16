# TL;DR

Manage bucket policies for the dcfbuckets account.

## Process

What I'd like us to do going forward if we want to add a bucket or change a policy in dcf-open-buckets or dcf-buckets (I'll setup terraform for that too) or any similar account:

* `ssh dcfprod@dcfprod.csoc`
* `gen3 workon dcfbuckets buckets-policy__custom`
* `gen3 cd`
* add a bucket using `../../../../cloud-automation/tf_files/aws/modules/data_bucket/` or something similar, or change the policy, or do whatever it is we want to do to change the infra
get it working through tfplan
* sync non-secret files into `cdis-manifest/commons/terraform/$profile/$workspace/`
* submit a PR - let somebody review it
* if the PR gets approvied, then `tfapply` - commit any required tweaks to github, merge the PR

No more creating S3 buckets or modifying S3 policies by hand in the web console - at least for DCF

It's a clunky workflow, but it's better than what we do now, and we don't do this kind of thing every day, so I think it's good enough for a v1.

