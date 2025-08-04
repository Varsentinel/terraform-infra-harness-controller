terraform {
  backend "remote" {
    organization = "Varsentinel"
  }

  required_providers {
    harness = {
      source  = "harness/harness"
      version = "0.37.3"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.9.0"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
provider "digitalocean" {
  token = var.do_token
}