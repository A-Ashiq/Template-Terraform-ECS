# The launch config defines what runs on each EC2 instance
resource "aws_launch_configuration" "ecs_instance" {
  name_prefix = "ecs-instance"
  instance_type = "t2.micro"
  image_id = "ami-a98cb2c3"
  # This is an Amazon ECS AMI, which has an ECS agent installed that lets it talk to the ECS cluster
}

