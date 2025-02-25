
resource "kubernetes_namespace" "namespace" {
  metadata {
    # name = var.name
    # labels = var.labels # Allow setting labels
    name = "dev-namespace"
    labels = "env=dev"
  }
}

output "name" {
  value = kubernetes_namespace.namespace.metadata[0].name
  description = "Name of the created namespace"
}

module "dev_namespace" {
  source = "./modules/namespace"
  name   = "dev-team"
  labels = {
    team = "dev"
    environment = "development"
  }
}

module "dev_rbac" {
  source = "./modules/rbac"
  name   = "developer"
  namespace = module.dev_namespace.name
  user = "dev-user@example.com"
  rules = [
    {
      api_groups = ["", "apps", "extensions", "networking.k8s.io"]
      resources  = ["deployments", "pods", "services", "ingresses"]
      verbs      = ["get", "list", "watch", "create", "update", "patch", "delete"]
    }
  ]
}

# module "prod_namespace" {
#   source = "./modules/namespace"
#   name   = "prod-team"
#   labels = {
#     team = "prod"
#     environment = "production"
#   }
# }
#
# module "prod_rbac" {
#   source = "./modules/rbac"
#   name   = "operator"
#   namespace = module.prod_namespace.name
#   user = "prod-operator@example.com"
#   rules = [
#     {
#       api_groups = ["", "apps", "extensions", "networking.k8s.io"]
#       resources  = ["deployments", "pods", "services", "ingresses", "namespaces"]
#       verbs      = ["get", "list", "watch", "create", "update", "patch", "delete", "admin"]
#     }
#   ]
# }
