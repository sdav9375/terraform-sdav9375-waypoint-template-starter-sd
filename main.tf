# Copyright (c) HashiCorp, Inc.

resource "null_resource" "trivial_resource" {}

action "aws_lambda_invoke" "api_handler" {
  config {
    function_name = aws_lambda_function.api_handler.function_name
    payload = jsonencode({
      message = "Invoke lambda from action",
      type    = "test"
    })
  }
}