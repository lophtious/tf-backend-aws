resource "aws_kms_key" "backend_bucket_key" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
  enable_key_rotation     = true
}

resource "aws_kms_alias" "backend_bucket_key_alias"{
  name          = "infra/backend/bucket-kms-key"
  target_key_id = aws_kms_key.backend_bucket_key.id
}
