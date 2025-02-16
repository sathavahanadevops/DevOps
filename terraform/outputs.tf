output "eks_cluster_id" {
  value = aws_eks_cluster.devops_demo.id
}

output "eks_cluster_endpoint" {
  value = aws_eks_cluster.devops_demo.endpoint
}

output "eks_cluster_arn" {
  value = aws_eks_cluster.devops_demo.arn
}
