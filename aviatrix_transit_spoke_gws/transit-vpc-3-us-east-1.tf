module "aws_transit_vpc3_us-east-1" {
  source          = "terraform-aviatrix-modules/mc-transit/aviatrix"
  version         = "8.2.0"
  region          = "us-east-1"
  name            = "transit-vpc3-us-east-1"
  account         = "aws_admin"
  cidr            = "10.1.255.0/27"
}