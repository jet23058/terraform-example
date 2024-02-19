resource "aws_eks_cluster" "example_eks_cluster" {
  name     = "jet-eks-cluster"
  role_arn = aws_iam_role.example_eks_role.arn

  vpc_config {
    subnet_ids = [var.subnet-1, var.subnet-2, var.subnet-3]
  }
}

resource "aws_eks_node_group" "example_eks_node_group" {
  cluster_name    = aws_eks_cluster.example_eks_cluster.name
  node_group_name = "jet-node-group"

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  instance_types = [var.eks-instance]

  node_role_arn = aws_iam_role.example_eks_role.arn

  subnet_ids = [var.subnet-1, var.subnet-2, var.subnet-3]
}
