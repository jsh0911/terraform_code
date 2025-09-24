output "user07-public-ip" {
  value = aws_instance.user07-bastion.public_ip
}