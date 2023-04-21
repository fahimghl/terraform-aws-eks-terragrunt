inputs = {
  service_role_name = "QAEksService"
  node_role_name = "NodeService"
  name               = "qa-us-east-1"
  cidr_block         = "10.4.0.0/16"
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
