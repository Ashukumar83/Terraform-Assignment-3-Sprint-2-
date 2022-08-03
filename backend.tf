terraform {
  backend "s3" {
    bucket = "ashu-bucket08"
    key    = "ashu.tfstate"
    region = "ap-south-1"
    dynamodb_table = "Ashu-table001"
  }
}