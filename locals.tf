locals {
  k8s_connector_id          = replace(var.harness_delegate_name, "-", "_")
  harness_env_id            = replace(var.harness_delegate_name, "-", "_")
  harness_infrastructure_id = replace(var.harness_delegate_name, "-", "_")
}