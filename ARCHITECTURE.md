System Architecture

High-Level Architecture

                    Users
                      │
                      ▼
               CloudFront CDN
                      │
                      ▼
                  S3 Bucket
                      │
                      ▼
                React Frontend


                    Users
                      │
                      ▼
          Application Load Balancer
                      │
                      ▼
             Auto Scaling Group
                      │
                      ▼
            Dockerized Golang API
                 (EC2 Instances)
                      │
          ┌───────────┴───────────┐
          ▼                       ▼
    MongoDB Atlas         ElastiCache Redis
          │                       │
          └───────────┬───────────┘
                      ▼
                 Application

                      │
                      ▼
                 CloudWatch

Components
Frontend:
React application
Built using GitHub Actions
Hosted in Amazon S3
Distributed through Amazon CloudFront

Backend:
Golang REST API
Dockerized application
Stored in Amazon ECR
Deployed to EC2 instances

Database:
MongoDB Atlas
Persistent storage for application data

Cache:
Amazon ElastiCache Redis
Session management
Application caching

Monitoring:
Amazon CloudWatch Logs
CloudWatch Metrics
CloudWatch Alarms

CI/CD
GitHub Actions pipelines automate:
Testing
Security scanning
Build processes
Infrastructure deployment
Application deployment

Security Controls
IAM Roles and Policies
Security Groups
GitHub Secrets
Docker Image Scanning
Dependency Vulnerability Scanning
