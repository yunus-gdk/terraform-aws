provider "aws" {
  region     = "us-east-1"
  access_key = "xxxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

resource "aws_instance" "myVm" {
  ami           = "ami-07d02ee1eeb0c996c"
  instance_type = "t2.micro"
  key_name      = "awsdevops"
  tags = {
   Name = "ec2-yunus"
  }
  root_block_device {
   delete_on_termination = true
  }
}
