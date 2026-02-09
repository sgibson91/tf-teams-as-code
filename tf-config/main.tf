resource "github_team" "team" {
  name        = local.team_name
  description = local.team_description
  privacy     = "closed"
}

# resource "github_team_repository" "team_repos" {
#   for_each = local.team_repo_map

#   team_id    = github_team.teams[each.value.team_name].id
#   repository = each.value.repo
#   permission = each.value.role
# }

resource "github_team_membership" "team_members" {
  for_each = local.yaml_data.members

  team_id  = github_team.team.id
  username = each.value
}
