resource "aws_ecs_task_definition" "frontend" {
  family                   = "frontend" # Naming our first task
  container_definitions    = file("frontend-definition.json")
}
