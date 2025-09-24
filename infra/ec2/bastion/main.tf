// Bastion Server 구축
resource "aws_instance" "user07-bastion" {
  ami                         = "ami-077ad873396d76f6a"
  instance_type               = "t2.micro"
  subnet_id                   = element(var.public_subnet_id, 0) // var.public_subnet_id[0]
  vpc_security_group_ids      = ["sg-0a4f09cf8c97f44c6"] // ssh-accept
  key_name                    = "user07-key"
  associate_public_ip_address = true
  tags = {
    Name = "user07-bastion"
  }
}