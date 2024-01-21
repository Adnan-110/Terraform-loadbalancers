module "alb-public"{
  # source              = "git::https://github.com/Adnan-110/Terraform-module-alb.git"
  source                = "./vendor/modules/alb"
  
  ENV                   = var.ENV
}

module "alb-private"{
  # source              = "git::https://github.com/Adnan-110/Terraform-module-alb.git"
  source                = "./vendor/modules/alb"
  
  ENV                   = var.ENV
}

# We cannot parameterize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is that it clones the remote code from the specified branch and make it locally available.