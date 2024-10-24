resource "aws_instance" "test"{
  instance_type = "t3.micro"
  ami = "ami-09c813fb71547fc4f"
  tags = {
    Name = "Test"
  }
}