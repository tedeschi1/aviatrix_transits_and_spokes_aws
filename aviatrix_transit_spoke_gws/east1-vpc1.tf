module "aws_spoke_vpc1_us-east-1" {
  source  = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version = "8.2.0"

  cloud           = "AWS"
  name            = "spoke-vpc1-us-east-1"
  cidr            = "10.1.0.0/20"
  region          = "us-east-1"
  account         = "aws_admin"
  #transit_gw     = "avx-eu-west-1-transit"
  attached        = false
  attached_gw_egress = false
}
