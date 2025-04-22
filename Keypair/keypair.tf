data "aws_key_pair" "keypair" {
    key_name = "eg_keypair"
    include_keypair = true
}

output "keypair" {
  value = data.aws_key_pair.keypair
}

