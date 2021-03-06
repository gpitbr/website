resource "aws_instance" "main" {
  ami                         = "${var.ami}"
  security_groups             = ["${var.sg}"]
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${var.subnet_id}"
  associate_public_ip_address = true
  key_name                    = "${var.key_name}"
  private_ip                  = "${var.private_ip}"

  user_data = <<-EOF
            #!/bin/bash
            sudo setenforce 0
            sudo rpm -ihv https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
            sudo yum update -y
            
            # Install packages requirements
            sudo yum group install -y "Development Tools"
            sudo yum install -y bash_completion curl wget vim net-tools htop ansible \
                                python2-pip python-virtualenv python-devel openssl-devel \
                                libffi-devel augeas-libs python  yum-utils git
            #git clone https://github.com/gpitbr/website.git
            #ansible-playbook -i "localhost," -c local /mytest/ansible/k8s-wordpress/site.yml
            EOF

  tags = {
    Name = "${lookup(var.tags, "Name")}"
    Env  = "${lookup(var.tags, "Env")}"
  }
}
