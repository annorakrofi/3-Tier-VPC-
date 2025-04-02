variable "aws_region" {
  description = "Region in which AWS resoources will be create"
  type        = string
  default     = "us-east-1a"
}

variable "Environment" {
  description = "Enviroment variable to be used as prefix"
  type        = string
  default     = "dev"
}

variable "team" {
  description = "The team in the large organisation"
  type        = string
  default     = "Data_Science"
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "project-vpc"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR BLOCK"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpc_public_subnets" {
  description = "Public subnet"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_private_subnets" {
  description = "Private subnet"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_database_subnets" {
  type    = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]

}
variable "vpc_create_database_subnet_group" {
  type    = bool
  default = true
}


variable "vpc_enable_nat_gateway" {
  type    = bool
  default = true
}

variable "vpc_create_database_subnet_route_table" {
  type    = bool
  default = true
}

variable "vpc_single_nat_gateway" {
  type    = bool
  default = true
}

