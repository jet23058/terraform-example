resource "aws_key_pair" "key" {
  key_name   = "jet-key"
  public_key = file("~/.ssh/jet-ec2.pub")
}