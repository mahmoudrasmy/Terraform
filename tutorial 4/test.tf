data "template_file" "example" {
  template = "$${hello} $${world}!"

  vars {
    hello = "goodnight"
    world = "moon"
  }
}

data "template_file" "example2" {
  template = "$${hello} $${world}!"

  vars {
    hello = "goodnight2"
    world = "moon"
  }
}

output "ren" {
  value = "${data.template_file.example2.rendered}"
}

output "ren2" {
  value = "${data.template_file.example2.rendered}"
}
