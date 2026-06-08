StartTech Full-Stack Application CI/CD Project

Overview

This project was completed as part of the StartTech Cloud Engineering Assessment. The objective was to implement a complete CI/CD pipeline and supporting cloud infrastructure for a full-stack application consisting of:

Frontend: React application
Backend: Golang API
Container Registry: Amazon ECR
Caching Layer: Amazon ElastiCache (Redis)
Database: MongoDB Atlas
Infrastructure as Code: Terraform
CI/CD: GitHub Actions
Monitoring: Amazon CloudWatch

Project Architecture
Frontend
React application hosted in Amazon S3
Content delivered through Amazon CloudFront
Automated deployment through GitHub Actions

Backend
Golang REST API
Dockerized application
Images stored in Amazon ECR
Application designed for deployment to EC2 Auto Scaling Groups behind an Application Load Balancer

Infrastructure

Infrastructure is managed using Terraform modules:
Networking
Compute
Storage
Monitoring

Repository Structure

starttech-application/
├── .github/
│   └── workflows/
│       ├── frontend-ci-cd.yml
│       └── backend-ci-cd.yml
├── Client/
├── Server/
├── scripts/
│   ├── deploy-frontend.sh
│   ├── deploy-backend.sh
│   ├── health-check.sh
│   └── rollback.sh
└── README.md



CI/CD Pipelines

Frontend Pipeline

The frontend GitHub Actions workflow performs:

1. Install Node.js dependencies
2. Run tests
3. Run npm security audit
4. Build the React application
5. Configure AWS credentials
6. Deploy build artifacts to Amazon S3
7. Invalidate CloudFront cache

Backend Pipeline

The backend GitHub Actions workflow performs:

1. Download Go dependencies
2. Run unit tests
3. Perform vulnerability scanning using govulncheck
4. Build Docker image
5. Authenticate with Amazon ECR
6. Push Docker image to Amazon ECR


Security

Security measures implemented include:

GitHub Secrets for sensitive credentials
IAM roles and least-privilege access controls
Security groups for network segmentation
Docker image vulnerability scanning
Dependency vulnerability scanning using npm audit and govulncheck


Monitoring

Amazon CloudWatch is used for:
-Application log collection
-Deployment log collection
-Monitoring metrics
-CPU utilization alarms

Configured resources include:

/starttech/frontend
/starttech/backend
/starttech/deployments


Deployment
Frontend
Deployment occurs automatically when changes are pushed to the frontend source code.
Command: git push origin feature/full-stack


Backend
Docker images are automatically built and published to Amazon ECR when backend changes are pushed.
Command: git push origin feature/full-stack

Environment Variables
Sensitive values are managed through GitHub Actions Secrets:
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
S3_BUCKET_NAME
CLOUDFRONT_DISTRIBUTION_ID
ECR_REPOSITORY

Technologies Used
React
TypeScript
Golang
Docker
Amazon ECR, S3, CloudFront, EC2, Auto Scaling, ElastiCache, Amazon CloudWatch, Terraform, GitHub Actions

Author
Maryame Diom
