## This demo reviews how to add scripts and User data using Terraform.

---

## Here is what ChatGPT has to say about this topic:

- Prompt:
    - Explain userdata via scripts in terraform as if I have never been exposed to the concept. Lets take this step by step.

- Response:
    - In Terraform, the ```user_data``` configuration block is used to specify data that will be passed to an instance when it's created. This data can be in the form of a script, which can be used to perform various tasks on the instance, such as installing software, configuring the system, and so on.

    Here's a basic example of how you might use ```user_data``` in Terraform to configure an instance:

    ```
    resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"

    user_data = <<EOF
    #!/bin/bash

    sudo apt-get update
    sudo apt-get install -y nginx
    sudo systemctl start nginx
    EOF
    }    
    ```

    In this example, Terraform is creating an AWS EC2 instance using an Amazon Machine Image (AMI) with ID ```ami-0c55b159cbfafe1f0``` and type ```t2.micro```. The ```user_data block``` contains a script that will be executed on the instance when it's created. The script uses ```apt-get``` to update the package list and install the ```nginx``` web server, and then starts the ```nginx``` service.

    The ```user_data``` script is written in bash, which is a commonly used shell scripting language on Linux systems. However, the script can be written in any language that can be executed on the target system.

    It's important to note that the ```user_data``` script is executed as the root user, so it has complete control over the system. This can be both a blessing and a curse, as it gives you a lot of power to configure the system, but it also means that you need to be very careful with the commands you include in the script.

    In conclusion, ```user_data``` in Terraform is a powerful feature that allows you to automate the configuration of instances when they're created. By using scripts, you can perform a wide variety of tasks on the instance, from installing software to configuring the system.

---

## Here is more info about some of the commands used in the script:

The ```tee``` command in Linux is a very useful utility that allows you to simultaneously redirect the standard output (stdout) of a command to both the screen and one or more files. In other words, the output from a command can be "teed" off and saved to a file at the same time that it's displayed on the screen.

Here's a basic example of how the ```tee``` command works:

```
$ ls -l | tee file.txt
```

This command will list the contents of the current directory (using the ```ls -l``` command), and at the same time, it will save the output to a file named ```file.txt```. You'll see the output displayed on your screen just as if you had typed ```ls -l```, and you'll also find the same output in the file ```file.txt```.

You can also use ```tee``` to append to an existing file instead of overwriting it:

```
$ ls -l | tee -a file.txt
```

This will add the output from the ```ls -l``` command to the end of the existing ```file.txt``` file.

Another useful feature of the ```tee``` command is that it allows you to save the output from a command to multiple files at the same time:

```
$ ls -l | tee file1.txt file2.txt
```

This will save the output from the ```ls -l``` command to both ```file1.txt``` and ```file2.txt```.

In conclusion, the ```tee``` command is a very handy tool for situations where you want to both display the output of a command and save it to one or more files at the same time.

---