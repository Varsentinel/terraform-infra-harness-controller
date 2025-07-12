locals {
  helm_connectors = [
    {
      "name"       = "MongoDB Operator"
      "identifier" = "mongodboperator"
      "anonymous"  = true
      "url"        = "https://mongodb.github.io/helm-charts"
      "username"   = "null"
      "password"   = "null"
    }
  ]
}

locals {
  git_connectors = [
    {
      "name"            = "MicroFlex GitLab"
      "identifier"      = "microflexgitlab"
      "anonymous"       = true
      "description"     = "MicroFlex GitLab"
      "connection_type" = "Account"
      "scope"           = "Project"
      "url"             = "https://gitlab.com/micro-flex"
      "username"        = "nylespham"
      "password"        = "account.MicroFlexGitLab"
      "tags"            = ["microflex"]
      repos = [
        {
          "name" = "harness-nextgen-cd"
        }
      ]
    }
  ]
}