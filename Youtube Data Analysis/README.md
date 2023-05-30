# Overview:

1) Used COPY command to transfer data from KAGGLE to S3 Bucket & conducted a pre-transformation on Json data to write parquet format by using LAMBDA function, Build CATALOG.
2) To transfer crawled data and programmed GLUE ETL job to transfer crawled region data into s3 bucket.
3) Programmed a trigger for lambda function, to make the function run whenever a new file is uploaded.
4) Implemented an ETL job using AWS GLUE studio to join two tables and store the result into S3 bucket.
5) Connected S3 to Quick sight & build datasets from Athena, visualized business insights through dashboards.
