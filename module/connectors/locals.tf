locals {
  helm_connectors = [
    {
      "name"       = "MongoDB Operator"
      "identifier" = "mongodboperator"
      "anonymous"  = true
      "url"        = "https://istio-release.storage.googleapis.com/charts"
      "username"   = "null"
      "password"   = "null"
    },
    {
      "name"       = "Istio"
      "identifier" = "istio"
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
      "name"            = "Inventium"
      "identifier"      = "inventium"
      "anonymous"       = true
      "description"     = "Inventium Github"
      "connection_type" = "Account"
      "scope"           = "Project"
      "url"             = "https://github.com/InventiumOrg"
      "username"        = "nylespham"
      "password"        = "account.inventium-github"
      "tags"            = ["inventium"]
      repos = [
        {
          "name" = "harness-nextgen-cd"
        }
      ]
    }
  ]
}