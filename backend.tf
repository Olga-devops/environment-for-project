  
terraform {
backend "s3" {
bucket = "acirrustech-project"
key = "pass/to/my/key/environment.tfstate"
region = "us-east-2"
  }
}