output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg_iotsyntheticdata202511.name
}

output "data_factory_name" {
  description = "Name of the data factory"
  value       = azurerm_data_factory.iot_synthetic_data_factory.name
}

output "data_factory_id" {
  description = "ID of the data factory"
  value       = azurerm_data_factory.iot_synthetic_data_factory.id
}

output "data_lake_storage_account" {
  description = "Name of the Data Lake storage account"
  value       = azurerm_storage_account.datalake_storage.name
}

output "data_lake_containers" {
  description = "Names of the Data Lake containers"
  value = {
    bronze = azurerm_storage_data_lake_gen2_filesystem.bronze.name
    silver = azurerm_storage_data_lake_gen2_filesystem.silver.name
    gold   = azurerm_storage_data_lake_gen2_filesystem.gold.name
    source = azurerm_storage_data_lake_gen2_filesystem.source.name
  }
}

output "synapse_workspace_name" {
  description = "Name of the Synapse Workspace"
  value       = azurerm_synapse_workspace.iot_synthetic_synapse_workspace.name
}

output "synapse_workspace_id" {
  description = "ID of the Synapse Workspace"
  value       = azurerm_synapse_workspace.iot_synthetic_synapse_workspace.id
}

output "synapse_spark_pools" {
  description = "Names of the Synapse Spark Pools"
  value = {
    spark_pool = azurerm_synapse_spark_pool.spark_pool.name
  }
}

