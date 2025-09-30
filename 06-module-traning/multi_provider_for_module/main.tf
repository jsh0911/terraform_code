provider "aws" {
  region = "us-west-1" # 켈리포니아 리전
}

provider "aws" { # 여기에 리전 한개밖에 못적음
  alias  = "seoul" # 두번째 리전부터는 alias 붙여주기
  region = "ap-northeast-2"
}

module "ec2_califonia" {
  source = "../modules/terraform-aws-ec2"
}

module "ec2_seoul" {
  source = "../modules/terraform-aws-ec2"
  providers = {
    aws = aws.seoul
  }
  instance_type = "t2.nano"
}