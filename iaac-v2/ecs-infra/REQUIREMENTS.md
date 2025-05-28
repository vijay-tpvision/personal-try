Data:

read remote state from core-infra
get vpc and subnet as data 

pull following values remote state.

project name: boston 
Environmemnt - dev 
region: eu-central-1 


Resources:
Create ECS ASG and minimum 1 - maximun 6 desired 2, evenly spread

Select appropriate amazon managed ECS optimized image, X86-linux , t3.medium
add necessary 

Create only one EC2 in any AZ, in any private subnet

ECS Cluster
Create an ECS cluster in this subnet with EC2 launch type
