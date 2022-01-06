module "module" {
  source = "../github_repository"
  repository_name = "tf-${var.repository_name}"
  repository_description = var.repository_description
}
