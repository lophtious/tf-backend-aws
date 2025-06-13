resource "aws_dynamodb_table" "terraform_state" {
  name           = "${var.env}-${var.project}-${var.product}-lock-${random_string.suffix.id}"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}
