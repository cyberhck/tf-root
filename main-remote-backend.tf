terraform {
  backend "remote" {
    organization = "cyberhck"
    hostname = "app.terraform.io"
  }
  required_providers {
    github = {
      source = "hashicorp/github"
      version = ">= 4.18.0"
    }
  }
  required_version = "~>1.0"
}

provider "github" {
  owner = "cyberhck"
  token = var.gh_token
}
