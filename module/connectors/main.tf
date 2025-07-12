resource "harness_platform_connector_gitlab" "harness_nextgen_cd" {
  for_each        = { for connector in local.git_connectors : connector.identifier => connector }
  identifier      = each.value.identifier
  name            = each.value.name
  description     = each.value.description
  tags            = each.value.tags
  project_id      = each.value.scope == "Project" ? var.project_id : null
  org_id          = var.org_id
  url             = each.value.url
  connection_type = each.value.connection_type
  validation_repo = each.value.repos[0].name
  credentials {
    http {
      username  = each.value.username
      token_ref = each.value.password
    }
  }
  api_authentication {
    token_ref = each.value.password
  }
}

resource "harness_platform_connector_helm" "harness_connector" {
  for_each = { for connector in local.helm_connectors : connector.identifier => connector }

  identifier = each.value.identifier
  name       = each.value.name
  url        = each.value.url
  dynamic "credentials" {
    for_each = each.value.anonymous ? [] : [1]
    content {
      username     = each.value.username
      password_ref = each.value.password
    }
  }
  depends_on = [harness_platform_connector_gitlab.harness_nextgen_cd]
}