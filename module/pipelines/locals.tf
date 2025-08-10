locals {
  ci_pipelines = [
    {
      "name"       = "Build Image"
      "identifier" = "Build_Image"
      "git_details" = {
        "file_path" = ".harness/continous_integrations/build-image.yaml"
      }
    },
  ]
}
locals {
  cd_pipelines = [
    {
      "name"       = "Helm Depoy"
      "identifier" = "HelmDeploy"
      "git_details" = {
        "file_path" = ".harness/continous_deployment/helm_deploy.yaml"
      }
    }
  ]
}