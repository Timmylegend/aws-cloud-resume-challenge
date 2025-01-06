resource "aws_dynamodb_table" "visitor_table" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Environment = var.environment
    Project     = "Visitor Counter"
  }
}

resource "aws_dynamodb_table_item" "initial_item" {
  table_name = aws_dynamodb_table.visitor_table.name
  hash_key   = aws_dynamodb_table.visitor_table.hash_key

  item = <<ITEM
{
  "id": {"S": "1"},
  "visitorCount": {"N": "0"}
}
ITEM

  lifecycle {
    ignore_changes = all
  }
}
