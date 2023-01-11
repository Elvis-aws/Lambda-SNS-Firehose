


**********************
Kinesis Data Firehose
**********************
    - Amazon Kinesis Data Firehose is the easiest way to capture, transform, and load data streams into AWS data 
      stores for near real-time analytics with existing business intelligence tools
    - The following can use data firehose
        - Kinesis Data Stream
        - Amazon CloudWatch
        - AWS IOT
    - Up to 1 MB
    - No data storage (No data replay)
    - Automatic scaling
    - Near real time
    - Writes data in batches
    - Destinations include
        - WAS S3
        - Red shift
        - Elastic search
        - Splunk
        - Data dog
    - Using own HTTP endpoint
    - Buffer Interval
        - Time limit before records are processed and sent to destination by Firehose
    - Buffer size
        - The max size data must be before delivering to destination