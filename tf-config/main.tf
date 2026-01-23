resource "github_team" "team" {
    for_each = local.teams_map

    name                      = each.value.name
    description               = each.value.description
    privacy                   = "closed"
}
