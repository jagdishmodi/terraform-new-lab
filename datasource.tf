

data "aws_ami" "example" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}