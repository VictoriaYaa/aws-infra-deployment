# aws-infra-deployment
This repo contains terraform file to do the following:
1. Create VPC and Networking inside the VPC (SG, Subnets and etc..)
2. Create ECS with task definition and Launch Template of EC2 instances.
3. Create ECS service with the capacity provider.
4. Create ALB for the Web Application.
5. Create AutoScaler based on CPU utilization.