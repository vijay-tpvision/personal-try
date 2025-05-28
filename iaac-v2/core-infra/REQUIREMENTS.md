project name: boston (# Variable)
Environmemnt - dev (# variable)
region: eu-central-1 (#variable)

Network:
   A vpc with 3 private subnet and 3 public subnet
   For priavte subnet make NAT.
   Select VPC CIDR sufficient to give 60 ips each subnet
   Setup necessary logging in cloud watch

Task: generate Terraform code.
I will provide state backend bucket and the object
make a seperate backend.tf
keep provider seperate
make 2 provider alisases default eu-central-1 and another for us-east-1

