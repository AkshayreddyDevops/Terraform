resource "aws_route53_record" "test" {
  zone_id = "Z085093733LY1YYTUF9Q4"
  name = "test"
  type = "A"
  ttl = 15
  records = [vars.private_ip]
}


variable "private_ip" {}
