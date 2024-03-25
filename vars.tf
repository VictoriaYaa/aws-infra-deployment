variable "aws_region" { 
    type = string
    default = "us-east-1"
}

variable "aws_account" { 
    type = string
    default = "639595389055"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "public_internal_cidrs" { type = list(string) }
