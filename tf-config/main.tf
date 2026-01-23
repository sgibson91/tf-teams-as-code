# resource "github_team" "team" {
#     for_each = local.yaml_data

#     name                      = each.value.name
#     description               = each.value.description
#     privacy                   = "closed"
# }
