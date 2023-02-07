## This demo reviews AWS VPCs and some examples of creating them with Terraform.

- The ```nat.tf``` file:
    - creates the nat gateway
    - sets up the VPC for the NAT (default gateway)
    - sets up the route association. 
- The ```vpc.tf``` file:
    - creates the VPC and the associated subnets
    - creates the Internet Gateway (IGW)

---

## What ChatGPT has to say about AWS VPCs

Explain AWS VPCs with Terraform Examples. Lets take this step by step. Explain this as if this is the first time that I am learning this topic.

Amazon Web Services (AWS) Virtual Private Cloud (VPC) is a virtual network dedicated to your AWS account. It enables you to launch AWS resources into a virtual network that you've defined.

Terraform is an infrastructure as code tool that allows you to define and manage your infrastructure as code. You can use Terraform to create, manage, and version your VPCs in AWS.

Here is a step by step explanation on how to use Terraform to create an AWS VPC:

1. Create a Terraform configuration file. In this file, you will define the provider (AWS) and the resources you want to create (VPC).
Example:

```
provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Main VPC"
  }
}
```

2. Initialize Terraform in the directory where you saved the configuration file. This step downloads the necessary provider plugins and sets up the Terraform state.

```
terraform init
```

3. Verify the Terraform configuration file with the *terraform plan* command. This will show you a preview of the resources that Terraform will create.

```
terraform plan
```

4. Apply the Terraform configuration with the *terraform apply* command. This will create the VPC in your AWS account.

```
terraform apply
```

5. When you are done using the VPC, you can destroy the resources with the *terraform destroy* command.

```
terraform destroy
```

This is just a basic example of how to create an AWS VPC with Terraform. You can add more resources, such as subnets, internet gateways, and security groups, to your VPC by defining them in your Terraform configuration file.