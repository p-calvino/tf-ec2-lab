resource "aws_instance" "tf_ec2" {
  ami           = "ami-065deacbcaac64cf2"
  instance_type = "t2.small"
  #key_name = aws_key_pair.tf_key.id
  key_name = "talent-academy-ec2"
  #security_groups = [aws_security_group.tf_secgroups.id]
  security_groups = [aws_security_group.tf_secgroups.id]
  subnet_id       = data.aws_subnet.public_1.id
  tags = {
    Name = "my-ec2-instance"
  }
}



data "aws_subnet" "public_1" {
  filter {
    name   = "tag:Name"
    values = ["Public-Subnet-1"]
  }
}