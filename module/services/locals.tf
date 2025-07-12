locals {
  harness_service = [
    {
      "name"            = "MongoDB Operator"
      "identifier"      = "mongodooperator"
      "import_from_git" = "true"
      "git_details" = {
        "store_type"    = "REMOTE"
        "connector_ref" = "harnessnextgencd"
        "repo_name"     = "harness-nextgen-cd"
        "file_path"     = ".harness/services/mongodooperator.yaml"
        "branch"        = "main"
      }
    }
  ]
}