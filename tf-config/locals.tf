locals {
  yaml_path     = "${path.root}/.."
  yaml_filename = "teams.yaml"
  yaml_data     = yamldecode(file("${local.yaml_path}/${local.yaml_filename}"))
  teams_map     = { for team in local.yaml_data : team.name => team }
  
  # Flatten team-repository permissions for github_team_repository resource
  team_repo_permissions = flatten([
    for team in local.yaml_data : [
      for permission in lookup(team, "permissions", []) : {
        team_name = team.name
        repo      = permission.repo
        role      = permission.role
        key       = "${team.name}-${permission.repo}"
      }
    ]
  ])
  team_repo_map = { for item in local.team_repo_permissions : item.key => item }
}
