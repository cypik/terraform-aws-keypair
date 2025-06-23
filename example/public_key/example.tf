provider "aws" {
  region = "us-east-2"
}

####----------------------------------------------------------------------------------
##  Module      : public KEY PAIR
####----------------------------------------------------------------------------------
module "public_keypair" {
  source      = "../../"
  name        = "public-key"
  environment = "test"
  label_order = ["name", "environment"]
  public_key  = "ssh-rsaxxxxxxxxxxxxxxxxxJ5lb0sFXuWDhdcE+JFZUQEHmJaIr4g7Faczl5oFK6TYc1FRut9ve4v0JKb"
}