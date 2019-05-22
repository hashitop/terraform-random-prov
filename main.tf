provider "random" {
  
}

resource "random_id" "server" {

  byte_length = 8
}

resource "random_pet" "server" {
  
}

output "random_id" {
  value = "${random_id.server.hex}"
}

output "random_pet" {
  value = "${random_pet.server.id}"
}

