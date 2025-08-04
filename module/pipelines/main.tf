resource "harness_platform_pipeline" "harness_pipelines" {
  for_each = { for pipeline in local.ci_pipelines : pipeline.identifier => pipeline }

  identifier      = each.value.identifier
  org_id          = var.harness_org_identifier
  project_id      = var.harness_project_identifier
  name            = each.value.name
  import_from_git = true
  git_import_info {
    branch_name   = "main"
    file_path     = each.value.git_details.file_path
    connector_ref = "org.inventium"
    repo_name     = "harness-nextgen-cd"
  }
  pipeline_import_request {
    pipeline_name        = each.value.name
    pipeline_description = ""
  }
}