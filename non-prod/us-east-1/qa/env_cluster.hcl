inputs = {
  name                                                                 = "qa-environment"
  endpoint_public_access                                               = false
  endpoint_public_access_cidrs                                         = null
  cluster_log_types                                                    = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  iam_role_name_prefix                                                 = ""
  cluster_autoscaler_iam_permissions_boundary                          = ""
  oidc_root_ca_thumbprints                                             = ["9e99a48a9960b14926bb7f3b02e22da2b0ab7280"]
  cluster_autoscaler                                                   = false
  cluster_autoscaler_iam_role_arn                                      = ""
  aws_ebs_csi_driver_iam_role_arn                                      = ""
  aws_ebs_csi_driver_iam_permissions_boundary                          = ""
  pv_fstype                                                            = "ext4"
  aws_auth_role_map                                                    = []
  aws_auth_user_map                                                    = []
  kms_cmk_arn                                                          = ""
  legacy_security_groups                                               = false
  tags                                                                 = {}
  critical_addons_node_group_min_size                                  = 1
  critical_addons_node_group_max_size                                  = 2
  critical_addons_node_group_instance_size                             = "t3.small"
  critical_addons_node_group_instance_family                           = "general_purpose"
  critical_addons_node_group_key_name                                  = ""
  critical_addons_node_group_security_groups                           = []
  critical_addons_node_group_bottlerocket                              = false
  critical_addons_node_group_architecture                              = "x86_64"
  critical_addons_node_group_bottlerocket_admin_container_enabled      = false
  critical_addons_node_group_bottlerocket_admin_container_superpowered = true
  critical_addons_node_group_bottlerocket_admin_container_source       = ""
  critical_addons_vpc-cni_configuration_values                         = null
  critical_addons_kube-proxy_configuration_values                      = null
  critical_addons_coredns_configuration_values                         = null
  critical_addons_ebs-csi_configuration_values                         = null
  security_group_ids                                                   = []
}


