resource "github_repository" "repository" {
  name                   = var.repository_name
  is_template            = var.is_template
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

resource "github_branch_default" "default_branch" {
  branch     = "main"
  repository = github_repository.repository.name
}

resource "github_branch_protection" "branch_protection" {
  pattern                = "main"
  repository_id          = github_repository.repository.node_id
  enforce_admins         = true
  allows_deletions       = false
  require_signed_commits = true
  required_pull_request_reviews {
    dismiss_stale_reviews           = false
    required_approving_review_count = 1
    require_code_owner_reviews      = false
  }
}
