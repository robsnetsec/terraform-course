variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0778521d914d23bc1"
    us-west-2 = "ami-0c4dfe348469b0ae5"
    eu-west-1 = "ami-0d729a60"
  }
}

