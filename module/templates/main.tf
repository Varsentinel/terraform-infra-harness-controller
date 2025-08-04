resource "harness_platform_template" "harness_templates" {
  for_each = { for template in local.harness_templates : template.identifier => template }

  identifier      = each.value.identifier
  name            = each.value.name
  org_id          = var.harness_org_identifier
  project_id      = each.value.scope == "Project" ? var.harness_project_identifier : null
  version         = each.value.version
  is_stable       = true
  import_from_git = each.value.import_from_git
  git_import_details {
    branch_name   = each.value.git_details.branch
    file_path     = each.value.git_details.file_path
    connector_ref = "org.inventium"
    repo_name     = "harness-nextgen-cd"
  }
  template_import_request {
    template_name        = each.value.name
    template_version     = each.value.version
    template_description = ""
  }
}