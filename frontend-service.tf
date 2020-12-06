resource "aws_ecs_service" "frontend" {
  cluster = aws_ecs_cluster.main_cluster.id
  task_definition = aws_ecs_task_definition.frontend.arn
  desired_count = 2
  name = "frontend"
}