

***************************
Amazon Kinesis Data Streams
***************************
    - Amazon Kinesis Data Streams is a scalable and durable real-time data streaming service that can continuously 
      capture gigabytes of data per second from hundreds of thousands of sources
    - This is made up of multiple shards
    - This shards are provisioned during stream creation
    - Data will be split accross all the shards
    - Shards will define stream capacity interms of injestion and consumption rights
    - Producers send data into kinesis data streams
    - Producers us the SDK to produce records, these comprise of a partition key and data blob up to 1MB
    - The partition key determines which shard to send the data to
    - Up to 1MB/s or 1000msg/s per shard
    - 2MB/s per shard for all consumers
    - 2MB/sec enhanced per shard per consumer
    - Data storage (data replay)
    - Real time streaming
    **********
    Attributes
    **********  
        - Data can not be deleted
        - Retension is between 1-365 days
        - Data with same partision key go to same shard for ordering
        - Producers: AWS SDK, Kinesis Producer Library, Kinesis agent
        - Consumers
            - Kinesis client lib
            - Lambda, firehose, analytic
    **************
    Capacity Modes
    **************
        ****************
        Provisioned Mode
        ****************
            - You choose the number of shards provisioned
            - Each shard gets 1MB/s
            - Each shard gets 2MB/s
        **************
        On-demand mode
        **************
            - Managed capacity
            - 4MB/s default capacity
            - Scales automatic
    ********
    Security
    ********
        - IAM policy
        - Encription in flight using HTTPS enspoints
        - Encryption at rest using KMS keys
        - Client side encryption
        - VPC endpoints
        - All API calls can be monitored using cloudTrail