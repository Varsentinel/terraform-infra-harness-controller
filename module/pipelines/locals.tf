locals {
  ci_pipelines = [
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