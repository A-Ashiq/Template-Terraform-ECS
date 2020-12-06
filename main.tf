resource "aws_ecs_cluster" "main_cluster" {
  name = "main-cluster"
}

resource "aws_autoscaling_group" "ecs_cluster_instances" {
  name = "ecs-cluster-instances"
  max_size = 3
  min_size = 3
  launch_configuration = aws_launch_configuration.ecs_instance.name
}
