# Overview:

1. extracted twitter data by using twitter api and tweepy (twitter_etl.py)

2. created and connected with EC2 instance and in the instance, i have installed python3-pip, 
apache-airflow, pandas, s3fs, tweepy

3. started the airflow server and logged in the airflow console. change the security group for instance.

4.  created python file and in that, I have created DAG with arguments and to call function from twitter_etl.py through python operator imported from airflow.(twitter_dag.py)

5.created S3 bucket to store the data which are extracted by using twitter API as well as give the access to EC2 to access S3 bucket.

6. created the new folder in the airflow folder in EC2 and then modified the dags_folder path inside airflow configuration file. 

7. copied those two files twitter_etl.py and twitter_dag.py into new folder in EC2. 

8. restart the server again and run the task(it will run the twitter_dag.py as a task) with the same name like the new folder that we have created inside the airflow folder in EC2. 