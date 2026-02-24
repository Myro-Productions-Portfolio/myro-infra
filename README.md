# Myro Infra

Terraform infrastructure pipeline for Myro Productions projects.

## Structure

```
myro-infra/
├── providers.tf        # AWS provider + S3 backend config
├── variables.tf        # Configurable values
├── main.tf             # Core infrastructure (S3 + CloudFront)
├── outputs.tf          # URLs and resource names after deploy
├── site/
│   └── index.html      # Static site content
└── .github/
    └── workflows/
        └── terraform.yml  # GitHub Actions CI/CD pipeline
```

## How it works

- **Pull Request** → Terraform runs `plan` and posts the output as a PR comment
- **Merge to main** → Terraform runs `apply` and deploys the infrastructure

## Prerequisites

1. Create the Terraform state bucket (one-time, manual):
   ```bash
   aws s3api create-bucket --bucket myro-infra-tfstate --region us-east-1 --profile deskpro
   aws s3api put-bucket-versioning --bucket myro-infra-tfstate --versioning-configuration Status=Enabled --profile deskpro
   ```

2. Add GitHub Secrets to this repo:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`

## First deploy

```bash
terraform init
terraform plan
terraform apply
```
