resource "aws_ecs_service" "frontend" {
  cluster = aws_ecs_cluster.main_cluster.id
  task_definition = aws_ecs_task_definition.frontend.arn
  desired_count = 2
  name = "frontend"

  load_balancer {
    elb_name = aws_elb.frontend.id
    container_name = "frontend"
    container_port = 3000
  }

}