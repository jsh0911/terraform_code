// 단일 WEB Server 구축
resource "aws_instance" "user07-web" {
  ami                         = "ami-077ad873396d76f6a"
  instance_type               = "t2.micro"
  subnet_id                   = element(var.private_subnet_id, 0) // var.public_subnet_id[0]
  vpc_security_group_ids      = ["sg-0a4f09cf8c97f44c6", "sg-02d13d8232dcc4e1a", "sg-0fbc6a1d458a72bf9"]
  key_name                    = "user07-key"
// Public IP 비활성화
  tags = {
    Name = "user07-web"
  }
}