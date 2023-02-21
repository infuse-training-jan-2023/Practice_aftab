import json
from datetime import datetime
import boto3

def lambda_handler(event, context):
    dt = datetime.now()
    ts = datetime.timestamp(dt)
    encoded_string = str(ts).encode("utf-8")
    s3 = boto3.resource('s3')
    bucket_name = 'infusetestbucket'
    key = str(ts)
    s3.Bucket(bucket_name).put_object(Key=key, Body=encoded_string)
    
    # Return a success message
    return {
        'statusCode': 200,
        'body': 'timestamp saved to S3 Bucket'
    }

