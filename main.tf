provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = var.harness_account_id
  platform_api_key = var.harness_platform_api_key
}

provider "helm" {
  kubernetes {
    host = var.kubernetes_host
    # token                  = var.kubernetes_token
    cluster_ca_certificate = base64decode(var.kubernetes_cluster_ca_certificate)
    token                  = var.do_token
  }
}

module "delegate" {
  source  = "harness/harness-delegate/kubernetes"
  version = "0.2.3"

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
  source                   = "./module/kubernetes"
  k8s_connector_identifier = local.k8s_connector_id
  k8s_cluster_name         = var.harness_delegate_name
  k8s_connector_name       = var.harness_delegate_name
  harness_delegate_name    = var.harness_delegate_name
  depends_on               = [module.delegate]
}

module "harness_platform_environment" {
  source                     = "./module/environments"
  harness_env_name           = var.harness_env_name
  harness_env_identifier     = local.harness_env_id
  harness_org_identifier     = var.harness_org_identifier
  harness_project_identifier = var.harness_project_identifier
  harness_env_type           = var.harness_env_type # PreProduction
  depends_on                 = [module.harness_platform_connector_kubernetes]
}

module "harness_platform_infrastructure" {
  source                                      = "./module/infrastructures"
  harness_infrastructure_identifier           = local.harness_infrastructure_id
  harness_infrastructure_name                 = var.harness_delegate_name
  harness_infrastructure_org_identifier       = var.harness_org_identifier
  harness_infrastructure_project_identifier   = var.harness_project_identifier
  harness_infrastructure_release_name         = var.harness_infrastructure_release_name
  harness_infrastructure_env_identifier       = local.harness_env_id
  harness_infrastructure_type                 = var.harness_infrastructure_type            #KUBERNETES
  harness_infrastructure_deployment_type      = var.harness_infrastructure_deployment_type #KubernetesDirect
  harness_infrastructure_namespace            = var.harness_namespace
  harness_infrastructure_connector_identifier = var.harness_delegate_name
  depends_on                                  = [module.harness_platform_environment]
}