locals {
    common_tags = {
        project = var.project
        environment = var.environment
        terraform = true
    }
  
  /*   sg_final_tags = merge(
        local.common_tags,
        {
            name = "${var.project}-${var.environment}-sg"
        }
        ) */
}