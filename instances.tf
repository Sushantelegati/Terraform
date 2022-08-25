 provider "aws" {
   access_key = var.access_key
    secret_key = var.sec_key
        region     =  var.region
  }

   resource "aws_instance" "example" {
   count = 2
     ami           = var.ami
    instance_type = var.int_type
    subnet_id = "${element(var.sub_net,count.index)}"
   

 tags = {
  Name = "terraform-${count.index+1}"
   }

   }

