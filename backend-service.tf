resource "aws_ecs_service" "backend" {
  cluster = aws_ecs_cluster.main_cluster.id
  task_definition = aws_ecs_task_definition.backend.arn
  desired_count = 2
  name = "backend"
}