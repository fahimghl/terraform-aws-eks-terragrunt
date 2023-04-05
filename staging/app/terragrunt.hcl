terraform {
    source = "git::https://github.com/fahimghl/terraform-aws-eks.git//modules/asg_node_group?ref=0.0.1"
}
dependency "vpc" {
  config_path = ["../cluster" ]
}