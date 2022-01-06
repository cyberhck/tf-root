resource "github_repository" "repository" {
  name                   = var.repository_name
  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_squash_merge     = true
  auto_init              = true
  delete_branch_on_merge = true
  description            = var.repository_description
  has_issues             = true
  has_projects           = true
  has_wiki               = false
  visibility             = "public"
  vulnerability_alerts   = true
}
