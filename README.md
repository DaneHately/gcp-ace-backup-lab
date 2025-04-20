# GCP Associate Cloud Engineer: Backup Lab
This project demonstrates a 2nd gen Cloud Function triggered by Pub/Sub to copy files from `mock-client-data` (unified access) to `my-ace-backup` (30-day lifecycle).

## Setup
- Buckets: `mock-client-data` (unified access), `my-ace-backup` (lifecycle).
- Pub/Sub: Topic `my-bucket-topic`, subscription `my-bucket-sub`.
- Cloud Function: Python 3.9, Pub/Sub-triggered, copies files.
- Tools: `gsutil`, `gcloud` CLI.

## Files
- `main.py`: Cloud Function code.
- `requirements.txt`: Dependencies.
- `setup.sh`: CLI setup commands.
- `screenshots/log.txt`: Execution logs.

## Usage
Run `setup.sh` to configure. Upload a file to `mock-client-data` to trigger the function.

## Debugging
- Fixed Pub/Sub topic mismatch (`my-bucket-topic3` to `my-bucket-topic`).
- Resolved authentication by allowing `allUsers` (note: use service account for production).

## Portfolio
Built for ACE exam prep (April 27, 2025) and freelancing in Ecuador.
