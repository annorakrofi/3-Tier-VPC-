locals {
  owners     = var.team
  enviromnet = var.Environment
  name       = "${var.team} - ${var.Environment}"
  common_tags = {
    owners     = local.owners
    Enviroment = local.enviromnet
  }
}