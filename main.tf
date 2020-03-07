provider "aws" {
  region = var.region
}


module "ec2_cluster" {
  source                 = "./modules/ec2"

  name                   = var.name
  instance_count         = var.instance_count

  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = var.subnet_id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}