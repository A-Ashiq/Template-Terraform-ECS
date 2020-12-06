terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-up-and-running-state"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}


resource "aws_ecs_cluster" "main_cluster" {
  name = "main-cluster"
}


resource "aws_autoscaling_group" "ecs_cluster_instances" {
  name = "ecs-cluster-instances"
  max_size = 3
  min_size = 3
  launch_configuration = aws_launch_configuration.ecs_instance.name
}


resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-state"
  # Enable versioning so we can see the full revision history of our state files
  versioning {
    enabled = true
  }
  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
