provider "vsphere" {
  # If you have a self-signed cert
  allow_unverified_ssl = true
}

resource "vsphere_virtual_disk" "myDisk" {
  size         = 1
  vmdk_path    = "Roger/Roger.vmdk"
  datacenter   = "PacketDatacenter"
  datastore    = "datastore1"
  type         = "thin"
}
