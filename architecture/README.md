Architecture diagrams for the OpenEdX deployment on AWS EKS.
# Architecture Overview

The system is designed to run Openedx on Kubernetes in a secure,
scalable, and production grade manner.

## High Level Flow
Users access the platform through a secure HTTPS endpoint.
Traffic is routed via an ingress controller into the Kubernetes cluster,
where OpenEdX services are deployed as containerized workloads.

## Core Components
- Kubernetes Cluster (EKS  AKS)
- Nginx Ingress Controller
- Openedx LMS and CMS pods
- External MySQL database (managed)
- External MongoDB
- Redis for caching
- Object storage for media and backups
  

## Design Goals
- High availability
- scalability
- Secure data handling
- Clear separation of concerns
