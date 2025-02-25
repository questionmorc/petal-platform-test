resource "kubernetes_role" "role" {
  metadata {
    name      = var.name # Role name
    namespace = var.namespace # Namespace to create the role in
  }
  rules = var.rules # Permissions for the role
}

resource "kubernetes_role_binding" "role_binding" {
  metadata {
    name      = var.name # Role binding name
    namespace = var.namespace
  }
  subjects {
    kind = "User"
    name = var.user # User to assign the role to
    api_group = ""
  }
  role_ref {
    kind      = "Role"
    name      = kubernetes_role.role.metadata[0].name
    api_group = ""
  }
}

