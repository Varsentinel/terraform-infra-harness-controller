resource "harness_platform_environment" "k8s_environment" {
  for_each   = { for env in local.harness_envs : env.identifier => env }
  identifier = each.value.identifier
  name       = each.value.name
  org_id     = each.value.org_id
  type       = each.value.type
  git_details {
    store_type      = each.value.git_details.store_type
    connector_ref   = each.value.git_details.connector_ref
    repo_name       = each.value.git_details.repo_name
    file_path       = each.value.git_details.file_path
    branch          = each.value.git_details.branch
    import_from_git = each.value.git_details.import_from_git
  }

}