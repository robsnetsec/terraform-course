## This demo reviews Terraform commands <br>

| Command | Description | Notes
|----------|----------|----------|
| terraform apply | Applies state |  |
| destroy | Destroys all terraform managed state|  Use with Caution |
| fmt | Rewrite terraform configuration files to a canonical format and style | |
| get | Downald and update modules | |
| graph | Create a visual representation of a configuration or execution plan | |
| import [options] ADDRESS ID | Import will try and find the infrastructure resource identified with ID and import the state into terraform.tfstate with resource id ADDRESS | |
| output [options] [NAME] | Output any of your resources. Using NAME will only output a specific resource | | 
| plan | terraform plan, show the changes to be made to the infrastructure | |
| push | Push changes to Atlas, Hashicorp's Enterprise tool that can automatically run terraform from a centralized server | |
| refresh | Refresh the remote state. Can identify differences between state file and remote state | |
| remote | Configure remote state storage | |
| show | Show human readable output from a state or plan | |
| state | Use this command for advanced state management, e.g. Rename a resource with terraform state mv aws_instance.example aws_instance.production | |
| taint | Manually mark a resource as tainted, meaning it will be destructed and recreated at the next apply | |
|validate | validate your terraform syntax | |
| untaint | undo a taint | |



---

## Here is what ChatGPT produces with asked to document useful Terraform commands

Terraform is a popular Infrastructure as Code (IaC) tool that is used for provisioning and managing infrastructure resources. Here are some of the most useful Terraform commands with examples and output blocks:

1. *terraform init*

    This command is used to initialize a Terraform working directory. It downloads and installs the necessary provider plugins, and sets up the backend configuration for storing Terraform state.  
    Example:
```
terraform init
Initializing the backend...
Successfully configured the backend "local"! Terraform will automatically
use this backend unless the backend configuration changes.
```

2. *terraform plan*

    This command generates an execution plan that shows the changes Terraform will make to the infrastructure. It is used to preview the changes before actually applying them.
    Example:
```
$ terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
  ~ update in-place

Terraform will perform the following actions:

  + aws_instance.example
    id:                           <computed>
    ami:                          "ami-0323c3dd2da7fb37d"
    instance_type:                "t2.micro"
    ...

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------
```

3. *terraform apply*

    This command applies the changes specified in the Terraform plan to the infrastructure. It creates, updates, or deletes resources as needed.
    Example:
```
$ terraform apply
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  + aws_instance.example
    id:                           <computed>
    ami:                          "ami-0323c3dd2da7fb37d"
    instance_type:                "t2.micro"
    ...

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
Terraform will perform the actions described above.
Only 'yes' will be accepted to approve.

Enter a value: yes

aws_instance.example: Creating...
aws_instance.example: Still creating... [10s elapsed]
aws_instance.example: Still creating... [20s elapsed]
aws_instance.example: Creation complete after 24s [id=i-0aeb2eacf17c71f01]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

4. *terraform show*

    This command shows the details of the current state of the infrastructure, including the state of the resources, variables, and outputs.
    Example:
```
$ terraform show
# aws_instance.example:
```