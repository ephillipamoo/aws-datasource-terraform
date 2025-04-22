provider "aws" {
  region = "us-west-2" # Change to your desired region
}

# Get data about the existing EKS cluster
data "aws_eks_cluster" "eks_cluster" {
  name = "eks-cluster-aws"  # Replace with your actual EKS cluster name
}

# Get auth details for the cluster
data "aws_eks_cluster_auth" "eks_cluster_auth" {
  name = data.aws_eks_cluster.eks_cluster.name
}
