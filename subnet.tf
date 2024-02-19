# resource "aws_subnet" "example_subnet_a" {
#   vpc_id                  = aws_default_vpc.default_vpc.id
#   cidr_block              = "172.31.32.0/20"
#   availability_zone       = "ap-northeast-1a"
# #   map_public_ip_on_launch = true

#   tags = {
#     Name = "jet-subnet-a"
#   }
# }

# resource "aws_subnet" "example_subnet_c" {
#   vpc_id                  = aws_default_vpc.default_vpc.id
#   cidr_block              = "172.31.0.0/20"
#   availability_zone       = "ap-northeast-1c"
# #   map_public_ip_on_launch = true

#   tags = {
#     Name = "jet-subnet-b"
#   }
# }

# resource "aws_subnet" "example_subnet_d" {
#   vpc_id                  = aws_default_vpc.default_vpc.id
#   cidr_block              = "172.31.16.0/20"
#   availability_zone       = "ap-northeast-1d"
# #   map_public_ip_on_launch = true

#   tags = {
#     Name = "jet-subnet-d"
#   }
# }