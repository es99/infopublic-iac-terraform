resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  disable_api_termination     = true         //(Optional, if true, enables ec2 instance termination protection.)
  iam_instance_profile        = var.iam_role //A role que a instancia irá utilizar
  security_groups             = var.security_groups
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name

  tags = {
    Name          = var.instance_name
    Environment   = var.environment
    Owner         = var.owner
    MalwareDetect = "True"
  }
}