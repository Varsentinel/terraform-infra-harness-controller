locals {
  harness_envs = [
    {
      "identifier" = "vse_dev_apps"
      "name"       = "vse-dev-apps"
      "org_id"     = "default"
      "project_id" = "inventium"
      "tags"       = ["vse-dev-apps"]
      "type"       = "PreProduction"
      "git_details" = {
        store_type      = "REMOTE"
        connector_ref   = "inventium"
        repo_name       = "harness-nextgen-cd"
        file_path       = ".harness/environment/vse-dev-app.yaml"
        branch          = "main"
        import_from_git = true
      }
    }
  ]
} 