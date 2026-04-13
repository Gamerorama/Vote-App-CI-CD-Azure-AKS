🚀 CI/CD Pipeline with Azure DevOps + AKS + ArgoCD (Vote App)

📌 Overview
This project demonstrates an end-to-end DevOps pipeline where a containerized application is automatically built, pushed, and deployed to Kubernetes using GitOps.
🛠 Tech Stack
Azure DevOps (CI/CD Pipelines)
Docker
Azure Container Registry (ACR)
Kubernetes (AKS)
ArgoCD (GitOps)
⚙️ Workflow
Code pushed to repository
Azure DevOps pipeline triggers
Docker image is built
Image pushed to Azure Container Registry (ACR)
Kubernetes manifest updated automatically
ArgoCD detects changes and syncs
Application deployed to AKS cluster

🔥 Key Features
Automated CI/CD pipeline using Azure DevOps
GitOps-based deployment using ArgoCD
Dynamic image tag updates in Kubernetes manifests
Deployment to AKS cluster
🐞 Challenges Faced
Fixed CRLF line ending issues in shell scripts
Debugged YAML indentation errors in Kubernetes manifests
Resolved ImagePullBackOff (ACR authentication issue)
Managed Azure authentication and token issues

🚀 How to Run
Build and push Docker image
Run Azure Pipeline
ArgoCD will automatically deploy changes to AKS
📸 Screenshots (Add yours here)
Pipeline execution
ArgoCD dashboard
Kubernetes pods
Application UI

🎯 Outcome
A fully automated CI/CD pipeline that deploys applications to Kubernetes with every code change.

👨‍💻 Author
Simarjeet Singh
📢 Status
Actively looking for DevOps / Cloud Internship opportunities

