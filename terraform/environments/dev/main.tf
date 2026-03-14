module "networking" {
  source              = "../../modules/networking"
  name                = "dev-vnet"
  location            = "westeurope"
  resource_group_name = "rg-dev"
  address_space       = ["10.10.0.0/16"]

  subnets = {
    app = ["10.10.1.0/24"]
  }
}
