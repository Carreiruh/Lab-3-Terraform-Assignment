provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
resource "aws_instance" "testansible" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = "mctestkeypair"

  tags = {
    Name = "Groovy Instance"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("mctestkeypair.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install ansible2 -y",
      "sudo yum install git -y",
      "git clone https://github.com/Carreiruh/exercise-01-week-02-ansible.git /02/playbook.yml",
      "ansible-playbook /02/playbook.yml"
    ]
  }
}