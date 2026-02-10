variable "github_token" {
  type        = string
  description = "A GitHub PAT with repo and admin:org permissions"
}

variable "github_organization" {
  type        = string
  default     = "sgibson91-test-org"
  description = "The name/slug of the GitHub organisation to operate within"
}

variable "team" {
  type        = string
  description = "The GitHub Team to manage"
}
