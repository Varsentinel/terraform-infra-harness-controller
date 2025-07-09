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
      "name"            = "Harness Nextgen CD"
      "identifier"      = "harnessnextgencd"
      "anonymous"       = true
      "description"     = "Harness Nextgen CD"
      "connection_type" = "Repo"
      "scope"           = "Project"
      "url"             = "https://github.com/Varsentinel/harness-nextgen-cd"
      "username"        = "nylespham"
      "password"        = "account.VarsentinelGitHubPAT"
      "tags"            = ["microflex"]
    }
  ]
}