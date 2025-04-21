# Create buckets (skip if already exist)
gsutil mb -l us-central1 gs://mock-client-data
gsutil mb -l us-central1 gs://my-ace-backup

# Set unified bucket-level access
gsutil uniformbucketlevelaccess set on gs://mock-client-data
gsutil uniformbucketlevelaccess set on gs://my-ace-backup

# Bucket lifecycle
echo '{"rule": [{"action": {"type": "Delete"}, "condition": {"age": 30}}]}' > lifecycle.json
gsutil lifecycle set lifecycle.json gs://my-ace-backup

# IAM permissions
gsutil iam ch serviceAccount:my-ace-function@linux-practice-455701.iam.gserviceaccount.com:roles/storage.objectViewer gs://mock-client-data
gsutil iam ch serviceAccount:my-ace-function@linux-practice-455701.iam.gserviceaccount.com:roles/storage.objectCreator gs://mock-client-data
gsutil iam ch serviceAccount:my-ace-function@linux-practice-455701.iam.gserviceaccount.com:roles/storage.objectCreator gs://my-ace-backup
gcloud projects add-iam-policy-binding linux-practice-455701 \
  --member=serviceAccount:my-ace-function@linux-practice-455701.iam.gserviceaccount.com \
  --role=roles/pubsub.subscriber
gcloud functions add-iam-policy-binding process-file \
  --region us-central1 \
  --member serviceAccount:my-ace-function@linux-practice-455701.iam.gserviceaccount.com \
  --role roles/cloudfunctions.invoker

# Pub/Sub setup
gcloud pubsub topics create my-bucket-topic
gcloud pubsub subscriptions create my-bucket-sub --topic=my-bucket-topic
gsutil notification create -t my-bucket-topic -f json -e OBJECT_FINALIZE gs://mock-client-data

# Deploy Cloud Function (ensure main.py and requirements.txt in current directory)
gcloud functions deploy process-file \
  --gen2 \
  --runtime python312 \
  --trigger-topic my-bucket-topic \
  --source . \
  --service-account my-ace-function@linux-practice-455701.iam.gserviceaccount.com \
  --entry-point process_file \
  --timeout 540s \
  --region us-central1

# Test
echo "Test file" > test.txt
gsutil cp test.txt gs://mock-client-data
gsutil ls gs://my-ace-backup
