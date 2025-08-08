locals {
  inputsets = [
    {
      "name"                = "frontend-service-dev"
      "identifier"          = "frontendservicedev"
      "pipeline_identifier" = "Build_Image"
      "import_from_git"     = true
      "git_import_info" = {
        "branch_name"   = "main"
        "file_path"     = ".harness/inputsets/buildimage/frontend-service-dev.yaml"
        "connector_ref" = "org.inventium"
        "repo_name"     = "harness-nextgen-cd"
      }
      "input_set_import_request" = {
        "input_set_name"        = "frontend-service-dev"
        "input_set_description" = ""
      }
    },
    {
      "name"                = "inventory-service-dev"
      "identifier"          = "inventoryservicedev"
      "pipeline_identifier" = "Build_Image"
      "import_from_git"     = true
      "git_import_info" = {
        "branch_name"   = "main"
        "file_path"     = ".harness/inputsets/buildimage/inventory-service-dev.yaml"
        "connector_ref" = "org.inventium"
        "repo_name"     = "harness-nextgen-cd"
      }
      "input_set_import_request" = {
        "input_set_name"        = "inventory-service-dev"
        "input_set_description" = ""
      }
    }
  ]
}