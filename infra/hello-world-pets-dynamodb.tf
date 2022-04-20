resource "aws_dynamodb_table" "pets-table" {
  name         = "PetsTable"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "PetId"

  attribute {
    name = "PetId"
    type = "S"
  }

  tags = {
    Name = "PetsTable"
  }
}