# Overview:

1) Created an External stage to read data from bucket & various file formats to handle semi & unstructured data. Implemented SNS topic in AWS and set put event in s3 to notify the topic for an addition of new object. 
2) Took the access policy from snowflake to subscribe for topic and then modify the access policy in SNS.
3) Queried SNOWPIPE to load data into table once it gets notified & stream to keep track of changes.
4) Developed task by using various snowflake functions to modify & load that data into enhanced tables.
