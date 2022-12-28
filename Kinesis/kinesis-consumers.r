

************************************
Consumers (Classic Fan-Out-Consumer)
************************************
    - Gets data record from streams and process them
    - Consumers could be
        - Lambda functions
        - Kinesis Data Analytics
        - Kinesis Data Firehose
        - Custom consumer
        - Kinesis Client Library
    - Get requests of 2MB/Sec
    - GetRecords API
    - Pull method: Consumer pulls from Kinesis
    - Max 5 GetRecord API calls
    - Latency 200
    - retries
    - Returns up to 10MB then throttles for 5 seconds
    - Many consumers can read from same shard (They all share the 2MB/S read capacity)
************************************
Consumer (Enhanced Fan-Out-Consumer)
************************************
    - Subscribe to shard API
    - 2MB/S per consumer/shard
    - Multiple applications for same stream
    - Latency 70
    - Kinesis will push data
    - Max of 5 consumer applications per stream, but u can put a ticket to increase this with AWS
*****************
Consumer (Lambda)
*****************
    - GetBatch API
    - Lambda retries
    - Up to 10 batches of record per shard simultaneously
