
#Create EC2 instances
resource "aws_instance" "frontend"{
  instance_type = "t3.small"
  ami = data.aws_ami.ami
  vpc_security_group_ids = data.aws_security_groups.sg
  tags ={
    Name="frontend"
  }
}

# Create Rout53

resource "aws_route53_record" "frontend"{
  zone_id = data.aws_route53_zone.zoneid
  name = "frontend.dev.${var.domain_name}"
  type = "A"
  ttl = 300
  records = [aws_instance.frontend.private_ip]
}