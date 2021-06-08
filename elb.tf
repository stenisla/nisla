provider "aws" {
  region     = "us-east-1"
  access_key = "xxxxxxxxxxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

resource "aws_elb" "jjtechelb" {
  name = var.elb-name
  availability_zones = var.az

listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

cross_zone_load_balancing   = true
  idle_timeout                = var. timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout

  tags = {
    Name = "jjtechelb"
  }
}
