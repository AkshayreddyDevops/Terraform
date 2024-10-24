terraform {
  backend "s3" {
    bucket = "dev-terraform-bkp"
    key = "test/terraform.tfstate"
    reagion="us-east-1"
  }
}