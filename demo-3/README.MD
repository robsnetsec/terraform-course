## This demo reviews how to output attributes from the created EC2 instance
<br>

- The ```provisioner "local-exec"``` KV pair in the ```instance.tf``` file has terraform run an echo command to gather the private IP of the EC2 instance and save it to the ```private_ips.txt``` file
- At the end of the ```instance.tf``` file, there is an output section that displays the EC2 instance's public IP address to the console.