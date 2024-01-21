# Terraform-loadbalancers

Load Balancer Root Module

This is the root module to host all the environment specific values to provision ALB's on AWS Cloud.
And just by supplying a different set of values this will provision the needed infrastructure.

All the terraform commands will be executed from here and the respective backend module is `Terraform-module-alb`

This is designed keeping both the public and private alb in mind.
