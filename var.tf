variable "access_key" {
  type = string
  default = "AKIA3JVR2HZTM7UUC2V3"
}

variable "sec_key" {
  type = string
  default = "xXEvhPyx0Ix20x93NLnc6w4FHRV9v9umKPXDOZBB"
}


variable "region" {
    type = string
  default = "us-east-1"
}

variable "ami" {
  type = string
  default = "ami-090fa75af13c156b4"
}

variable "int_type" {
  type = string
  default = "t2.micro"
}

variable "sub_net" {
  type = list
  default = ["subnet-75fe852a","subnet-d74b429a"]
  
}
variable "user_name" {
  description = "iam usernames"
  type = list(string)
default =  ["user1","user2","user3"]  
}