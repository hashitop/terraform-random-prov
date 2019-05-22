variable "region" {
  
}

provider "random" {
  
}

resource "random_id" "server" {
  keepers {
    ami_id = "${var.region}"
  }
  byte_length = 8
}

resource "random_pet" "server" {
  keepers {
    ami_id = "${var.region}"
  }
}

output "random_id" {
  value = "${random_id.server.hex}"
}

output "random_id_ami" {
  value = "${random_id.server.keepers.ami_id}"
}

output "random_pet" {
  value = "${random_pet.server.id}"
}

output "random_pet_ami" {
  value = "${random_pet.server.keepers.ami_id}"
}

