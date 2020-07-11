provider "aws" {
  profile = "dejipiyo-kekezun-terraform"
  region  = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-06ad9296e6cf1e3cf"
  instance_type = "t2.micro"
}
