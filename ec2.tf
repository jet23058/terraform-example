# resource "aws_iam_instance_profile" "example_profile" {
#   name = "jet-ec2"
#   role = aws_iam_role.example_role.name
# }

# resource "aws_instance" "example_instance" {
#   ami           = "ami-0b5c74e235ed808b9"
#   instance_type = "t2.micro"
#   key_name        = aws_key_pair.key.key_name
  
#   iam_instance_profile = aws_iam_instance_profile.example_profile.name
# #   subnet_id            = aws_subnet.example_subnet.id
#   vpc_security_group_ids = [aws_security_group.example_sg.id]

#   user_data = <<-EOF
#               #!/bin/bash
#               sudo yum update -y
#               sudo yum install -y httpd
#               sudo systemctl start httpd
#               sudo systemctl enable httpd
#               echo "<html><body><h1>Hello, World!</h1></body></html>" > /var/www/html/index.html
#               EOF

#   tags = {
#     Name = "[staging] example-jet-ec2",
#     Owner = "teamB",
#     Product = "product",
#     Environment = "develop"
#   }
# }

# # data "aws_caller_identity" "current" {}