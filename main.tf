terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    # helm = {
    #   version = "~> 2.6.0"
    # }
  }
}

provider "aws" {
  region = var.aws_region
}


# provider "helm" {
#   kubernetes {
#     host                   = module.eks.eks_host
#     cluster_ca_certificate = base64decode(module.eks.cluster_ca_certificate)
#     token                  = module.eks.eks_token
#   }
# }
