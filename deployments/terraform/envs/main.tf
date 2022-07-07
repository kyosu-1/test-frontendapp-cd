terraform {
  backend "s3" {
    bucket = "test-frontendapp-cd-tfstate"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
  required_providers {
    aws = "~>4.0"
  }
}

module "frontend_app" {
  source      = "../modules/frontend"
  bucket_name = "sample-frontend-app"
}
