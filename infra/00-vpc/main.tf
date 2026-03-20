

module "vpc" {
    source = "git::https://github.com/Nthumma123/roboshop-terraform.git//modules/terraform-aws-vpc?ref=main"
    project = var.project
    environment = var.environment
    #is_peering_required = true
}