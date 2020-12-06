resource "aws_elb" "backend" {
  name = "backend"
  listener {
    instance_port = 4567
    instance_protocol = "http"
    lb_port = 4567
    lb_protocol = "http"
  }
}
