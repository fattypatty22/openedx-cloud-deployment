# openedx-cloud-deployment
Production-grade OpenEdX deployment on Kubernetes

# OpenEdX Cloud Deployment (Kubernetes)

This project demonstrates a production-ready deployment model of OpenEdX
using Kubernetes with a strong focus on scalability, security, and maintainability.

The purpose of this repository is to showcase real-world cloud architecture
design, deployment strategy, and operational thinking rather than a simple demo setup.

## Key Highlights
- Kubernetes-based deployment
- External managed databases
- Secure ingress and traffic control
- Scalable architecture
- Monitoring and observability
  Clear documentation and design decisions

## Cloud Platform
Primary design is cloud-agnostic.
Reference implementation is based AWS EKS.
Architecture can be adapted to Microsoft Azure (AKS).

## Repository Structure
- architecture/     → System design and diagrams
- docs/             → Deployment explanation and decisions
- k8s-manifests/    → Kubernetes resources
- tutor/            → OpenEdX Tutor configuration
- monitoring/       → Monitoring and logging setup

## Status
This repository focuses on architecture design and deployment strategy.
