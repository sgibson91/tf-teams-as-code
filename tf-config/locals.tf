locals {
  yaml_path     = "${path.root}/.."
  yaml_filename = "teams.yaml"
  yaml_data     = yamldecode(file("${local.yaml_path}/${local.yaml_filename}"))
}
