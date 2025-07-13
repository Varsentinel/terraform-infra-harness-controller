locals {
  harness_templates = [
    {
      "name"            = "build-image-stage"
      "identifier"      = "buildimagestage"
      "version"         = "1.0.0"
      "import_from_git" = "true"
      "git_details" = {
        "store_type"    = "REMOTE"
        "file_path"     = ".harness/templates/buildimage.yaml"
        "branch"        = "main"
      }
    }
  ]
}