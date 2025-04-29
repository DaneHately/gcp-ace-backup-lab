
# my-ace-backup: Google Cloud Storage Backup Solution
*By IronKube Solutions*

## Overview
Welcome to the `my-ace-backup` project, one of my first projects, a Google Cloud Platform (GCP) lab demonstrating cloud storage automation, built by **IronKube Solutions**, a freelance cloud engineering consultancy specializing in Terraform and Kubernetes. This project showcases skills in GCP Cloud Storage, Cloud Functions, and Pub/Sub, developed as part of preparation for the Google Associate Cloud Engineer (ACE) certification.

## Project Goals
- Design a scalable backup system using GCP Cloud Storage.
- Automate file management with lifecycle policies and serverless functions.
- Demonstrate proficiency in cloud infrastructure for freelance portfolio.

## Implementation
- **Cloud Storage Buckets**: Created `mock-client-data` (source) and `my-ace-backup` (destination) buckets in `us-central1` with uniform bucket-level access for simplified IAM management.
- **Bucket Lifecycle Policy**: Configured a 30-day lifecycle policy on `my-ace-backup` to auto-delete outdated files, optimizing storage costs.
- **Cloud Function with Pub/Sub**: Deployed a Python-based 2nd Gen Cloud Function (`process-file`) triggered by a Pub/Sub topic (`my-bucket-topic`) to copy files from `mock-client-data` to `my-ace-backup` upon upload.
- **Access Control**: Applied IAM roles (`storage.objectViewer`, `storage.objectCreator`, `pubsub.subscriber`, `cloudfunctions.invoker`) to the service account `my-ace-function@linux-practice-455701.iam.gserviceaccount.com` for secure operations.

## Key Learnings
- Mastered GCP services like Cloud Storage, Pub/Sub, and Cloud Functions for real-world applications.
- Strengthened debugging skills by resolving permission and configuration issues, critical for client-facing work.
- Gained hands-on experience with serverless automation, a valuable skill for cloud infrastructure projects.

## About IronKube Solutions
**IronKube Solutions** provides expert cloud infrastructure services, focusing on Terraform, Kubernetes, and GCP. With certifications like Google ACE (in progress), AWS Solutions Architect Associate, and Certified Kubernetes Administrator (planned), we deliver reliable, scalable solutions for modern DevOps needs. Contact us at [ironkubesolutions.com](https://ironkubesolutions.com) (coming soon).

## Next Steps
- Explore the code in this [GitHub repo](https://github.com/DaneHately/gcp-ace-backup-lab).
- Check out other projects in my portfolio (e.g., Terraform and Kubernetes labs, coming soon).
- Reach out for freelance cloud engineering services!

*Last updated: April 20, 2025*
