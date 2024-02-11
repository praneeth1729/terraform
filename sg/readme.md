
<!-- GETTING STARTED -->
## Getting Started

In this repository, there are two folders: 'modules' and 'projects.' The 'modules' folder houses the security group module, while the 'projects' folder contains Terraform projects for creating security groups

### Import sg from aws with sg-id

This command will import the security group into your Terraform state file, along with all security group rules having the same rule ID.
* terraform import from module block(project)
  ```sh
  terraform import module.ec2_module_sg.aws_security_group.this  aws-sg-id
  ```
* terraform import directly from resource block 
  ```sh
  tterraform import aws_security_group.example_sg aws-sg-id
  ```

### Generate a project file for the security group utilizing the security group module.

Generate a file that mirrors the security group ID being imported from AWS, containing both its ingress and egress rules associated with that specific security group ID. 

## Apply changes 
```sh
  terraform apply
  ```

## Now that you are managing your sg through terraform 