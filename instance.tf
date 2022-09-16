resource "aws_instance" "tf_ec2" {
  ami                       = "ami-065deacbcaac64cf2"
  instance_type             = "t2.small"
  #key_name = aws_key_pair.tf_key.id
  key_name = "talent-academy-ec2"
  #security_groups = [aws_security_group.tf_secgroups.id]
  security_groups = [aws_security_group.tf_secgroups.id]
  subnet_id = data.aws_subnet.public_1.id
}



data "aws_subnet" "public_1" {
  id = "subnet-04df0b9dc885c9eab"
}