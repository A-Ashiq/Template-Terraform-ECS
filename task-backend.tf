resource "aws_ecs_task_definition" "backend" {
  family                   = "backend" # Naming our first task
  container_definitions    = file("backend-definition.json")
}
