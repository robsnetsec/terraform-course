<h2>This demo reviews how to seperate variables using the vars.tf file. </h2>
<br>

- The "terraform.tfvars" file is caught by the .gitignore file and will not be pushed to the repo. 
    - This is the expected outcome as we do not want to store our keys in a public repo.
- The "vars.tf" file has points to variables in the "terraform.tfvars" file that stores the keys. I included a default Region along with the AMIs (which could have also been placed in the terraform.tfvars file)
- The "provider.tf" file points to the "vars.tf" file to gather the info needed to build the EC2 Instance

