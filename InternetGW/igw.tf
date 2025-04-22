data "aws_internet_gateway" "igw" {
  filter {
    name   = "attachment.vpc-id"
    values = [var.vpc_id]
  }
}

output "igw" {
  value = data.aws_internet_gateway.igw.owner_id   #This outputs the AWS account number ID 
}
