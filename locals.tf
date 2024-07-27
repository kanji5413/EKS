#no need to use this here you can use locls.tf in your local machine somewhere ypur using modules thta place it self only 

locals {
  owners      = var.business_division
  environment = var.environment
  name        = "${var.business_division}-${var.environment}"
  common_tags = {
    Owners      = local.owners
    Environment = local.environment
  }
}
