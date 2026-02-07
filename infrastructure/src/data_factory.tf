resource "azurerm_data_factory" "iot_synthetic_data_factory" {
  name                = "iot-synthetic-data-factory-202511-${substr(md5(azurerm_resource_group.rg_iotsyntheticdata202511.id), 0, 6)}"
  location            = azurerm_resource_group.rg_iotsyntheticdata202511.location
  resource_group_name = azurerm_resource_group.rg_iotsyntheticdata202511.name
  tags                = var.tags

  identity {
    type = "SystemAssigned"
  }
}

