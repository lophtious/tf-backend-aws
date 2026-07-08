resource "aws_kms_key" "terraform_state" {
  description             = "Key to encrypt S3 backend bucket"
  deletion_window_in_days = var.kms_key_deletion_window_in_days
  enable_key_rotation     = var.kms_key_enable_key_rotation
}

resource "aws_kms_alias" "terraform_state" {
  name          = "alias/${var.env}-${var.project}-${var.product}-key-${random_string.suffix.id}"
  target_key_id = aws_kms_key.terraform_state.id
}
