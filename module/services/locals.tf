locals {
  harness_service = [
    {
      "name"            = "mongodb-operator"
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
      "name"            = "istio-base"
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
      "name"            = "cert-manager"
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
      "name"            = "external-dns"
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