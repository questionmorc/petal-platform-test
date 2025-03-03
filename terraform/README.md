To test the terraform code on a local minikube setup, we need to navigate to `environments/local` and make which ever modifications
we want to test. 


## Usage

1.  **Initialize Terraform:**

    Navigate to the `terraform/environments/local` directory:

    ```bash
    cd terraform/environments/local
    ```

    Initialize Terraform:

    ```bash
    terraform init
    ```

2.  **Make modifications:**

    Make modifications to the terraform state files in the `environments/local` directory. 

    These changes should not be commited. 

3.  **Apply the Terraform configuration:**

    Apply the Terraform configuration to create the namespace and RBAC resources:

    ```bash
    terraform apply
    ```

    Confirm the changes by typing `yes`.

## Verification

Verify that the namespace and RBAC resources have been created successfully:
The following uses namespace and role, rolebinding names that are provided in our example.

Modify them accordingly.

1.  **Verify the namespace:**

    ```bash
    kubectl get namespace team-rocket-project1
    ```

2.  **Verify the role and role binding:**

    ```bash
    kubectl get role -n team-rocket-project1 team_rocket_project1_admin
    kubectl get rolebinding -n team-rocket-project1 team_rocket_project1_admin
    ```

## Cleanup

To destroy the resources created by Terraform:

```bash
terraform destroy
```

