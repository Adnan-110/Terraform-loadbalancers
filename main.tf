module "alb-public"{
  # source              = "git::https://github.com/Adnan-110/Terraform-module-alb.git"
  source                = "./vendor/modules/alb"
  
  ENV                   = var.ENV
  INTERNAL              = false
  ALB_NAME              = "roboshop-${var.ENV}-public-alb"
}

module "alb-private"{
  # source              = "git::https://github.com/Adnan-110/Terraform-module-alb.git"
  source                = "./vendor/modules/alb"
  
  ENV                   = var.ENV
  INTERNAL              = true
  ALB_NAME              = "roboshop-${var.ENV}-private-alb"
}


# We cannot parameterize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is that it clones the remote code from the specified branch and make it locally available.