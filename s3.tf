
resource "aws_s3_bucket" "terraform-state" {
  bucket = "${var.env}-${var.product}-${var.project}-${random_string.suffix.id}"
  force_destroy = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform-state" {
  bucket = aws_s3_bucket.terraform-state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
      kms_master_key_id = aws_kms_key.backend_bucket_key.id
  }
}