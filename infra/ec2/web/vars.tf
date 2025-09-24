variable "region" {
  type    = string
  default = "ap-northeast-2"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0c7750b0025cf323a"
}
variable "public_subnet_id" {
  type    = list(any)
  default = ["subnet-08da1208b4e631aba", "subnet-00953385ef2935f31"]
}
variable "private_subnet_id" {
  type    = list(any)
  default = ["subnet-0781a01047c76fb51", "subnet-0a119db89bdd777f7"]

}

# variable "security_group_id" {
#   type = list
#   default = ["sg-0a4f09cf8c97f44c6", "sg-02d13d8232dcc4e1a", "sg-0fbc6a1d458a72bf9"]
# }