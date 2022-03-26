module "test" {
  source                 = "./modules/template_repository"
  repository_description = ""
  repository_name        = "tf-repo-template"
}
module "my_new_repo" {
  source                 = "./modules/template_repository"
  repository_description = ""
  repository_name        = "test_repository"
}
