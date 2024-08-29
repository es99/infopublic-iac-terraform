resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  disable_api_termination     = true         //(Optional, if true, enables ec2 instance termination protection.)
  iam_instance_profile        = var.iam_role //(Optional) A role que a instancia irá utilizar
  security_groups             = var.security_groups
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name //(Optional)

  root_block_device {
    volume_type = "gp3"
    volume_size = var.volume_size // Optional
    throughput  = 125             // Optional

    tags = {
      Name = format("dev-%s", var.instance_name)
    }
  }

  tags = {
    Name          = var.instance_name
    Environment   = var.environment //(Optional)
    Owner         = var.owner
    MalwareDetect = "True"
  }
}