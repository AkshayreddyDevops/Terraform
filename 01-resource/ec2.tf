#Create EC2 instances
resource "aws_instance" "frontend"{
  instance_type = "t3.small"
  ami = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = ["sg-0d2a27415e13203c0"]
  tags ={
    Name="frontend"
  }
}

# Create Rout53

resource "aws_route53_record" "frontend"{
  zone_id = "Z085093733LY1YYTUF9Q4"
  name = "frontend.dev.edutech.online"
  type = "A"
  ttl = 300
  records = [aws_instance.frontend.private_ip]
}