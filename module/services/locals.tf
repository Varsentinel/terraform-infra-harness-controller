locals {
  harness_service = [
    {
      "name"            = "MongoDB Operator"
      "identifier"      = "mongodboperator"
      "import_from_git" = "true"
      "git_details" = {
        "store_type"    = "REMOTE"
        "connector_ref" = "org.inventium"
        "repo_name"     = "harness-nextgen-cd"
        "file_path"     = ".harness/services/mongodb_operator.yaml"
        "branch"        = "main"
      }
    },
    {
      "name"            = "Istio Base"
      "identifier"      = "istiobase"
      "import_from_git" = "true"
      "git_details" = {
        "store_type"    = "REMOTE"
        "connector_ref" = "org.inventium"
        "repo_name"     = "harness-nextgen-cd"
        "file_path"     = ".harness/services/istio_base.yaml"
        "branch"        = "main"
      }
    },
    {
      "name"            = "Cert Manager"
      "identifier"      = "certmanager"
      "import_from_git" = "true"
      "git_details" = {
        "store_type"    = "REMOTE"
        "connector_ref" = "org.inventium"
        "repo_name"     = "harness-nextgen-cd"
        "file_path"     = ".harness/services/cert-manager.yaml"
        "branch"        = "main"
      }
    },
    {
      "name"            = "ExternalDNS"
      "identifier"      = "externaldns"
      "import_from_git" = "true"
      "git_details" = {
        "store_type"    = "REMOTE"
        "connector_ref" = "org.inventium"
        "repo_name"     = "harness-nextgen-cd"
        "file_path"     = ".harness/services/externaldns.yaml"
        "branch"        = "main"
      }
    }
  ]
}