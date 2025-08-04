provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = var.harness_account_id
  platform_api_key = var.harness_platform_api_key
}

provider "helm" {
  kubernetes {
    host                   = var.kubernetes_host
    cluster_ca_certificate = base64decode(var.kubernetes_cluster_ca_certificate)
    token                  = var.do_token
  }
}

module "harness_platform_connector" {
  source     = "./module/connectors"
  project_id = var.harness_project_identifier
  org_id     = var.harness_org_identifier
}

module "delegate" {
  #checkov:skip=CKV_TF_2: not applicable
  #checkov:skip=CKV_TF_1: not applicable
  source  = "harness/harness-delegate/kubernetes"
  version = "0.2.4"

  account_id       = var.harness_account_id
  delegate_token   = var.harness_delegate_token
  delegate_name    = var.harness_delegate_name
  deploy_mode      = var.harness_delegate_mode
  namespace        = var.harness_namespace
  manager_endpoint = "https://app.harness.io"
  delegate_image   = "us-docker.pkg.dev/gar-prod-setup/harness-public/${var.harness_delegate_image}"
  replicas         = var.harness_delegate_replicas
  upgrader_enabled = var.harness_delegate_upgrade_enabled
}

module "harness_platform_connector_kubernetes" {
  source                     = "./module/kubernetes"
  k8s_connector_identifier   = local.k8s_connector_id
  k8s_cluster_name           = var.harness_delegate_name
  k8s_connector_name         = var.harness_delegate_name
  harness_delegate_name      = var.harness_delegate_name
  harness_org_identifier     = var.harness_org_identifier
  harness_project_identifier = var.harness_project_identifier
  depends_on                 = [module.delegate]
}

module "harness_platform_environment" {
  source     = "./module/environments"
  depends_on = [module.harness_platform_connector_kubernetes, module.harness_platform_connector]
}

module "harness_platform_infrastructure" {
  source                                = "./module/infrastructures"
  harness_infrastructure_org_identifier = var.harness_org_identifier
  depends_on                            = [module.harness_platform_environment, module.harness_platform_connector]
}

module "harness_platform_service" {
  source                     = "./module/services"
  harness_org_identifier     = var.harness_org_identifier
  harness_project_identifier = var.harness_project_identifier
  depends_on                 = [module.harness_platform_connector, module.harness_platform_infrastructure]
}

module "harness_platform_template" {
  source                     = "./module/templates"
  harness_org_identifier     = var.harness_org_identifier
  harness_project_identifier = var.harness_project_identifier
  depends_on                 = [module.harness_platform_connector]
}

module "harness_platform_pipeline" {
  source                     = "./module/pipelines"
  harness_org_identifier     = var.harness_org_identifier
  harness_project_identifier = var.harness_project_identifier
  depends_on                 = [module.harness_platform_template, module.harness_platform_connector]
}
