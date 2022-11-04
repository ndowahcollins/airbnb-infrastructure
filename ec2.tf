resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t3.micro"
  monitoring = true
  ebs_optimized = true
  root_block_device {
    encrypted = true
  }
  tags = {
    Name = "HelloWorld"
  }
}