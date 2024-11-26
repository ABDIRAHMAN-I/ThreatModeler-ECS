# **Threat Modelling Tool - AWS Deployment**

## **Overview**

This project demonstrates the deployment of a Node.js-based Threat Modelling Tool on AWS. Using Docker, ECS (Fargate), and Terraform, the app is securely hosted on a custom subdomain ([lab.threatmodelprojectabdirahmanismail.uk](http://lab.threatmodelprojectabdirahmanismail.uk/)) with HTTPS enabled. The setup is designed for scalability, high availability, and automation.

## **What is Threat Model Composer?**

The **Threat Model Composer** helps security professionals create, simulate, and analyze potential threat scenarios. It integrates with AWS services to visualize attack vectors, assess security controls, and provide actionable insights for mitigating risks. Think of it as your security blueprint, helping you stay ahead of potential threats.

---

## **Running Application Screenshot**

(Add your screenshot here to showcase the deployed app)

## **Architecture Highlights**

- **Containerized Application**: The Threat Model Composer is Dockerized for portability and consistency.
- **AWS Fargate**: Handles container orchestration without the need to manage EC2 instances.
- **ALB with ACM**: Ensures secure communication and efficient traffic routing.
- **Terraform**: Codifies the entire setup, from VPC creation to ECS deployment.

### **How It Works**

1. **ECR**: The container image is built locally and pushed to Amazon Elastic Container Registry.
2. **ECS with Fargate**: The image is deployed in an ECS cluster managed by AWS Fargate.
3. **ALB**: Distributes traffic and enables HTTPS with an ACM certificate.
4. **Route 53**: Provides a custom domain for easy access.
5. **Automation**: GitHub Actions automates the CI/CD pipeline for seamless deployment.

## **Architecture Diagram**

(put a pic of your running app)

## **Key Features**

- **Dockerized Application**: Packaged as a container for consistent deployment.
- **AWS Fargate**: Serverless container orchestration for scalability.
- **Custom Domain with HTTPS**: Accessible via [lab.threatmodelprojectabdirahmanismail.uk](http://lab.threatmodelprojectabdirahmanismail.uk/), secured with AWS Certificate Manager (ACM).
- **Load Balancer**: Ensures fault tolerance and traffic distribution.
- **Infrastructure as Code**: Automated setup and management using Terraform.
- **Secure Networking**: Configured with a VPC and fine-tuned security groups.

## **📚 What I Learned from This Project**

This project was a valuable learning experience, allowing me to enhance my technical skills and understanding of modern cloud and DevOps practices. Key takeaways include:

- **Containerization**: Packaging applications with Docker for consistent deployment across environments.
- **Serverless Computing**: Using AWS Fargate to manage containerized applications without handling server infrastructure.
- **Infrastructure as Code (IaC)**: Automating resource provisioning and management with Terraform for consistency and scalability.
- **DNS and Domain Management**: Setting up custom domains with Amazon Route 53 for professional branding.
- **Load Balancing and Security**: Configuring Application Load Balancers and HTTPS with AWS Certificate Manager (ACM) to ensure secure and fault-tolerant app deployment.
- **Networking in AWS**: Designing secure VPCs, managing subnets, and implementing security groups for precise traffic control.
- **Automation**: Leveraging Terraform for streamlined, repeatable deployments, demonstrating an understanding of DevOps principles.

## **Future Changes**

- **CI/CD Pipeline**: Automate deployment to AWS using a CI/CD tool like GitHub Actions.
- **Modularised Infrastructure**: Break the Terraform code into smaller modules for better management.

## **Conclusion**

This project demonstrates a secure and scalable infrastructure for the **Threat Modelling Tool** using AWS services and Docker containers. It’s designed for ease of deployment, reliability, and security, with HTTPS enforcement and custom DNS.



