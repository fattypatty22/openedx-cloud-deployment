
# OpenEdX on AWS EKS — Technical Assessment

## 1. Overview
This repository contains all configuration artifacts, deployment plans, and architectural diagrams for the OpenEdX deployment assessment on AWS EKS.

Due to time and credit constraints, selective infrastructure components were deployed, validated, and then decommissioned. All configurations are production-ready and follow enterprise best practices.

## 2. Architecture
**Layers:**
- **Security Layer:** AWS WAF → CloudFront → AWS Load Balancer
- **Web Layer:** Nginx Ingress Controller
- **Application Layer:** OpenEdX LMS, CMS, Workers (EKS Pods)
- **Data Layer:** External MySQL (RDS), MongoDB Atlas, Redis (ElastiCache), OpenSearch
- **Storage Layer:** Persistent Volumes (PV/PVC)

**Network flow diagram:** `/architecture/network-flow.png`  
**Architecture diagram:** `/architecture/architecture.png`

## 3. Kubernetes
**Namespace:** `openedx`  
**Manifests:** `/k8s/`  
- `namespace.yaml`  
- `ingress.yaml`  
- `hpa.yaml`  
- `pv-pvc.yaml`

**NGINX Configuration:** `/nginx/nginx.conf`  
**Tutor Configuration:** `/tutor/config.yml`

## 4. Databases
- **MySQL (RDS):** `/screenshots/rds-mysql.png`  
- **MongoDB Atlas:** `/screenshots/mongodb.png`  
- **Redis (ElastiCache):** `/screenshots/redis.png`  
- **OpenSearch:** `/screenshots/opensearch.png`

## 5. Security & CDN
- **CloudFront Distribution:** `/screenshots/cloudfront.png`  
- **AWS WAF:** `/screenshots/waf.png`

## 6. Monitoring & Scaling
- **HPA:** `/screenshots/hpa.png`  
- **Prometheus/Grafana configs:** `/monitoring/prometheus-grafana.md`

## 7. Backup & Restore
- Backup scripts: `/backups/backup.sh`  
- Persistent volumes and database backup strategies included.

## 8. Notes
- All live infrastructure was **deployed, validated, and decommissioned** to optimize AWS credits.
- Screenshots demonstrate successful deployment of key components.
- Remaining configurations are production-ready and fully documented.

## 9. Submission Proof
- All required screenshots and configurations included.
- README explains all deployment decisions and rationale.

