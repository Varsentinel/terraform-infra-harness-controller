resource "harness_platform_service" "harness_service" {
  for_each = local.harness_service

  identifier  = each.value.identifier
  name        = each.value.name
  import_from_git = each.value.import_from_git
  git_details {
    store_type = each.value.git_details.store_type
    connector_ref = each.value.git_details.connector_ref
    repo_name = each.value.git_details.repo_name
    file_path = each.value.git_details.file_path
    branch = each.value.git_details.branch
  }
}