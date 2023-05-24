resource "aws_api_gateway_rest_api" "MyDemoAPI" {
   name        = "si_backend_api"
  description = "This is my API for demonstration purposes"
}



data "aws_api_gateway_rest_api" "MyDemoAPI" {
    filter {
        name = "si_backend_api"

    }

 
}

# the following is_ec2_instance_exist local should return value 1 if resource exists
locals {
  is_ec2_instance_exist = "$${data.aws_instance.myawsinstance.public_ip)}"
}

# Here is the output block printing the existence of the resource onto the console
output "fetched_info_from_aws" {
  value = data.aws_instance.myawsinstance.public_ip
}