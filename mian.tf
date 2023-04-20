resource "aws_instance" "instance" {
  ami                    = var.ami
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id
  key_name               = aws_key_pair.ec2.key_name
  instance_type = var.instance_type
  ebs_block_device {
    device_name = "/dev/sda1"
    delete_on_termination = true
    volume_size           = 8
    volume_type           = "gp3"
    encrypted             = false
  }
  user_data = file("userdata.sh")
  tags = var.tags
}


resource "tls_private_key" "pk" {
  
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ec2" {
  
  key_name   = var.key_name
  public_key = tls_private_key.pk.public_key_openssh

  provisioner "local-exec" {
    command = "echo '${tls_private_key.pk.private_key_pem}' > ./${var.key_name}.pem"
  }
}