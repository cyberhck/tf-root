variable "repository_name" {
  type = string
  description = "name of repository to be created"
}

variable "repository_description" {
  type = string
  description = "description of repository"
}

variable "is_template" {
  type = bool
  default = false
  description = "weather or not this is a template repository"
}
