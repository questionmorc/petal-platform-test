resource "kubernetes_namespace" "team_rocket_project1" {
  metadata {
    name   = "team-rocket-project1"
    labels = {
      env = "dev"
    }
  }
}

module "team_rocket_project1_admin_rbac" {
  source    = "../../modules/rbac"
  name      = "team_rocket_project1_admin"
  namespace = kubernetes_namespace.team_rocket_project1.metadata[0].name
  subjects = [
    {
      kind      = "User"
      name      = "team_rocket_user1@gmail.com"
      api_group = "rbac.authorization.k8s.io"
    }
  ]
  rules = [
    {
      api_groups = ["*"]
      resources  = ["*"]
      verbs      = ["*"]
    }
  ]
}
