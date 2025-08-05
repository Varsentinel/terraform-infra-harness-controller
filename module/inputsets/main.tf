resource "harness_platform_input_set" "main" {
  for_each = { for inputset in local.inputsets : inputset.identifier => inputset }

  identifier      = each.value.identifier
  org_id          = var.org_id
  project_id      = var.project_id
  name            = each.value.name
  pipeline_id     = each.value.pipeline_identifier
  import_from_git = each.value.import_from_git

  git_import_info {
    branch_name   = each.value.git_import_info.branch_name
    file_path     = each.value.git_import_info.file_path
    connector_ref = each.value.git_import_info.connector_ref
    repo_name     = each.value.git_import_info.repo_name
  }

  input_set_import_request {
    input_set_name        = each.value.input_set_import_request.input_set_name
    input_set_description = each.value.input_set_import_request.input_set_description
  }
}