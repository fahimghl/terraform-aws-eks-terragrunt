terraform {
    source = "git::https://github.com/fahimghl/terraform-aws-eks.git//modules/cluster?ref=0.0.1"
}

dependency "vpc" {
  config_path = ["../vpc" ]
}