# output "team_repo_permissions" {
#   value = local.team_repo_permissions
# }

output "team_name" {
  value = local.team_name
}

output "team_description" {
  value = local.team_description
}

output "team_members" {
  value = local.yaml_data.members
}
