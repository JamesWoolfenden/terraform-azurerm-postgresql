output "server" {
  value     = azurerm_postgresql_server.examplea
  sensitive = true
}

output "database" {
  value = azurerm_postgresql_database.examplea
}
