output "vpc_id" {
  value = module.vpc.vpc_id
}


resource "aws_ssm_parameter" "vpc_id" {
  type = "String"
  name = format("/%s/%s/%s", var.vpc_name, replace(local.name, " ", ""), "vpc_id")
  # name  = format("/%s/%s", var.vpc_name, replace(local.name," ",""))
  value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  value = module.vpc.vpc_cidr_block
}

resource "aws_ssm_parameter" "vpc_cidr_block" {
  type  = "String"
  name  = format("/%s/%s/%s", var.vpc_name, replace(local.name, " ", ""), "vpc_cidr_block")
  value = module.vpc.vpc_cidr_block
}


output "private_subnet" {
  value = module.vpc.private_subnets
}

resource "aws_ssm_parameter" "private_subnets" {
  type  = "StringList"
  name  = format("/%s/%s/%s", var.vpc_name, replace(local.name, " ", ""), "private_subnets")
  value = join(",", module.vpc.private_subnets)
}

output "public_subnets" {
  value = module.vpc.private_subnets
}

resource "aws_ssm_parameter" "public_subnets" {
  type  = "StringList"
  name  = format("/%s/%s/%s", var.vpc_name, replace(local.name, " ", ""), "public_subnets")
  value = join(",", module.vpc.public_subnets)
}

output "nat_public_ips" {
  value = join(",", module.vpc.nat_public_ips)
}

resource "aws_ssm_parameter" "nat_public_ips" {
  type  = "StringList"
  name  = format("/%s/%s/%s", var.vpc_name, replace(local.name, " ", ""), "nat_public__ips")
  value = join(",", module.vpc.nat_public_ips)

}


output "azs" {
  value = module.vpc.azs
}

resource "aws_ssm_parameter" "azs" {
  type  = "String"
  name  = format("/%s/%s/%s", var.vpc_name, replace(local.name, " ", ""), "azs")
  value = join(",", module.vpc.azs)
}