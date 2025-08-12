resource "harness_platform_infrastructure" "k8s_apps_infrastructure" {
  lifecycle {
    ignore_changes = [name, yaml, git_details]
  }
  for_each        = { for infrastructure in local.harness_infrastructures : infrastructure.identifier => infrastructure }
  identifier      = each.value.identifier
  name            = each.value.name
  org_id          = var.harness_infrastructure_org_identifier
  env_id          = each.value.env_id
  type            = each.value.infrastructure_type
  deployment_type = each.value.deployment_type
  git_details {
    branch          = each.value.git_details.branch
    file_path       = each.value.git_details.file_path
    connector_ref   = each.value.git_details.connector_ref
    repo_name       = each.value.git_details.repo_name
    store_type      = each.value.git_details.store_type
    import_from_git = each.value.git_details.import_from_git
  }
}

