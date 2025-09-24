output "vpc_id" {
  value = aws_vpc.user07-vpc.id
}

output "user07_public01_id" {
  value = aws_subnet.user07-public01.id
}

output "user07_public02_id" {
  value = aws_subnet.user07-public02.id
}

output "user07_private01_id" {
  value = aws_subnet.user07-private01.id
}

output "user07_private02_id" {
  value = aws_subnet.user07-private02.id
}
