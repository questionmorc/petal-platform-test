# USER.md

This document guides platform users on how to interact with the infrastructure repository.

## Requesting a New Namespace and RBAC permissions

To request a new namespace, modify the `namespace.tf` file for the appropriate environment. 
For example to add a new namespace to staging, modify the `terraform/environments/staging/namespaces.tf` file. 

Users should submit a pull request providing the terraform code that calls the namespace and rbac module. 
The platform team will then review the Terraform configuration to create the namespace and associated RBAC.

Users can test in the terraform config in a local minikube setup before submiting their PR by using the `terraform/environments/local/namespaces.tf` file. 
The platform team will not accept PR's for the local environment unless they are related to doucmentation. It can be used as a reference point and to test any terraform code localy.


## RBAC Implementation

RBAC is used to control access to resources within each namespace.  Different roles (e.g., developer, operator, read-only) are defined with specific permissions. Users are assigned to these roles based on their needs.
Documentation on the RBAC module can be found in `terraform/modules/rbac/README.md`

## Namespaces

Each team or project should have its own dedicated namespace to ensure isolation and resource management. 
This resource does not have its own dedicated module as it is very simple to use, we can refernce the hashicorp [documentation](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) if needed.

## Example Workflow

1. User wants requests a namespace named "project-alpha" in our staging cluster.
2. The user modifies the terraform files in the staging directory directory, `terraform/environments/staging/namespaces.tf`.
3. The user can test that the terraform config works on their local minikube cluster before requesting the NS get created in the specified environment, this can be done by modifying the `terraform/environments/local/namespaces.tf` file. 
   Assuming minikube is installed and running, we run `terraform plan` and `terraform apply` from inside this directory. 
4. Once we are satisfied, we commit our modifitations for the staging environment, then we open a PR with the namespace and RBAC config. (This should kick off a `terraform plan` in the CI/CD system that the user can validate that there are no errors for)
5. Platform team Validates the plan, contacting the user if there are issues, otherwise, moving on to the next step.
6. Platform team approves and applies the Terraform changes.
7. User receives confirmation and can now deploy applications to the "project-alpha" namespace.

## Validate the namespace was created with kubectl commands

```bash
kubectl get pods -n project-alpha # List pods in the project-alpha namespace
```
