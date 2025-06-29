# Kubernetes ELK Stack Deployment Documentation

## Architecture Overview

The deployment consists of the following components:

- **Elasticsearch elasticsearch-statefulset.yml**: StatefulSet (for data persistence)
- **Kibana kibana-deployment.yml**: Deployment with NodePort (for web UI access)
- **Filebeat filebeat-daemonset.yml**: DaemonSet (runs on every node for log collection)
- **Persistent Volume Claim (PVC) log-pvc.yml**: For storing logs accessible to Filebeat
- **Log Generating Application log-gen-deployment.yml**: Deployment (generates sample logs)

The log generating application also has both **Dockerfile** and the **log_generator.sh** script attached here as well.

The **kibana-logs-screenshot.png** is the screenshpt showint the logs in the elastic.