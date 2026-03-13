import boto3
import os
import json

def get_secret():

    secret_name = os.getenv("SECRET_NAME")
    region = os.getenv("AWS_REGION")

    client = boto3.client(
        "secretsmanager",
        region_name=region
    )

    response = client.get_secret_value(
        SecretId=secret_name
    )

    secret = json.loads(response["SecretString"])

    return secret