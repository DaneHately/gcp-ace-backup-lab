from google.cloud import storage
import base64
import json

def process_file(event, context):
    pubsub_message = base64.b64decode(event['data']).decode('utf-8')
    message_data = json.loads(pubsub_message)
    bucket_name = message_data['bucket']
    file_name = message_data['name']
    storage_client = storage.Client()
    source_bucket = storage_client.bucket(bucket_name)
    destination_bucket = storage_client.bucket('my-ace-backup')
    blob = source_bucket.blob(file_name)
    new_blob = source_bucket.copy_blob(blob, destination_bucket, file_name)
    print(f"File {file_name} copied to {destination_bucket.name}")
