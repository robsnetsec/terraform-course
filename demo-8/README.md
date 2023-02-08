## This demo reviews how to launch and connect to an EC2 instance in AWS

---

## Here is what ChatGPT says about the topic:

### Question:

- Explain creating EC2 instances in AWS using Terraform. Lets take this step by step and explain this as if I have never been exposed to this topic.

### Reponse:

Sure! Here is a step-by-step guide to creating EC2 instances in AWS using Terraform:

1. Install Terraform: Before you can use Terraform to create EC2 instances in AWS, you need to have Terraform installed on your computer. You can download Terraform from the official website (https://www.terraform.io/downloads.html).

2. Create a Terraform configuration file: Terraform uses a configuration file to define the resources you want to create in AWS. The file should have a ".tf" extension. For example, you can create a file named "ec2.tf".

3. Define the AWS provider: In your Terraform configuration file, you need to define the AWS provider. This lets Terraform know that you want to create resources in AWS. Here is an example:

```
provider "aws" {
  region = "us-west-2"
}
```

4. Define an EC2 instance resource: To create an EC2 instance in AWS, you need to define an EC2 instance resource in your Terraform configuration file. Here is an example:

```
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
```

5. Run Terraform commands: To create the EC2 instance in AWS, you need to run Terraform commands. Here are the steps:

- Initialize Terraform: To initialize Terraform, run the following command in your terminal:

```
terraform init
```

- Plan Terraform: To see what Terraform will do, run the following command:

```
terraform plan
```

- Apply Terraform: To apply Terraform and create the EC2 instance, run the following command:

```
terraform apply
```

6. Verify the EC2 instance: You can verify that the EC2 instance was created by logging into the AWS Management Console and navigating to the EC2 section. You should see your new EC2 instance listed. <br>


That's it! You have successfully created an EC2 instance in AWS using Terraform.

---

### Question:

- How can you create an EC2 instance with a public and private subnet spanning multiple AZs and proper Security Groups allowing only SSH to reach the instance via the internet? Lets take this step by step with examples.

### Response:

Here is a step-by-step example to create an EC2 instance with a public and private subnet spanning multiple availability zones (AZs) and proper security groups, allowing only SSH to reach the instance via the internet.

1. Define a VPC:

```
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}
```

2. Create public and private subnets in multiple AZs:

```
resource "aws_subnet" "public_subnet_a" {
  vpc_id = "${aws_vpc.my_vpc.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id = "${aws_vpc.my_vpc.id}"
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id = "${aws_vpc.my_vpc.id}"
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id = "${aws_vpc.my_vpc.id}"
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = false
}
```

3. Create a security group to allow incoming SSH traffic:

```
resource "aws_security_group" "instance_sg" {
  name = "instance_sg"
  vpc_id = "${aws_vpc.my_vpc.id}"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
```

4. Launch the EC2 instance in the private subnet:

```
resource "aws_instance" "my_instance" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.private_subnet_a.id}"
  security_groups = ["${aws_security_group.instance_sg.id}"]
}
```

With these Terraform resources, you have created a VPC with public and private subnets spanning multiple AZs, and launched an EC2 instance in one of the private subnets with a security group that only allows incoming SSH traffic from the internet.