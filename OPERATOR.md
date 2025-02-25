This document outlines the steps to set up a local Kubernetes cluster using Minikube.

## Installation and Configuration

1. **Install Minikube:** Follow the instructions for your operating system on the [Minikube website](https://minikube.sigs.k8s.io/docs/start/).

2. **Start Minikube:**
   ```bash
   minikube start --driver=docker  # Recommended driver
   minikube status
   kubectl config use-context minikube
   kubectl get pods --all-namespaces
   ```

## Troubleshooting

Minikube fails to start: Check for conflicting processes or virtualization issues. Try restarting your machine or using a different driver.
kubectl connection issues: Ensure that the kubectl context is correctly set to minikube.

Cleanup

To stop Minikube:
Bash

minikube stop

To delete the Minikube cluster:
Bash

minikube delete

