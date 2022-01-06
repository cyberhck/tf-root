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
  owner        = "cyberhck"
  token        = var.gh_token
}

provider "tfe" {
  token = var.tf_token
}

