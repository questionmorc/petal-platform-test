# Platform Engineer Take-Home Exercise

Welcome to the Platform Engineer Take-Home Exercise! This project is designed to evaluate your expertise in Kubernetes, Terraform or Helm, RBAC, and your ability to design scalable and production-ready infrastructure solutions.

## Table of Contents

1. [Objective](#objective)
2. [Prerequisites](#prerequisites)
3. [Exercise Tasks](#exercise-tasks)
    - [1. OPERATOR.md: Setting Up a Local Kubernetes Cluster](#1-operatormd-setting-up-a-local-kubernetes-cluster)
    - [2. Infrastructure Configuration: Terraform or Helm](#2-infrastructure-configuration-terraform-or-helm)
    - [3. USER.md: User Interaction Guide](#3-usermd-user-interaction-guide)
    - [4. SCALING.md: Scaling Across Multiple Clusters](#4-scalingmd-scaling-across-multiple-clusters)
    - [5. PRODUCTION.md: Preparing the Kubernetes Cluster for Production](#5-productionmd-preparing-the-kubernetes-cluster-for-production)
4. [Deliverables](#deliverables)
5. [Evaluation Criteria](#evaluation-criteria)
6. [Submission Guidelines](#submission-guidelines)

---

## Objective

This exercise aims to assess your ability to:

1. **Document Operational Procedures:** Provide clear instructions for setting up a local Kubernetes environment.
2. **Infrastructure Configuration:** Utilize Terraform **or** Helm to configure the locally created Kubernetes cluster with appropriate RBAC for platform users.
3. **User Documentation:** Develop comprehensive guides for users to interact with the infrastructure repository.
4. **Design Scalable Solutions:** Create strategies that support scaling across multiple Kubernetes clusters.
5. **Production-Ready Strategies:** Outline methods to transition Kubernetes clusters from development to production environments.

**Note:** For the purpose of this exercise, user authentication to the Kubernetes clusters is fictional. The focus is on your choice and implementation of RBAC (Role-Based Access Control) for platform users who need to develop and operate their services.

## Prerequisites

Ensure the following tools are installed on your local machine before starting:

- [Git](https://git-scm.com/)
- [Terraform](https://www.terraform.io/downloads.html) (v1.0 or higher) **or** [Helm](https://helm.sh/docs/intro/install/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/) (v1.18 or higher)
- [Minikube](https://minikube.sigs.k8s.io/docs/start/) or [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/) for setting up a local Kubernetes cluster

## Exercise Tasks

### 1. OPERATOR.md: Setting Up a Local Kubernetes Cluster

**Objective:** Provide a comprehensive guide to set up a local Kubernetes cluster.

**Requirements:**

- **File Creation:** Create a file named `OPERATOR.md`.
- **Content Should Include:**
  - Installation and configuration steps for a local Kubernetes cluster using tools like Minikube or Kind.
  - Verification methods to ensure the cluster is running correctly.
  - Troubleshooting tips for common setup issues.

**Tips:**

- Use clear, concise language.
- Include command-line instructions with explanations.
- Incorporate screenshots or diagrams where beneficial.

### 2. Infrastructure Configuration: Terraform or Helm

**Objective:** Develop infrastructure as code to configure the local Kubernetes cluster as outlined in `OPERATOR.md`, enabling platform users to create and access their namespaces with appropriate RBAC.

**Requirements:**

- **Choice of Tool:** You may choose to implement this task using **Terraform** **or** **Helm**. Select the tool you are most comfortable with or prefer for infrastructure management.

  - Include a `README.md` within the chosen configuration directory (`terraform/` or `helm/`) detailing how to deploy the infrastructure using the selected tool alongside the local Kubernetes cluster.

**Tips:**

- Reference any prerequisites from `OPERATOR.md` necessary for deployment.
- Ensure seamless interaction between the infrastructure scripts/charts and the locally configured Kubernetes cluster.

### 3. USER.md: User Interaction Guide

**Objective:** Offer platform users detailed instructions on interacting with the repository to create and manage their namespaces.

**Requirements:**

- **File Creation:** Create a file named `USER.md`.
- **Content Should Explain:**
  - How users can request a new namespace.
  - Implementation of RBAC (Role-Based Access Control).
  - The purpose behind different namespaces (if multiple exist).
  - Expected outcomes after a namespace request is made.
- **Examples:** Include practical examples of common commands and workflows.

**Tips:**

- Prioritize clarity and user-friendliness.
- Assume users have basic Kubernetes knowledge but may be unfamiliar with your specific setup.

### 4. SCALING.md: Scaling Across Multiple Clusters

**Objective:** Detail strategies and necessary modifications to scale your solution across multiple Kubernetes clusters.

**Requirements:**

- **File Creation:** Create a file named `SCALING.md`.
- **Content Should Discuss:**
  - Managing multiple clusters using Terraform **or** Helm.
  - Strategies for centralized RBAC management.
  - Automation tools or scripts to facilitate scaling.
  - Considerations for maintaining consistency and manageability across clusters.

**Tips:**

- Address potential challenges and propose solutions.
- Mention any additional tools or technologies that can aid in scaling.

### 5. PRODUCTION.md: Preparing the Kubernetes Cluster for Production

**Objective:** Outline the steps and considerations required to transition the local Kubernetes cluster to a production-ready state.

**Requirements:**

- **File Creation:** Create a file named `PRODUCTION.md`.
- **Content Should Cover:**
  - **Security Enhancements:** Implement network policies and secrets management.
  - **High Availability & Fault Tolerance:** Strategies to ensure cluster resilience.
  - **Monitoring & Logging Setups:** Tools and configurations for effective monitoring and logging.
  - **Backup & Disaster Recovery Plans:** Methods to safeguard data and ensure recovery.
  - **Performance Optimization:** Techniques to enhance cluster performance.
- **Recommendations:** Provide actionable advice and best practices.

**Tips:**

- Be thorough and prioritize critical aspects of production environments.
- Reference relevant tools and technologies that support production readiness.

## Deliverables

Your submission should include the following components:

1. **Documentation Files:**
   - `OPERATOR.md`
   - `USER.md`
   - `SCALING.md`
   - `PRODUCTION.md`

2. **Infrastructure Configuration:**
   - **If using Terraform:**
     - All necessary `.tf` configuration files.
     - A `README.md` with detailed deployment instructions.
   - **If using Helm:**
     - All necessary Helm charts.
     - A `README.md` with detailed deployment instructions.

3. **Repository Structure:**
   - Organize all files logically and clearly.
   - Ensure documentation is well-formatted and easy to navigate.

## Evaluation Criteria

Your submission will be assessed based on the following:

- **Completeness:** All tasks and deliverables are provided.
- **Clarity:** Documentation is easy to understand and follow.
- **Best Practices:** Effective use of Terraform modules **or** Helm chart structures, adherence to Kubernetes best practices, and secure RBAC configurations.
- **Scalability:** Thoughtful and effective strategies for scaling the solution.
- **Production Readiness:** Comprehensive coverage of considerations necessary for production environments.
- **Code Quality:** Clean, maintainable, and well-documented Terraform code **or** Helm charts.

## Submission Guidelines

Please adhere to the following steps to submit your exercise:

1. **Fork or Clone the Repository:**
   - Fork this repository if applicable, or clone the provided starter repository to your local machine.

2. **Complete the Tasks:**
   - Address all tasks as outlined in the [Exercise Tasks](#exercise-tasks) section.

3. **Commit Your Changes:**
   - Use clear and descriptive commit messages to document your progress.

4. **Push to a Remote Repository:**
   - Push your completed project to a platform such as GitHub, GitLab, or Bitbucket.

5. **Submit Your Repository Link:**
   - Share the link to your repository with us by the [submission deadline].

**Note:** Ensure that no sensitive information (e.g., credentials) is included in your submission.
