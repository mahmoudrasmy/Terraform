provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "example" {
  ami           = "ami-66506c1c"
  instance_type = "t2.micro"
  key_name  = "jenkins_aws"
}
