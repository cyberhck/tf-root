module "module" {
  source                 = "../github_repository"
  repository_name        = var.repository_name
  repository_description = var.repository_description
  is_template            = true
}
