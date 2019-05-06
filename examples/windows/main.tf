// Example of basic Windows VM
module "example-server-windowsvm-withdatadisk" {
  source           = "Terraform-VMWare-Modules/vm3nic/vsphere"
  version          = "0.1.0"
  vmtemp           = "TemplateName"
  instances        = 1
  vmname           = "example-server-windows"
  vmrp             = "esxi/Resources"
  net01            = "Name of the VLAN in vSphere for the first NIC"
  net02            = "Name of the VLAN in vSphere for the Second NIC"
  net03            = "Name of the VLAN in vSphere for the Third NIC"
  is_windows_image = "true"
  dc               = "Datacenter"
  ds               = "Data Store Cluster name"
  winadminpass     = "Str0ngP@ssw0rd!"                                //Optional
}

// Example of Windows VM with additional
module "example-server-windowsvm-withdatadisk" {
  source            = "Terraform-VMWare-Modules/vm3nic/vsphere"
  version           = "0.1.0"
  vmtemp            = "TemplateName"
  instances         = 1
  vmname            = "example-server-windows"
  vmrp              = "esxi/Resources"
  net01             = "Name of the VLAN in vSphere for the first NIC"
  net02             = "Name of the VLAN in vSphere for the Second NIC"
  net03             = "Name of the VLAN in vSphere for the Third NIC"
  data_disk         = "true"
  data_disk_size_gb = 20
  is_windows_image  = "true"
  dc                = "Datacenter"
  ds                = "Data Store Cluster name"
  winadminpass      = "Str0ngP@ssw0rd!"
}
