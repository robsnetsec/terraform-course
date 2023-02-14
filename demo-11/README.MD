# This demo goes over Static IPs, Elastic IPs (EIPs) and Route53 along with how to configure these services in Terraform.

## Here is what ChatGPT has to say about this:

Static IPs, Elastic IPs (EIPs), and Route53 are all related to networking and DNS services on the Amazon Web Services (AWS) platform. Terraform is an Infrastructure as Code (IaC) tool that can be used to manage these services. In this answer, we will explain each of these concepts and provide code examples of how to use them in Terraform.

### Static IPs and EIPs
A static IP address is a fixed IP address assigned to a resource, such as an EC2 instance or a network interface, which remains the same even if the resource is stopped or restarted. Elastic IP (EIP) is a feature of AWS that provides a public IP address that can be associated with an EC2 instance or a network interface. An EIP is static in the sense that it can be disassociated from one resource and associated with another, but it is not tied to a specific resource.

In Terraform, you can use the ```aws_eip``` resource to allocate and manage EIPs, and the ```aws_network_interface``` resource to attach EIPs to network interfaces. Here is an example of how to allocate and associate an EIP with an EC2 instance:

```
resource "aws_eip" "example" {
  vpc = true
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  associate_public_ip_address = false

  network_interface {
    network_interface_id = aws_network_interface.example.id
    device_index         = 0
  }
}

resource "aws_network_interface" "example" {
  subnet_id       = aws_subnet.example.id
  security_groups = [aws_security_group.example.id]

  attachment {
    instance = aws_instance.example.id
  }
}

resource "aws_eip_association" "example" {
  instance_id   = aws_instance.example.id
  allocation_id = aws_eip.example.id
}
```

This code creates an EIP, an EC2 instance, and a network interface. It then associates the EIP with the EC2 instance using an EIP association resource.

### Route53
Amazon Route 53 is a highly available and scalable Domain Name System (DNS) service that routes user requests to AWS resources. Route53 provides several features, including domain registration, DNS record management, and health checks.

In Terraform, you can use the ```aws_route53_zone``` and ```aws_route53_record``` resources to manage Route53 zones and DNS records, respectively. Here is an example of how to create a Route53 zone and a DNS record:

```
resource "aws_route53_zone" "example" {
  name = "example.com"
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.example.id
  name    = "www.example.com"
  type    = "A"
  ttl     = 300
  records = [aws_eip.example.public_ip]
}
```

This code creates a Route53 zone for the domain "example.com" and a DNS record for "www.example.com" that points to the EIP created earlier.

In summary, static IPs, EIPs, and Route53 are important concepts in AWS networking and DNS management. In Terraform, you can use the ```aws_eip```, ```aws_network_interface```, ```aws_route53_zone```, and ```aws_route53_record``` resources to manage these services. The code examples provided illustrate how to allocate and associate EIPs with EC2 instances, and how to create Route53 zones and DNS records.
