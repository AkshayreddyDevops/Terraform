terraform {
  backend "s3" {
    bucket = "dev-terraform-bkp"
    key = "test/terraform.tfstate"
    region="us-east-1"
  }
}