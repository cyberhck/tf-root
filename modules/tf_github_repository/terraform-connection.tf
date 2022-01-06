resource "tfe_oauth_client" "tf_github_connection" {
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.github_pat
  organization     = data.tfe_organization.tfe_org.name
  service_provider = "github"
}

resource "tfe_workspace" "workspace" {
  name         = var.repository_name
  organization = data.tfe_organization.tfe_org.name
}

data "tfe_organization" "tfe_org" {
  name = var.tfe_organization
}
