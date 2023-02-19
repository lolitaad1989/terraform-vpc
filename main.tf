module "vpc" {
  source = "git::https://github.com/lolitaad1989/tf-module-vpc.git"
}

#b default it clones from main branch
#we cannot parameterize on module souces