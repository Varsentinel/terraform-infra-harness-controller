variable "harness_infrastructure_name" {
  description = "Name of the infrastructure"
  type        = string
}

variable "harness_infrastructure_identifier" {
  description = "Identifier of the infrastructure"
  type        = string
}

variable "harness_infrastructure_org_identifier" {
  description = "Organization identifier"
  type        = string
}

variable "harness_infrastructure_project_identifier" {
  description = "Project identifier"
  type        = string
}

variable "harness_infrastructure_env_identifier" {
  description = "Environment identifier"
  type        = string
}

variable "harness_infrastructure_deployment_type" {
  description = "Deployment type"
  type        = string
  default     = "Kubernetes"
}

variable "harness_infrastructure_type" {
  description = "Infrastructure type"
  type        = string
  default     = "KubernetesDirect"
}

variable "harness_infrastructure_connector_identifier" {
  description = "Connector reference"
  type        = string
}

variable "harness_infrastructure_namespace" {
  description = "Kubernetes namespace"
  type        = string
}

variable "harness_infrastructure_release_name" {
  description = "Release name"
  type        = string
}