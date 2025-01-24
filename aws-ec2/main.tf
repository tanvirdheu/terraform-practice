terraform {
        required_providers {
                aws = {
                        source = "hashicorp/aws"
                        version = "5.84.0"
                }
        }
}

provider "aws" {
        region = var.region
}

resource "aws_instance" "myserver"{
        ami = "ami-04b4f1a9cf54c11d0"
        instance_type = "t2.micro"

        tags = {
                Name = "SampleServer"
        }
}

