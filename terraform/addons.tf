resource "aws_eks_addon" "coredns" {
  cluster_name = aws_eks_cluster.devops_demo.name
  addon_name   = "coredns"
  preserve     = false
}

resource "aws_eks_addon" "vpc_cni" {
  cluster_name = aws_eks_cluster.devops_demo.name
  addon_name   = "vpc-cni"
  preserve     = false
}

resource "aws_eks_addon" "kube_proxy" {
  cluster_name = aws_eks_cluster.devops_demo.name
  addon_name   = "kube-proxy"
  preserve     = false
}

/*
resource "aws_eks_addon" "ebs_csi_driver" {
  cluster_name             = aws_eks_cluster.devops_demo.name
  addon_name               = "aws-ebs-csi-driver"
  preserve                 = false
}

resource "aws_eks_addon" "efs_csi_driver" {
  cluster_name             = aws_eks_cluster.devops_demo.name
  addon_name               = "aws-efs-csi-driver"
  preserve                 = false
}
*/
