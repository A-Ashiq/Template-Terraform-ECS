resource "aws_elb" "frontend" {
  name = "frontend"
  listener {
    instance_port = 3000
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }
}
