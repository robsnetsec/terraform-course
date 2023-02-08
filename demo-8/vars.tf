variable "AWS_REGION" {
  default = "us-east-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0778521d914d23bc1"
    us-west-2 = "ami-0c4dfe348469b0ae5"
    eu-west-1 = "ami-844e0bf7"
  }
}

