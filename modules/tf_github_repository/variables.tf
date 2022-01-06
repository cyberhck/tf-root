variable "repository_name" {
  type = string
  description = "name of repository to be created"
}

variable "repository_description" {
  type = string
  description = "description of repository"
}

variable "github_pat" {
  type = string
  description = "github personal access token"
}

variable "tfe_organization" {
  type = string
  description = "terraform organization"
}
