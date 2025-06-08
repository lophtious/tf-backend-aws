resource "aws_dynamodb_table" "state_lock_db" {
  name = "${var.env}-${var.product}-${var.project}-state-lock-${random_string.suffix.id}"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}
