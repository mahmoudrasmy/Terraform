provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "example" {
  ami           = "ami-66506c1c"
  instance_type = "t2.small"
  key_name      = "jenkins_aws"
  count         = 2
}

resource "null_resource" "prepare_control_node" {
  connection {
    host        = "${element(aws_instance.example.*.public_ip, 0)}"
    type        = "ssh"
    user        = "ubuntu"
    private_key = "${file("./jenkins_aws.pem")}"
    agent       = false
    timeout     = "2m"
  }

  provisioner "file" {
    source      = "bootstrap.sh"
    destination = "/tmp/bootstrap.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/bootstrap.sh",
      "cd /tmp/",
      "/tmp/bootstrap.sh",
    ]
  }
}
