
This document discusses strategies for scaling the solution across multiple Kubernetes clusters.

## Managing Multiple Clusters

Separate Terraform state files can be used to manage multiple clusters.  Each cluster would have its own set of configuration files and state.
For example, we have an environments directory for all of our envionrments. 
We can hope to ensure consistency and parity accross multiple environments by using modules whenever we can. 

```
.
├── environments
│   ├── local
│   │   ├── namespaces.tf
│   │   └── provider.tf
│   ├── prod
│   │   ├── namespaces.tf
│   │   └── provider.tf
│   └── staging
│       ├── namespaces.tf
│       └── provider.tf
├── modules
│   └── rbac
│       ├── main.tf
│       └── variables.tf
└── README.md
```

## Centralized RBAC Management

For centralized RBAC, consider using an external identity provider and integrating it with Kubernetes. Terraform can then be used to configure RoleBindings based on user groups from the identity provider.
For example with GCP we can use our organiziations Goolgle accounts or groups for our authentication and reference them in our RoleBindings.

## Automation

We can use our CI/CD system along with human approval for the automation and self serving nature of this repository. Product development teams can modify the terraform state files themselves, create PR's that need to 
be approved by the platform team before being merged. 
An example workflow might look something like this:

- User makes modifitions for the staging environment, creates a new branch and pushes their commits.
- The CI can run a few validation commands in order to return imediate feedback to the user. 
  for example:

  ```bash
  terraform fmt
  terraform validate
  terraform plan
  ```
- Once the user is satisfied they can create a PR. The PR will run the same validations for the reviewer to see. 
- If the reviewer has concerns they can comment on the PR or contact the user directly. 
- Otherwise, the reviewer can approve and merge the commit to main. 
- The CI will kickoff in turn and run `terraform apply`

## Challenges and Solutions

- **Configuration drift:** 
We can add a Crossplane deployment with the terraform provider inside the cluster. 
Crossplane will watch our repo on a specified branch for changes and apply them. This can more GitOps approach help us prevent configuration drift.
  
- **Messy large files:**
Another issue we can forsee being a problem is certain files in this repository growing with huge messy files. 
We can make our file structure more friendly by asking developers to create new terraform files per project. 
A recommened appraoch would be to standardize the naming convention to folllow - `{{TEAM_NAME}}-{{PROJECT_NAME}}.tf`
  
- **Security**
We may wish to incorporate some security compliance tools into our workflow. 
We can use tools like `tfsec` to provide users with feedback regarding best practices for any resources they wish to create using our self service repo. 
  

## Tools and Technologies

- Terraform with the Kubernetes Provider
- Potentially crossplane, with the terraform provider. 
- Argo CD - Teams should be able to add their `Application` to clusters using this self service repository. This can facilitate setting up GitOps and contionous delivery in multiple envinments. 


