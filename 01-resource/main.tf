
#Create EC2 instances
resource "aws_instance" "frontend"{
  instance_type = "t3.small"
  ami = var.ami 
  vpc_security_group_ids = var.vpc_security_group_ids
  tags ={
    Name="frontend"
  }
}

# Create Rout53

resource "aws_route53_record" "frontend"{
  zone_id = var.zone_id
  name = "frontend.dev.${var.domain_name}"
  type = "A"
  ttl = 300
  records = [aws_instance.frontend.private_ip]
}