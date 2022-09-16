terraform {
  backend "s3" {
    bucket = "ta-terraform-tfstates-407372460187"
    key    = "sprint1/week2/ec2-terraform/terraform.tfstates"
    #dynamodb_table = "terraform-lock-vpc"
  }
}