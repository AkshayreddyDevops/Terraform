module "ec2"{
  source = "./ec2"
  instance_type = "t3.small"
}


module "ec2"{
  source = "./ec2"
  instance_type = "t3.small"
  private_ip = module.ec2.private_ip
}
