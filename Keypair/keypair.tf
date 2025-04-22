data "aws_key_pair" "keypair" {
    key_name = "eg_keypair"
    include_keypair = true
}

output "keypair" {
  value = data.aws_key_pair.keypair
}

resource "aws_instance" "datasrc_instance" {
  ami = var.instance
  intsance_type = "t2_micro"
  key_name = data.aws_key_pair.keypair.key_name
  
}
