resource "aws_kms_key" "terraform_state" {
  description             = "Key to encrypt S3 backend bucket"
  deletion_window_in_days = 10
  enable_key_rotation     = true
}

resource "aws_kms_alias" "terraform_state"{
  name          = "alias/${var.env}-${var.product}-${var.project}-tf-state-${random_string.suffix.id}"
  target_key_id = aws_kms_key.terraform_state.id
}
