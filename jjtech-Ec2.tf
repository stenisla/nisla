/*
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIATLO65ST2NYSELYRB"
  secret_key = "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"
}
    resource "aws_instance" "jjtechweb" {
      ami = "ami-0cf6f5c8a62fa5da6"
      instance_type = "t2.micro"

}

output "jjtechEC2"{
  value= aws_instance.jjtechweb.public_ip
}

resource "aws_eip" "jjtech_eip" {
    vpc      = true
}

output "jjtech_eip" {
  value= aws_eip.jjtech_eip.public_ip
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.jjtechweb.id
  allocation_id = aws_eip.jjtech_eip.id
}
*/
