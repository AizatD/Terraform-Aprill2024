provider aws {
    region = "us-east-2"
}

resource "aws_key_pair" "deployer" {
  key_name   = "hello-key"
  public_key = file("~/.ssh/id_rsa.pub")

  tags = {
    name = "hello-key"
    env = "Dev"
    team = "DevOps"
  }
}
