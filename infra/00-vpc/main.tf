module "vpc"{
    source = "git::https://github.com/Nthumma123/roboshop-infra-dev.git//modules/terraform-aws-vpc?ref=main"
    project = var.project
    environment = var.environment
}

