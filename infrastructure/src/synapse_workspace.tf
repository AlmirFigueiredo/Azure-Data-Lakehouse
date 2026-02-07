resource "azurerm_synapse_workspace" "iot_synthetic_synapse_workspace" {
  name                                 = "iot-synthetic-synapse-${substr(md5(azurerm_resource_group.rg_iotsyntheticdata202511.id), 0, 8)}"
  resource_group_name                  = azurerm_resource_group.rg_iotsyntheticdata202511.name
  location                             = azurerm_resource_group.rg_iotsyntheticdata202511.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.mysynapse.id
  sql_administrator_login              = "" // Removed before push
  sql_administrator_login_password     = ""

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags

  public_network_access_enabled = true
  managed_virtual_network_enabled = false
}

resource "azurerm_synapse_spark_pool" "spark_pool" {
  name                 = "SparkPool"
  synapse_workspace_id = azurerm_synapse_workspace.iot_synthetic_synapse_workspace.id
  node_size_family     = "MemoryOptimized"
  node_size            = "Small"

  auto_scale {
    max_node_count = 3
    min_node_count = 3
  }

  auto_pause {
    delay_in_minutes = 15
  }

  spark_log_folder    = "/logs"
  spark_events_folder = "/events"
  spark_version       = "3.4"
  dynamic_executor_allocation_enabled = false
  tags                = var.tags
}


