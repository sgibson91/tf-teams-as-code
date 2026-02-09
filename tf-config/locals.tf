locals {
  yaml_path     = "${path.root}/../teams"
  yaml_filename = "${var.team}.yaml"
  yaml_data     = yamldecode(file("${local.yaml_path}/${local.yaml_filename}"))

  # Extract team name and description
  team_name        = local.yaml_data.name
  team_description = local.yaml_data.description
}
