
*********
Producers
*********
    - Puts data into streams
    - Data consist of 
        - Sequence number
        - Partition Key
        - Data Blb
    - Producers use
        - AWS SDK 
        - Kinesis producer library
        - Kinesis agent
    - Write throughput is 1 MB/s per shard
    - PutRecord API
    - Use batching to increase throughput
    - Always use a highly distributed partition key to avoid throttling
    