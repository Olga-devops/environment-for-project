output "dev1" {
  value = "http://${aws_route53_record.dev1.name}"
}

output "qa1" {
  value = "http://${aws_route53_record.qa1.name}"
}

output "prod1" {
  value = " http://${aws_route53_record.prod1.name}"
}
