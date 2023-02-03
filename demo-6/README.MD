## This demo reviews modules in Terraform <br>

- Modules allow you to reuse code
- The ```modules.tf``` file  creates a modules named ```consul``` that allows a template for EC2 creation

---

## Here is what ChatGPT mentions about the ```modules.tf``` file: <br>

```
This is a Terraform code that creates a module for "consul". The module is sourced from a Git repository at "github.com/wardviaene/terraform-consul-module.git?ref=terraform-0.12".

The module accepts several input variables such as the name of an AWS key pair "key_name" which is set to the "key_name" attribute of an AWS key pair resource "aws_key_pair.mykey". Another input variable "key_path" is set to a variable "var.PATH_TO_PRIVATE_KEY". The AWS region is also passed as an input variable "region" which is set to the variable "var.AWS_REGION". The VPC id is set to the id of an AWS default VPC "aws_default_vpc.default.id" and subnets are passed as a map with their respective id's "aws_default_subnet.default_az1.id", "aws_default_subnet.default_az2.id", and "aws_default_subnet.default_az3.id".

There's an output section named "consul-output" which has a value set to "module.consul.server_address". This means that the output will contain the server address for the "consul" module.
```

---

## Here is ChatGPT's explaination (with examples) of modules:

In Terraform, modules are self-contained packages of Terraform configurations that are managed as a group. They allow you to encapsulate and reuse Terraform code, making it easier to manage and maintain your infrastructure.

A module.tf file is used to define a Terraform module. It specifies the inputs and outputs for the module, allowing it to be called from other Terraform configurations and passed arguments.

Here's a step-by-step explanation of how to define and use a Terraform module:

1. Create a directory for your module and put your Terraform code inside it. For example, if your module is named webserver, create a directory called webserver.

2. Create a module.tf file in the directory. This file will define the inputs and outputs of your module.

```
# module.tf
variable "instance_type" {
  type        = string
  description = "The instance type for the webserver"
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

# Your Terraform code for the webserver
resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = var.instance_type
}
```
3. In your main Terraform configuration file, you can then call the module and pass arguments to it using the module block. For example:
```
# main.tf
module "webserver" {
  source = "./webserver"
  instance_type = "t2.micro"
}
```
4. Run Terraform to create the infrastructure defined in your module.
```
terraform init
terraform apply
```
5. Access the outputs of the module using the module block. For example:
```
output "webserver_public_ip" {
  value = module.webserver.public_ip
}
```

By defining inputs and outputs for your modules, you can make your Terraform code more modular and reusable. This makes it easier to manage and maintain your infrastructure as it grows.