locals {
  harness_service = [
    {
      "name"            = "MongoDB Operator"
      "identifier"      = "mongodboperator"
      "import_from_git" = "true"
      "git_details" = {
        "store_type"    = "REMOTE"
        "connector_ref" = "microflexgitlab"
        "repo_name"     = "harness-nextgen-cd"
        "file_path"     = ".harness/services/mongodb_operator.yaml"
        "branch"        = "main"
      }
    }
  ]
}