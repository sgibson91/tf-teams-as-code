resource "github_team" "team" {
  name        = local.team_name
  description = local.team_description
  privacy     = "closed"
}

resource "github_team_repository" "team_repos" {
  for_each = { for perm in local.yaml_data.permissions : perm.repo => perm.role }

  team_id    = github_team.team.id
  repository = each.key
  permission = each.value
}

resource "github_team_membership" "team_members" {
  for_each = toset(local.yaml_data.members)

  team_id  = github_team.team.id
  username = each.value
}
