terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.31.0"
        #   version = "3.47.0" use exact version
        #   version = "~>3.0"  ##it will support like this 3.1.0 , 3.2.1   #this is also not recomended
        #   version = ">= 3.47.0"   ##it will use latest version
        #   version = "<= 3.47.0"   ##it will use 3.47.0 below version
        #   version = "~> 3.47.0"   ##any one in the range 3.47.99 something it will not go or work this up versions 3.48.0
        }
    } 
}


provider "aws" {
    region = "us-east-1"
    profile = "default"
}

resource "aws_vpc" "main" {
    
    cidr_block = "var.vpc_cidr"
    
}
