terraform {
  backend "remote" {
    organization = "cyberhck"
    hostname = "app.terraform.io"
    workspaces {
      name = "tf-root"
    }
  }
  required_providers {
    github = {
      source = "integrations/github"
      version = ">= 4.18.0"
    }
  }
  required_version = "~>1.0"
}

provider "github" {
  alias = "personal"
  owner = "cyberhck"
  token = var.gh_token
}

provider "github" {
  alias        = "fossapps"
  organization = "fossapps"
  token        = var.gh_token
}

provider "github" {
  alias        = "smsnepal"
  organization = "smsnepal"
  token        = var.gh_token
}
