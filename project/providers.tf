terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.10.2"
    }
  }

  # This is Hetzner's Object Storage (Ceph) for Terraform state.
  backend "s3" {
    bucket = "zab-projects"
    key    = "reference-documentation/project/terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
  } 
}

variable "github_token" {
  type        = string
  description = "The GitHub token to use for authentication"
  sensitive   = true
}

provider "github" {
  token = var.github_token
}
