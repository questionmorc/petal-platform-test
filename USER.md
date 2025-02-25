# USER.md

This document guides platform users on how to interact with the infrastructure repository.

## Requesting a New Namespace

Users should submit a request (e.g., via a form or issue in the repository) specifying the desired namespace name and team.  The platform team will then use the Terraform configuration to create the namespace and associated RBAC.

## RBAC Implementation

RBAC is used to control access to resources within each namespace.  Different roles (e.g., developer, operator, read-only) are defined with specific permissions. Users are assigned to these roles based on their needs.

## Namespaces

Each team or project should have its own dedicated namespace to ensure isolation and resource management.

## Example Workflow

1. User requests a namespace named "project-alpha".
2. Platform team adds the namespace and RBAC configuration to Terraform.
3. Platform team applies the Terraform changes.
4. User receives confirmation and can now deploy applications to the "project-alpha" namespace.

## Example kubectl commands

```bash
kubectl get pods -n project-alpha # List pods in the project-alpha namespace
