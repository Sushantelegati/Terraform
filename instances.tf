 provider "aws" {
   
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

 