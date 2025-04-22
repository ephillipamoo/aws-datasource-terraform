provider "aws" {
  region = "eu-west-1" # Change to your region
}


data "aws_ecs_cluster" "awsecs" {
  cluster_name = "my-existing-cluster"
}

output "cluster_arn" {
  value = data.aws_ecs_cluster.awsecs.arn
}

output "cluster_status" {
  value = data.aws_ecs_cluster.awsecs.status
}

resource "aws_ecs_service" "ecs_service" {
  name            = "ecs-service"
  cluster         = data.aws_ecs_cluster.ecs.arn
  task_definition = aws_ecs_task_definition.ecs_task.arn
  desired_count   = 2
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = ["subnet-xxxx", "subnet-yyyy"]
    assign_public_ip = true
    security_groups  = ["sg-xxxx"]
  }
}
