resource "openstack_objectstorage_container_v1" "test" {
  # region provided by env variable
  name = "tf-test-container-1"

  metadata {
    key1 = "value1"
    key2 = "value2"
  }

}
