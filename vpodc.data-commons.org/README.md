# TL;DR

gen3 configuration for vpodc.data-commons.org

## Configuration Details

### Custom bucket policy

This data commons applies a custom IAM resource policy to S3 data buckets, so that
only clients oroginating from the commons' VPC can read data.

```
ubuntu@awshelper-devterm-1549038578:~$ aws s3api get-bucket-policy --bucket vadcprod-data-bucket
{
    "Policy": "{\"Version\":\"2012-10-17\",\"Id\":\"b8f9392f-04ed-472e-9635-b10d980a2aef\",\"Statement\":[{\"Sid\":\"Access-to-gen3-VPC-only\",\"Effect\":\"Deny\",\"Principal\":\"*\",\"Action\":[\"s3:Get*\",\"s3:List*\"],\"Resource\":[\"arn:aws:s3:::vadcprod-data-bucket\",\"arn:aws:s3:::vadcprod-data-bucket/*\"],\"Condition\":{\"StringNotEquals\":{\"aws:sourceVpc\":\"vpc-0c83d5071f9b6b180\"}}}]}"
}

```

The policy makes it difficult to interact with the bucket outside of the VPC,
but you can run the AWS CLI in a `devterm`:

```
adminvm$ gen3 arun env | grep AWS
adminvm$ gen3 devterm

devterm$ paste AWS variables
devterm$ export AWS variables
devterm$ aws s3api ...
```

### ETL

The VPO ETL is custom.  Rather than extracting data from
the gen3 metadata database, the mickey ETL pulls data from
Excel spreadsheets and other metadata files provided by the client
(see below).  Check with Andrew for details on how to run the ETL,
and where the data files are stored.


### Metadata Files

The client provides us with various metadata files that we interact
with outside of the normal gen3 metadata API's.  Andrew knows where
those files live, and how we track them ...
