# add the below resource in the ec2.tf file to launch an ec2 instance

resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform-key"
  public_key = var.PUB_KEY
}

resource "aws_instance" "terraform-instance" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet_1.id
  key_name               = aws_key_pair.terraform_key.key_name
  vpc_security_group_ids = [aws_security_group.terrafrom_sg.id]
  tags = {
    Name = "Terraform_Instance"
  }
}

output "PublicIP" {
  value = aws_instance.terraform-instance.public_ip
}