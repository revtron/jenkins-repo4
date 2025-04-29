resource "aws_s3_bucket" "newbucket" { 
  count = 2
}

resource "aws_instance" "new-instance" { 
    instance_type = "t2.micro"
    key_name = "jenkins_key"
    ami = "ami-084568db4383264d4"
      tags = { 
       Name = "EC2-Terraform-Jenkins"

    }
}
