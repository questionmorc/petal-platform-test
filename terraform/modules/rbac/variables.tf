variable "name" {
  type        = string
  description = "Name of the role and role binding"
}

variable "namespace" {
  type        = string
  description = "Namespace to create the role in"
}

variable "rules" {
  type = list(object({
    api_groups = list(string)
    resources  = list(string)
    verbs      = list(string)
  }))
  description = "Permissions for the role"
}

variable "subjects" {
  type = list(object({
    kind      = string
    name      = string
    api_group = string
  }))
  description = "Subjects to assign the role to"
}
