output "instance_type" {
  value = aws_instance.ec2.instance_type
}

output "id" {
  value = aws_instance.ec2.id
}

output "public_dns" {
  value = aws_instance.ec2.public_dns
}

output "public_ip" {
  value = aws_instance.ec2.public_ip
}