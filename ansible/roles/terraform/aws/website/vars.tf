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

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDnWcYFqSvUlUeff87D2mQmXU30sXQWAvRxw0veZKcSCrdCSjfnRvne3Ppi+x0HQ/5+Woc5dUagT9zauvcYN5ACtxD9uwFnvBd5PeaLK6UA3TMShpFCe949X67TcWwfEAvfxhphG6hlvsDC8yy6xr1Xz0fSmGYKwkcnOafmcjJdvcgnuyQztlulK6rcaLiBXVzduGE5WyS7KsF9uBtqS0BWdpmTJoMNViju9EZjQiIL2Igfz7wcBiQ1Jd2rKrY1lDRTpKQ2oLEtVIhrfMZwrsyb6ub4HqJxu22mOebIXuOVWW2RTEBvl8zBED1xXkwnpe7FdT5fipO/0eyzjqCai6r692q5+Riea3YDzeiFhLfjs4waaqnWzmpt86Vq8cZVer7+schijOcMHvQrHdKXmpy4LiAqjWZmJGKChI9mQMXZH6Yhg9VKsCksrB4R3plABbRKcr9GXxwj+ntSL09T/qEvYrH+1CYR5W6hVl9zcGnlw7Daaj48yLA9RIGUdUnZXoQi6REzl49RKyS+Qbo94T1dJohXWr8ROdm9m0YXH/xBZ+CKEqiwUMlfjCh1P4RY7cmylHwuwnxV6V8fXU6XZdKhjdsbs13iX+inTohqLwLR3MuQWCe1JtKOA9i9xKIRbrpNFW5yB1kcVgBoCEpiaMjbBUM8YfDBKMTtU2nwxHIH7w== aws"
}
