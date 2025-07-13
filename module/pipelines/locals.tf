locals {
  ci_pipelines = [
    {
      "name"       = "Build Image"
      "identifier" = "Build_Image"
      "git_details" = {
        "file_path" = ".harness/continous_integrations/build-image.yaml"
      }
    }
  ]
}