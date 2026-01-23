resource "github_team" "teams" {
    for_each = local.teams_map

    name        = each.value.name
    description = each.value.description
    privacy     = "closed"
}

resource "github_team_repository" "team_repos" {
    for_each = local.team_repo_map

    team_id    = github_team.teams[each.value.team_name].id
    repository = each.value.repo
    permission = each.value.role
}
