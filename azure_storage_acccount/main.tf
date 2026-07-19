resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.landing_zone_rg.name
  location                 = azurerm_resource_group.landing_zone_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}

resource "azurerm_storage_container" "example" {
  name                  = "statecontainer"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}