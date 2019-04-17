# HW5-DEV 


Saad Alshammary



Overview




Requirements

• AWS account.

• SSH terminal application.

The project

Let’s get started!

Create a VPC

Create a VPC with the following resources and architecture:
 

<img width="656" alt="1" src="https://user-images.githubusercontent.com/36655454/56284217-8895ad80-611c-11e9-912f-f180ba48aa46.png">


  
Create EC2 instances

Create three EC2 instances with the following properties:
• t2.micro instance size
• AMI: ami-3ea13f29 (public community image)
• Instances are named ecoweb1, ecoweb2, and ecoweb3
• The three instances should launch into public subnets in separate AZs (two instances are
in the same AZ).
• The instances should have public IP addresses.
• The instances are associated with a security group called ecoweb-sg. This security group
should allow:
o Incoming traffic on port 80 (http) from the Internet.
o Incoming traffic on port 22 (ssh) from your workstation
(use http://checkip.amazonaws.com to determine your IP address).


