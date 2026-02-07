resource "azurerm_storage_account" "datalake_storage" {
  name                     = "iotsyntheticdatadl${substr(md5(azurerm_resource_group.rg_iotsyntheticdata202511.id), 0, 8)}"
  resource_group_name      = azurerm_resource_group.rg_iotsyntheticdata202511.name
  location                 = azurerm_resource_group.rg_iotsyntheticdata202511.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = true
  tags                     = var.tags

  
  public_network_access_enabled = true

  
  network_rules {
    default_action = "Allow"
    bypass         = ["AzureServices"]
  }
}

resource "azurerm_storage_data_lake_gen2_filesystem" "source" {
  name               = "source"
  storage_account_id = azurerm_storage_account.datalake_storage.id
}

resource "azurerm_storage_data_lake_gen2_filesystem" "bronze" {
  name               = "bronze"
  storage_account_id = azurerm_storage_account.datalake_storage.id
}

resource "azurerm_storage_data_lake_gen2_filesystem" "silver" {
  name               = "silver"
  storage_account_id = azurerm_storage_account.datalake_storage.id
}

resource "azurerm_storage_data_lake_gen2_filesystem" "gold" {
  name               = "gold"
  storage_account_id = azurerm_storage_account.datalake_storage.id
}

resource "azurerm_storage_data_lake_gen2_filesystem" "mysynapse" {
  name               = "mysynapse"
  storage_account_id = azurerm_storage_account.datalake_storage.id
}

