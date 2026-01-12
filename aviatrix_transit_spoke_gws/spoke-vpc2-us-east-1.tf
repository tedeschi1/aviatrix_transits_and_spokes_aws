module "aws_spoke_vpc2_us-east-1" {
  source  = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version = "8.2.0"

  cloud           = "AWS"
  name            = "spoke-vpc2-us-east-1"
  cidr            = "10.1.16.0/20"
  region          = "us-east-1"
  account         = "aws_admin"
  transit_gw     = "transit-vpc3-us-east-1"
  use_existing_vpc = true
  vpc_id          = "vpc-0a8f6238a5af3f811"
  gw_subnet       = "10.1.22.0/24"
  hagw_subnet     = "10.1.23.0/24"
  attached        = false
  attached_gw_egress = false

  depends_on = [ module.aws_transit_vpc3_us-east-1 ]
}