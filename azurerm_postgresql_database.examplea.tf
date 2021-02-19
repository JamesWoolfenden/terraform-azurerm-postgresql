resource "azurerm_postgresql_database" "examplea" {
  name                = var.database_name
  resource_group_name = var.resource_group.name
  server_name         = azurerm_postgresql_server.examplea.name
  charset             = var.charset
  collation           = var.collation
}
