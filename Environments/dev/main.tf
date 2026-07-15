module "resource_group" {
  source          = "../../azurerm_resource_group"
  resource_groups = var.rgs
}


module "virtual_network" {
    depends_on = [ module.resource_group ]
  source = "../../azurerm_virtual_network"
  vnets  = var.vnets
}

module "subnets" {
    depends_on = [ module.virtual_network ]
  source  = "../../azurerm_subnet"
  subnets = var.subnets
}