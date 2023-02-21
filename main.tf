# module "vpc" {
#   source = "git::https://github.com/lolitaad1989/tf-module-vpc.git"
# }

#b default it clones from main branch
#we cannot parameterize on module souces

module "vpc" {
  source = "./vendor/modules/vpc"
  VPC_CIDR = var.VPC_CIDR
  ENV = var.ENV
  AZ= var.AZ
  PUBLIC_SUBNET_CIDR = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  
}


