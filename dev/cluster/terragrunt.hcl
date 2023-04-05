terraform {
    source = "git::https://github.com/fahimghl/terraform-aws-eks.git//modules/cluster?ref=0.0.1"
}

locals = {

}

dependency "vpc" {
  config_path = ["../vpc"]
}

dependency "vpc" {
  config_path = ["../iam"]
}

inputs = {
  vpc_config = dependency.vpc.outputs.vpc_config
  iam_config = dependency.iam.outputs.config
}