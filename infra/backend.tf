terraform {
  backend "s3" {
    bucket = "cloudnative-cloudflare"
    key    = "tf-state/kubefest.tfstate"
    region = "us-east-1"
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}