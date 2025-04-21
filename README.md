# my-ace-backup: Google Cloud Storage Backup Solution
*By IronKube Solutions*

## Overview
Welcome to the `my-ace-backup` project, a Google Cloud Platform (GCP) lab demonstrating cloud storage automation, built by **IronKube Solutions**, a freelance cloud engineering consultancy specializing in Terraform and Kubernetes. This project showcases skills in GCP Cloud Storage, Cloud Functions, and Pub/Sub, developed as part of preparation for the Google Associate Cloud Engineer (ACE) certification.

## Project Goals
- Design a scalable backup system using GCP Cloud Storage.
- Automate file management with lifecycle policies and serverless functions.
- Demonstrate proficiency in cloud infrastructure for freelance portfolio.

## Implementation
- **Cloud Storage Bucket**: Created `my-ace-backup` bucket with a 30-day lifecycle policy to auto-delete outdated files, optimizing storage costs.
- **Cloud Function with Pub/Sub**: Deployed a Python-based Cloud Function triggered by Pub/Sub to process backup tasks, ensuring serverless automation.
- **Cloud Storage FUSE**: Configured `gcsfuse` to mount buckets as local file systems, enabling seamless file access (tested with `mock-client-data` bucket).
- **Access Control**: Resolved ACL issues for secure bucket access, applying least-privilege principles.

## Key Learnings
- Mastered GCP services like Cloud Storage, Pub/Sub, and Cloud Functions for real-world applications.
- Gained hands-on experience with `gcsfuse` for hybrid cloud workflows, a valuable skill for cloud infrastructure projects.
- Strengthened debugging skills by resolving permission and configuration issues, critical for client-facing work.

## About IronKube Solutions
**IronKube Solutions** provides expert cloud infrastructure services, focusing on Terraform, Kubernetes, and GCP. With certifications like Google ACE (in progress), AWS Solutions Architect Associate, and Certified Kubernetes Administrator (planned), we deliver reliable, scalable solutions for modern DevOps needs. Contact us at [ironkubesolutions.com](https://ironkubesolutions.com) (coming soon).

## Next Steps
- Explore the code in this [GitHub repo](https://github.com/DaneHately/gcp-ace-backup-lab).
- Check out other projects in my portfolio (e.g., Terraform and Kubernetes labs, coming soon).
- Reach out for freelance cloud engineering services!

*Last updated*.
