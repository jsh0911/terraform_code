variable "region" {
  type    = string
  default = "ap-northeast-2"
}

variable "cidr_block" {
  type    = string
  default = "10.7.0.0/16"
}

variable "public_subnet_cidr" {
  type    = list(any)
  default = ["10.7.0.0/20", "10.7.16.0/20"]
}

variable "private_subnet_cidr" {
  type    = list(any)
  default = ["10.7.64.0/20", "10.7.80.0/20"]
}

variable "azs" {
  type    = list(any)
  default = ["ap-northeast-2a", "ap-northeast-2c"]
}

