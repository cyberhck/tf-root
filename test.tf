module "test" {
  source = "./modules/tf_github_repository"
  repository_description = ""
  repository_name = "test"
  github_pat = var.gh_token
  tfe_organization = "cyberhck"
}
