# Terraform vSphere LinuxVM example

For Virtual Machine Provisioning with Linux customization.

> Note: For module to work it needs number of required variables corresponding to an existing resources in vSphere. Please refer to variable section for the list of required variables.

## Usage

Following example contains the bare minimum options to be configured for the Linux VM deployment.

### Simple Linux VM deployment

```hcl
module "example-server-linuxvm" {
  source            = "Terraform-VMWare-Modules/vm3nic/vsphere"
  version           = "0.1.0"
  vmtemp            = "TemplateName"
  instances         = 1
  vmname            = "example-server-linux"
  vmrp              = "esxi/Resources"  
  net01              = "Name of the VLAN in vSphere for the first NIC"
  net02              = "Name of the VLAN in vSphere for the Second NIC"
  net03              = "Name of the VLAN in vSphere for the Third NIC"
  data_disk         = "true"
  data_disk_size_gb = 20
  dc                = "Datacenter"
  ds_cluster        = "Data Store Cluster name"
}
```

### Example of Linux VM with Data Disk

```hcl
module "example-server-linuxvm-withdatadisk" {
  source            = "Terraform-VMWare-Modules/vm3nic/vsphere"
  version           = "0.1.0"
  vmtemp            = "TemplateName"
  instances         = 1
  vmname            = "example-server-linux"
  vmrp              = "esxi/Resources"  
  net01              = "Name of the VLAN in vSphere for the first NIC"
  net02              = "Name of the VLAN in vSphere for the Second NIC"
  net03              = "Name of the VLAN in vSphere for the Third NIC"
  data_disk         = "true"
  data_disk_size_gb = 20
  dc                = "Datacenter"
  ds_cluster        = "Data Store Cluster name"
}
```


### Example of Linux VM with image created with 2 disks.

```hcl
module "example-server-linuxvm-image-2-disks" {
  source            = "Terraform-VMWare-Modules/vm3nic/vsphere"
  version           = "0.1.0"
  vmtemp            = "TemplateName"
  instances         = 1
  vmname            = "example-server-windows"
  vmrp              = "esxi/Resources"  
  net01              = "Name of the VLAN in vSphere for the first NIC"
  net02              = "Name of the VLAN in vSphere for the Second NIC"
  net03              = "Name of the VLAN in vSphere for the Third NIC"
  data_disk         = "true"
  data_disk_size_gb = 20
  dc                = "Datacenter"
  ds_cluster        = "Data Store Cluster name"
  template_with_dual_disk = "true"
}
```

## Authors

Originally created by [Arman Keyoumarsi](https://github.com/Arman-Keyoumarsi)

## License

[MIT](LICENSE)
