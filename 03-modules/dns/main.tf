resource "aws_route53_record" "test" {
  zone_id = "Z085093733LY1YYTUF9Q4"
  name = "test"
  type = "A"
  ttl = var.ttl == ""?15:var.ttl
  records = [var.private_ip]
}


variable "private_ip" {}
variable "ttl" {}
