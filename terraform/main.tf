provider "openstack" {
  # user_name, tenant_name, password, auth_url
  # provided by env variables
}

output "instance" {
  value = "${openstack_compute_instance_v2.test.access_ip_v4}"
}

output "objectstorage_container" {
  value = "${openstack_objectstorage_container_v1.test.name}"
}
