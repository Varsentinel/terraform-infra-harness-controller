locals {
  harness_infrastructures = [
    {
      "name"                = "Istio Base"
      "identifier"          = "istiobase"
      "env_id"              = "vse_dev_apps"
      "infrastructure_type" = "KubernetesDirect"
      "deployment_type"     = "NativeHelm"
      "git_details" = {
        "store_type"      = "REMOTE"
        "connector_ref"   = "org.inventium"
        "repo_name"       = "harness-nextgen-cd"
        "file_path"       = ".harness/infrastructure/istio_base.yaml"
        "branch"          = "main"
        "import_from_git" = true
      }
    }
  ]
}