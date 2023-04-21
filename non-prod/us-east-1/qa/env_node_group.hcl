inputs = {
  name                     = "qa-node-group"
  zone_awareness           = true
  root_volume_size         = 40
  max_size                 = 12
  min_size                 = 0
  instance_size            = "large"
  instance_family          = "general_purpose"
  instance_lifecycle       = "spot"
  spot_allocation_strategy = "lowest-price"
  architecture             = "x86_64"
  gpu                      = false
  labels                   = {}
  taints                   = {}
  tags                     = {}
  instance_types           = []
  key_name                 = "your-key-name"
  security_groups          = []
  termination_policies     = ["OldestLaunchTemplate", "OldestInstance"]
  enabled_metrics = [
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupInServiceCapacity",
    "GroupMaxSize",
    "GroupMinSize",
    "GroupPendingInstances",
    "GroupPendingCapacity",
    "GroupStandbyInstances",
    "GroupStandbyCapacity",
    "GroupTerminatingInstances",
    "GroupTerminatingCapacity",
    "GroupTotalInstances",
    "GroupTotalCapacity",
  ]
  cluster_autoscaler                        = true
  bottlerocket                              = false
  bottlerocket_admin_container_enabled      = false
  bottlerocket_admin_container_superpowered = true
  bottlerocket_admin_container_source       = ""
  imdsv2_required                           = true
}
