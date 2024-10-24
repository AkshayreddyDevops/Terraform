variable "domain_name" {
  default = "eudtech.online"
}

variable "components"{
  default = {
    frontend ={
      instance_type = "t3.micro"
    }
    mongo ={
      instance_type = "t3.small"
    }
  }
}