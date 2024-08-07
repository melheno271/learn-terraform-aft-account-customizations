resource "aws_ssm_parameter" "example" {
  name  = "/accID"
  type  = "String"
  value = "${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "Account ID"
    Environment = "Development"
  }
}

output "ssm_parameter_name" {
  value = aws_ssm_parameter.example.name
}

output "ssm_parameter_value" {
  value = aws_ssm_parameter.example.value
}