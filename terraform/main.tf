
# resource "kubernetes_namespace" "dev_namespace" {
#   metadata {
#     name = "dev-team"
#   }
# }
#
# resource "kubernetes_role" "developer_role" {
#   metadata {
#     name      = "developer"
#     namespace = kubernetes_namespace.dev_namespace.metadata[0].name
#   }
#   rules {
#     api_groups = ["", "apps", "extensions"] # Example permissions
#     resources  = ["deployments", "pods", "services"]
#     verbs      = ["get", "list", "watch", "create", "update", "patch", "delete"]
#   }
# }
#
# resource "kubernetes_role_binding" "developer_role_binding" {
#   metadata {
#     name      = "dev-developers"
#     namespace = kubernetes_namespace.dev_namespace.metadata[0].name
#   }
#   subjects {
#     kind = "User" # Hypothetical user
#     name = "[email address removed]" # Replace with actual user info in a real scenario (e.g., OIDC)
#     api_group = ""
#   }
#   role_ref {
#     kind      = "Role"
#     name      = kubernetes_role.developer_role.metadata[0].name
#     api_group = ""
#   }
# }
