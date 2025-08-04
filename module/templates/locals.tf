locals {
  harness_templates = [
    {
      "name"            = "build-container-stage"
      "identifier"      = "buildcontainerstage"
      "scope"           = "Org"
      "version"         = "1.0.0"
      "import_from_git" = true
      "git_details" = {
        "store_type" = "REMOTE"
        "file_path"  = ".harness/templates/buildimage.yaml"
        "branch"     = "main"
      }
    },
    {
      "name"            = "helm-install-stage"
      "identifier"      = "helminstallstage"
      "scope"           = "Org"
      "version"         = "1.0.0"
      "import_from_git" = true
      "git_details" = {
        "store_type" = "REMOTE"
        "file_path"  = ".harness/templates/helminstall.yaml"
        "branch"     = "main"
      }
    }
  ]
}