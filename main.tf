provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "k8s_instance" {
  ami           = "ami-0f58b397bc5c1f2e8" # Ubuntu 22.04 LTS (Free tier eligible) in ap-south-1
  instance_type = "t2.micro"
  key_name      = var.key_name
  security_groups = [aws_security_group.k8s_sg.name]

  user_data = file("init.sh") # install Docker, Kubernetes

  tags = {
    Name = "K8s-Node"
  }
}