-- External stage:-

CREATE STAGE UNI_KISHORE_PIPELINE
URL ='s3://uni-kishore-pipeline';

-- FileFormat:-

CREATE FILE FORMAT FF_JSON_LOGS
type='JSON'
strip_outer_array = true;