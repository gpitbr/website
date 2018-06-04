variable "tags" {
  type = "map"

  default = {
    "Name" = "website"
    "Env"  = "Prod"
  }
}

variable "cidr" {
  default = "10.20.0.0/24"
}

variable "private_ip" {
  default = "10.20.0.100"
}

variable "region" {
  default = "us-east-1"
}

variable "from_port" {
  default = "80"
}

variable "to_port" {
  default = "80"
}

variable "sgname" {
  default = "website"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-6871a115"
}

variable "key_name" {
  default = "mykey"
}

variable "public_key_path" {
  default = "~/.ssh/aws.pub"
}
