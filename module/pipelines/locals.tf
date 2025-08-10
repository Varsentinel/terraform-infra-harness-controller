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
      "name"       = "Deploy Istio Base"
      "identifier" = "DeployIstioBase"
      "git_details" = {
        "file_path" = ".harness/continous_deployment/deploy_istio_base.yaml"
      }
    }
  ]
}