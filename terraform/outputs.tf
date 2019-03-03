output "layer_arn" {
  value = "${aws_lambda_layer_version.this.arn}"
}

output "layer_created_at" {
  value = "${aws_lambda_layer_version.this.created_date}"
}

output "layer_version" {
  value = "${aws_lambda_layer_version.this.version}"
}

output "layer_size" {
  value = "${aws_lambda_layer_version.this.source_code_size}"
}

output "lambda_arn" {
  value = "${aws_lambda_function.convert-date.invoke_arn}"
}

output "lambda_size" {
  value = "${aws_lambda_function.convert-date.source_code_size}"
}

output "lambda_updated_at" {
  value = "${aws_lambda_function.convert-date.last_modified}"
}
