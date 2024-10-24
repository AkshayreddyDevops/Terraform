variable "domain_name" {
  default = "eudtech.online"
}

variable "components"{
  default = {
    frontend ={
      instalce_type = "t3.micro"
    }
    mongo ={
      instalce_type = "t3.small"
    }
  }
}