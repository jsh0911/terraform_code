# provider "aws" {
#   region = "us-west-1"
# }

# provider "aws" {
#   alias  = "seoul"
#   region = "ap-northeast-2"
# }

# resource "aws_instance" "app_server" {
#   provider      = aws.seoul
#   ami           = "ami-0e1d09d8b7c751816"
#   instance_type = "t2.micro"
# }

## 프로바이더 요구사항 정의

terraform {
  # 테라폼 버전 설정
  required_version = ">= 1.5.7, < 2.0.0"
  # 공급자 설정
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-northeast-2"
}

