
# Backup and Recovery Scripts — OpenEdX on AWS EKS


## Purpose

Quick backup and restore for OpenEdX components:

* External DBs: MySQL, MongoDB, Redis, Elasticsearch
* Media/uploads (Persistent Volumes)
* Kubernetes and Tutor configs

## Backup Commands

**Databases:**

```bash
# MySQL
mysqldump -h <RDS_HOST> -u <USER> -p <DB> > backup_mysql.sql

# MongoDB
mongodump --host <MONGO_HOST> -u <USER> -p <PASS> --out ./mongo_backup

# Redis
redis-cli -h <REDIS_HOST> SAVE

# Elasticsearch
curl -XPUT 'http://<ES_HOST>:9200/_snapshot/backup/snap_$(date +%F)' -H 'Content-Type: application/json' -d '{"indices":"*"}'
```

**Persistent Volumes:**

```bash
kubectl cp <namespace>/<pod>:/edx/var/edxapp/media ./media_backup
kubectl cp <namespace>/<pod>:/edx/var/edxapp/uploads ./uploads_backup
```

**Configs:**

```bash
cp tutor/config.yml backup/config.yml
kubectl get all -n openedx -o yaml > backup/k8s.yaml
```

## Restore Commands

**Databases:**

```bash
mysql -h <RDS_HOST> -u <USER> -p <DB> < backup_mysql.sql
mongorestore --host <MONGO_HOST> -u <USER> -p <PASS> ./mongo_backup
redis-cli -h <REDIS_HOST> FLUSHALL
curl -XPOST 'http://<ES_HOST>:9200/_snapshot/backup/snap_name/_restore'
```

**PV/PVC:**

```bash
kubectl cp ./media_backup <namespace>/<pod>:/edx/var/edxapp/media
kubectl cp ./uploads_backup <namespace>/<pod>:/edx/var/edxapp/uploads
```

**Configs:**

```bash
kubectl apply -f backup/k8s.yaml
cp backup/config.yml tutor/config.yml
```
* Test backups in staging before production.

