# Data source for existing S3 bucket
data "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-devops-eks"
}

# Data source for existing DynamoDB table
data "aws_dynamodb_table" "terraform_locks" {
  name = "terraform-state-lock"
}

# Ensure versioning is enabled for the existing S3 bucket
resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = data.aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}
