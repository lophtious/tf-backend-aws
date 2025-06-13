resource "aws_s3_bucket" "terraform_state" {
  bucket        = "${var.env}-${var.project}-${var.product}-${random_string.suffix.id}"
  force_destroy = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.terraform_state.id
    }
  }
}
