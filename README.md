# ovh-openstack-test

This project creates a [Vagrant box](https://www.vagrantup.com/) to
test OpenStack-based [OVH Public Cloud Servers](https://www.ovh.co.uk/cloud/instances/)
with [Terraform](https://terraform.io/).

> **Warning!** Running the Terraform examples in this project will create
infrastructure resources and you may incur charges for these resources.

## Setup

Once provisioned, the Vagrant box is configured with Terraform and OpenStack's
_swift_ and _nova_ command-line tools.

1. Create a `.credentials` directory in the root of this project.
_Note: This directory will be ignored by `.gitignore`._
1. Place an `ovh-openrc.sh` file in `.credentials/`. See the
[OpenStack RC](http://docs.openstack.org/cli-reference/content/cli_openrc.html) 
docs for the expected format of this file.
1. Run `vagrant up`.
1. Run `vagrant ssh` to connect to your Vagrant box once it's
completed provisioning.

## Terraform

To run Terraform commands from within the Vagrant box, run the commands below.

### Apply

To _create_ infrastructure resources, run:

```
$ terraform apply /vagrant/terraform
```

### Destroy

To _destroy_ infrastructure resources, run:

```
$ terraform destroy /vagrant/terraform
```

## Teardown

If you've created resources using Terraform run the commands in the
[Destroy section](#destroy) before continuing.

To destroy the Vagrant box, run `vagrant destroy`.
