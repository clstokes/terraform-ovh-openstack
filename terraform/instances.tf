resource "openstack_compute_instance_v2" "test" {
  # region provided by env variable
  name = "test"
  image_id = "6ea6402b-accd-487f-9ff5-175ecebfd10b"               # Ubuntu 14.04 from `nova image-list`
  flavor_id = "d914cd43-bc57-4e23-af9d-f295f509b6bd"              # sp-30 from `nova flavor-list`
  key_pair = "${openstack_compute_keypair_v2.test.name}"
  security_groups = ["${openstack_compute_secgroup_v2.ssh.name}"]

  metadata {
    key1 = "value1"
    key2 = "value2"
  }

}

resource "openstack_compute_keypair_v2" "test" {
  # region provided by env variable
  name = "test"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDi7UNZlDsc5MJVczkID921ZiEryqwBnKOmsV6XudGhc3/z0swPYDVvWrWFeMJgklwxz7yCB6UtdqsrfU9ZB4wsTGKRIkiH3fiaeeZ982z78lXUWEibLXQGT9M9c12yWyY+tSKxTyg91oZWLWYXSxUL4pD/IcZSfl9lM8TaigETD6xYTn/hEcZb/UIpWHPDjVqsJDEuM7vQyxb99DvicxHPmBVmcHSBEiHwReEH1Ug3gbTpQPVTl4Wi/A6nbhisB6P2LvO8oZuSMhbn9lZxxy2zvCYiT1DU48ux9HYKCQedceBeKXWwTiK32Sll5cQS0okew60Qaucj4ILYpXNLul9c7u2v3ngfmYTGC4kXa82A8wojp/86roSl6uRaluPI3t9kTcsfkD/eU9Ag+cknZrIBY+Gt1J2ANNXL9d6d51/F3kVaOCwiLd9id6X7Z4pYFtz7xyyy16ya+IL9jdwQcp36xedG8WXsZIVf7w2HmE8kLuah98/cMh0hwMAXz4WdCy4ovi7LPzsIWOx6vgcl+X5I1t1iQxcpJBVCeF/kUAVNpF9Nuxw2embNOmj3DYrt6KXBg9iCtATmItPxuM0bb0n/SpzDAOJqz4l1RT8wiOlldWO7u+DX4sDfWRtxnlSllkZs/zGoIjUUj2U17LP1zAehxHRDqPIolH6MMKvhbg23bQ== cameron@cameronstokes.com"
}

resource "openstack_compute_secgroup_v2" "ssh" {
  # region provided by env variable
  name = "ssh"
  description = "ssh access"
  rule {
    from_port = 22
    to_port = 22
    ip_protocol = "tcp"
    cidr = "0.0.0.0/0"
  }
}
