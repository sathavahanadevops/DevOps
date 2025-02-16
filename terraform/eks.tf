resource "aws_eks_cluster" "devops_demo" {
  name     = "devops-demo"
  role_arn = "arn:aws:iam::443370691052:role/awsfullaccessrole"

  vpc_config {
    subnet_ids             = [aws_subnet.eks_subnet_a.id, aws_subnet.eks_subnet_b.id]
    security_group_ids     = [aws_security_group.eks_sg.id]
    endpoint_public_access = true
  }
}

resource "aws_eks_node_group" "devops_demo_nodes" {
  cluster_name    = aws_eks_cluster.devops_demo.name
  node_group_name = "devops-demo-nodes"
  node_role_arn   = "arn:aws:iam::443370691052:role/awsfullaccessrole"
  subnet_ids      = [aws_subnet.eks_subnet_a.id, aws_subnet.eks_subnet_b.id]
  instance_types  = ["t3.medium"]

  scaling_config {
    desired_size = 5
    max_size     = 6
    min_size     = 3
  }

  depends_on = [aws_eks_cluster.devops_demo]
}
