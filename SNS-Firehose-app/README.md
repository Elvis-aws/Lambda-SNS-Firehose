
# AWS S3 to AWS SNS 

Publishes SNS messages to a Kinesis Firehose Delivery Stream so that they can be forwarded to archival or 
analytics destinations.




## Deployment Instructions

1. source env/bin/bin/bin/activate
2. cd SNS-Firehose-app
3. sam build
4. sam deploy --guided

 During the prompts:
  * Enter a stack name
  * Enter the desired AWS Region
  * Enter a bucket name
  * Allow SAM CLI to create IAM roles with the required permissions.

Once you have run `sam deploy -guided` mode once and saved arguments to a configuration file (samconfig.toml), 
you can use `sam deploy` in future to use these defaults.
Note the outputs from the SAM deployment process. These contain the resource names and/or ARNs which are used for 
testing.

## How it works
This SAM template creates an SNS Topic, Kinesis Firehose Delivery Stream, S3 bucket, and subscribed the Kinesis Firehose 
Delivery Stream to the SNS Topic. As messages are published to the topic, they are streamed to the Firehose Delivery 
Stream, and then delivered the Firehose Delivery Stream's destinations, which in this case is an S3 bucket. 

==============================================

## Testing
1. Publish a message to the SNS topic by running the CLI command: 
```
aws sns publish --topic-arn arn:aws:sns:us-east-1:{AWS ACCOUNT NUMBER}:SourceSNSTopic --message "Hello world"
```
2. Check that test messages are being sent to the destination S3 bucket (it will take a few minutes for events to 
   begin streaming):

```
aws s3 ls s3://{destination bucket name} --recursive --human-readable --summarize
```

## Cleanup
1. Delete the stack
    ```bash
    aws cloudformation delete-stack --stack-name STACK_NAME
    ```
1. Confirm the stack has been deleted
    ```bash
    aws cloudformation list-stacks --query "StackSummaries[?contains(StackName,'STACK_NAME')].StackStatus"
    ```
----
Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.

SPDX-License-Identifier: MIT-0
