variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0620aa8714211d0af"
    us-west-2 = "ami-0c4dfe348469b0ae5"
    eu-west-1 = "ami-0d729a60"
  }
}

