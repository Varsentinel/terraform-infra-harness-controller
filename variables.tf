variable "harness_account_id" {
  description = "The Harness account ID"
  type        = string
  sensitive   = true
}

variable "harness_platform_api_key" {
  description = "The Harness platform API key"
  type        = string
  sensitive   = true
}

variable "kubernetes_host" {
  description = "The Kubernetes API server host"
  type        = string
  sensitive   = true
}

variable "do_token" {
  description = "The Kubernetes API token"
  type        = string
  sensitive   = true
}

variable "kubernetes_cluster_ca_certificate" {
  description = "The base64 encoded Kubernetes cluster CA certificate"
  type        = string
  sensitive   = true
}

variable "harness_delegate_name" {
  description = "The Harness delegate name"
  type        = string
}

variable "harness_delegate_mode" {
  description = "The Harness delegate mode"
  type        = string
  default     = "KUBERNETES"
}

variable "harness_namespace" {
  description = "The Harness namespace"
  type        = string
  default     = "harness-delegate-nextgen"
}

variable "harness_delegate_token" {
  description = "The Harness delegate token"
  type        = string
  sensitive   = true
}

variable "harness_delegate_image" {
  description = "The Harness delegate image"
  type        = string
  default     = "harness/delegate:25.06.86100"
}

variable "harness_delegate_replicas" {
  description = "The Harness delegate replicas"
  type        = number
  default     = 1
}

variable "harness_delegate_upgrade_enabled" {
  description = "The Harness delegate upgrade enabled"
  type        = bool
  default     = true
}

variable "harness_env_name" {
  description = "The Harness environment name"
  type        = string
}

variable "harness_project_identifier" {
  description = "The Harness project identifier"
  type        = string
}

variable "harness_env_type" {
  description = "The Harness environment type"
  type        = string
}

variable "harness_infrastructure_release_name" {
  description = "The Harness infrastructure release name"
  type        = string
}

variable "harness_infrastructure_type" {
  description = "The Harness infrastructure type"
  type        = string
  default     = "KUBERNETES"
}

variable "harness_infrastructure_deployment_type" {
  description = "The Harness infrastructure deployment type"
  type        = string
  default     = "KubernetesDirect"
}

variable "harness_org_identifier" {
  description = "The Harness organization identifier"
  type        = string
}