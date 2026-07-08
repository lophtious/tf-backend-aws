resource "aws_dynamodb_table" "terraform_state" {
  name           = "${var.env}-${var.project}-${var.product}-lock-${random_string.suffix.id}"
  hash_key       = "LockID"
  read_capacity  = var.dynamodb_default_read_capacity
  write_capacity = var.dynamodb_default_write_capacity

  attribute {
    name = "LockID"
    type = "S"
  }
}
