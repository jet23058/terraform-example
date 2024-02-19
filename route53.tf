# resource "aws_route53_zone" "example_zone" {
#   name = "test-jet.com"
# }

# resource "aws_route53_record" "example_record" {
#   zone_id = aws_route53_zone.example_zone.zone_id
#   name    = "example"
#   type    = "A"
#   ttl     = "300"
#   records = [aws_instance.example_instance.public_ip]
# }