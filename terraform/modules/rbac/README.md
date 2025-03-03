## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_role.role](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/role) | resource |
| [kubernetes_role_binding.role_binding](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/role_binding) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the role and role binding | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace to create the role in | `string` | n/a | yes |
| <a name="input_rules"></a> [rules](#input\_rules) | Permissions for the role | <pre>list(object({<br/>    api_groups = list(string)<br/>    resources  = list(string)<br/>    verbs      = list(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_subjects"></a> [subjects](#input\_subjects) | Subjects to assign the role to | <pre>list(object({<br/>    kind      = string<br/>    name      = string<br/>    api_group = string<br/>  }))</pre> | n/a | yes |

## Outputs

No outputs.
