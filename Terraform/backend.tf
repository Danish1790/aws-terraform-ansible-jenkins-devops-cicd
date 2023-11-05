terraform {
  backend "s3" {
    bucket = "danish-terraform-statefile"
    key = "server_name/statefile"
    region = "us-east-1"
  }
}  
