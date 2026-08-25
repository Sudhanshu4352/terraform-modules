rgs = {
  rg-dev-01 = {
    location = "southafricanorth"
  }
  rg-dev-02 = {
    location = "southafricanorth"
  }
}

vnets = {
  vnet-01 = {
    address_space       = ["10.10.0.0/16"]
    location            = "southafricanorth"
    resource_group_name = "rg-dev-01"
  }
  vnet-02 = {
    address_space       = ["10.20.0.0/16"]
    location            = "southafricanorth"
    resource_group_name = "rg-dev-01"
  }
}

subnets = {
  subnets-landingzone-01 = {
    resource_group_name  = "rg-dev-01"
    virtual_network_name = "vnet-01"
    address_prefixes     = ["10.10.1.0/24"]
  }
  AzureBastionSubnet = {
    resource_group_name  = "rg-dev-01"
    virtual_network_name = "vnet-01"
    address_prefixes     = ["10.10.2.0/24"]
  }
}

stg_account = {
  stg-dev-01 = {
    name                     = "stgdev01"
    resource_group_name      = "rg-dev-01"
    location                 = "southafricanorth"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
