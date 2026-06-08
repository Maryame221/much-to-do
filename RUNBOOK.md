Operations Runbook

Infrastructure Deployment

Navigate to the Terraform directory:
cd terraform

Initialize Terraform:
terraform init

Validate configuration:
terraform validate

Review deployment plan:
terraform plan

Deploy infrastructure:
terraform apply


Frontend Deployment
Frontend deployments are automated through GitHub Actions.

Trigger deployment:
git push

Pipeline activities:
Install dependencies
Run tests
Security audit
Build application
Deploy to S3
Invalidate CloudFront cache


Backend Deployment
Backend deployments are automated through GitHub Actions.

Trigger deployment:
git push

Pipeline activities:
Run Go tests
Run vulnerability scan
Build Docker image
Push image to Amazon ECR


Health Checks

Run health check script:
./scripts/health-check.sh
Expected result:
Health check passed


Rollback Procedure

Execute rollback script:
./scripts/rollback.sh

Review previous deployment and redeploy a stable version if necessary.


Monitoring

CloudWatch Log Groups:
/starttech/frontend
/starttech/backend
/starttech/deployments


CloudWatch Alarm:
starttech-high-cpu

COMMON FAILURES

Docker Build Failure
Verify that:
-Docker is running
-Dockerfile exists
-Go version matches go.mod

AWS Authentication Failure

Verify GitHub Secrets:
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY

Frontend Deployment Failure
Verify:
-S3 bucket exists
-CloudFront distribution exists
-GitHub Secrets are configured

Terraform Failure
Verify:
-AWS credentials are configured
-Network connectivity is available
-Required providers are installed
