resource "kubernetes_role" "role" {
  metadata {
    name      = var.name      # Role name
    namespace = var.namespace # Namespace to create the role in
  }
  dynamic "rule" {
    for_each = var.rules
    content {
      api_groups = rule.value.api_groups
      resources  = rule.value.resources
      verbs      = rule.value.verbs
    }
  }
}

resource "kubernetes_role_binding" "role_binding" {
  metadata {
    name      = var.name # Role binding name
    namespace = var.namespace
  }

  dynamic "subject" {
    for_each = var.subjects
    content {
      kind      = subject.value.kind
      name      = subject.value.name
      api_group = subject.value.api_group
    }
  }
  role_ref {
    kind      = "Role"
    name      = kubernetes_role.role.metadata[0].name
    api_group = "rbac.authorization.k8s.io"
  }
}

