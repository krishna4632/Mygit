Hello,
   I have uploaded all the necessary files to this repository. Kindly go through the instructions.

Thanks,
Krishna.

Overview
This repository contains configurations for deploying a web application using Terraform and Helm on an Azure Kubernetes Service (AKS) cluster. The application consists of a frontend, backend, and a MongoDB database.

Prerequisites
Azure Account: You need an active Azure account.
Terraform: Ensure Terraform is installed on your machine. Install Terraform.
Azure CLI: Install Azure CLI to manage Azure resources. Install Azure CLI.
Helm: Install Helm for managing Kubernetes applications. Install Helm.

Setup Instructions
Step 1: Clone the Repository
Clone this repository to your local machine:

Step 2: Terraform Deployment
Navigate to Terraform Directory:


Initialize Terraform: terraform init
Plan the Deployment: terraform plan
Apply the Configuration: terraform apply

Step 3: Helm Chart Installation

Check the status of the pods:

kubectl get pods

Access the Application:
Retrieve the external IP to access the application:

kubectl get svc myapp --namespace default
Open your browser and navigate to http://<external-ip>.

Troubleshooting
If you encounter any issues during deployment or access, check the logs of the pods using:

kubectl logs <pod-name>
