terraform {
  backend "remote" {
    organization = "dejipiyo"

    workspaces {
      name = "learn-terraform"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-1"
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.example.id
}

resource "aws_instance" "example" {
  ami           = "ami-06ad9296e6cf1e3cf"
  instance_type = "t2.micro"
}
