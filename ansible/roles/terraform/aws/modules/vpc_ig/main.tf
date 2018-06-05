resource "aws_internet_gateway" "main" {
  vpc_id = "${var.vpc_id}"

  tags = {
    Name = "${lookup(var.tags, "Name")}"
    Env  = "${lookup(var.tags, "Env")}"
  }
}
