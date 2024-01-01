# Terraform Template

This repo contains everything you need to deploy AWS resources using Terraform via Github Actions.

## Usage

Fork or copy this repo.

Replace these variables with your own.

```
$ROLE - AWS role that GA uses to deploy terraform with
$TERRAFORM_BUCKET - S3 bucket to place tf state
$TERRAFORM_LOCK - Dyanmodb table for locking
$APPLICATION_NAME - Application name
```

## Terraform version

This is currently locked using `tfenv` see `.terraform-version`.
