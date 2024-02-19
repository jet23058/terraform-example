# resource "aws_vpc" "example_vpc" {
#   cidr_block = "172.31.0.0/16"
#   enable_dns_support = true
#   enable_dns_hostnames = true

#   tags = {
#     Name = "jet-vpc"
#   }
# }

resource "aws_default_vpc" "default_vpc" {

}