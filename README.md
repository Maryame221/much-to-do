# MuchToDo - Cloud-Native Full Stack Application

## Overview

MuchToDo is a cloud-native full-stack task management application developed as part of the StartTech Cloud Engineering assessment.

The project demonstrates modern DevOps practices by combining a React frontend, a Golang backend, Docker containerization, GitHub Actions CI/CD pipelines, and AWS cloud infrastructure provisioned with Terraform.

The infrastructure for this application is managed in a separate repository:

**Infrastructure Repository:** https://github.com/Maryame221/starttech-infra

---

# Features

* User authentication
* Todo management
* User profile management
* Health check endpoint
* RESTful API
* Responsive React frontend

---

# Technology Stack

## Frontend

* React
* TypeScript
* Vite

## Backend

* Golang
* REST API
* Docker

## Cloud & DevOps

* AWS
* Amazon ECR
* Amazon S3
* Amazon CloudFront
* EC2 Auto Scaling
* Application Load Balancer
* CloudWatch
* GitHub Actions
* Docker

---

# Repository Structure

```text
Client/
│
├── src/
├── public/
├── package.json
└── vite.config.ts

Server/
│
└── MuchToDo/
    ├── cmd/
    ├── internal/
    ├── docs/
    ├── Dockerfile
    └── go.mod

.github/
└── workflows/
    ├── frontend-ci-cd.yml
    └── backend-ci-cd.yml

scripts/
```

---

# CI/CD Pipelines

## Frontend Pipeline

The frontend GitHub Actions workflow automatically:

* Installs Node.js dependencies
* Runs application tests
* Performs dependency security checks
* Builds the React application
* Deploys static files to Amazon S3
* Invalidates the Amazon CloudFront cache

---

## Backend Pipeline

The backend GitHub Actions workflow automatically:

* Sets up Go
* Downloads dependencies
* Runs tests
* Performs vulnerability scanning
* Builds the Docker image
* Pushes the Docker image to Amazon Elastic Container Registry (ECR)

---

# Deployment Architecture

Frontend

```
Users
    │
    ▼
CloudFront
    │
    ▼
Amazon S3
```

Backend

```
Users
    │
    ▼
Application Load Balancer
    │
    ▼
EC2 Auto Scaling Group
    │
    ▼
Dockerized Go API
```

Supporting Services

* Amazon ECR
* Amazon CloudWatch
* Amazon ElastiCache (Redis)
* MongoDB Atlas

---

# Running Locally

## Frontend

```bash
cd Client
npm install
npm run dev
```

## Backend

```bash
cd Server/MuchToDo
go run ./cmd/api
```

## Docker

```bash
docker build -t muchtodo-backend .
```

---

# GitHub Actions

The project includes two GitHub Actions workflows.

### Backend

* Build
* Test
* Vulnerability Scan
* Docker Build
* Push to Amazon ECR

### Frontend

* Install Dependencies
* Build React Application
* Deploy to Amazon S3
* CloudFront Cache Invalidation

---

# AWS Services Used

* Amazon EC2
* Amazon Auto Scaling
* Amazon Application Load Balancer
* Amazon S3
* Amazon CloudFront
* Amazon ECR
* Amazon CloudWatch
* Amazon ElastiCache

---

# Related Repository

Infrastructure Repository:

https://github.com/Maryame221/starttech-infra

---

# Author

**Maryame Diom**

Cloud Engineering | AWS | DevOps | Terraform | Docker
