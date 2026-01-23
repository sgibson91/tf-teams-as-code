locals {
  yaml_path     = "${path.root}/.."
  yaml_filename = "teams.yaml"
  yaml_data     = yamldecode(file("${local.yaml_path}/${local.yaml_filename}"))
  teams_map     = { for team in local.yaml_data : team.name => team }
}
