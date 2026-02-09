variable "github_token" {
  description = "A GitHub PAT with repo and admin:org permissions"
}

variable "github_organization" {
  default     = "sgibson91-test-org"
  description = "The name/slug of the GitHub organisation to operate within"
}

variable "team" {
  description = "The GitHub Team to manage"
}
