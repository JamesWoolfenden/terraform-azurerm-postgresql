
resource "azurerm_postgresql_server" "examplea" {
  name                = var.server_name
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name

  sku_name = var.server["sku_name"]

  storage_mb                       = var.server["storage_mb"]
  backup_retention_days            = var.server["backup_retention_days"]
  geo_redundant_backup_enabled     = true
  auto_grow_enabled                = var.server["auto_grow_enabled"]
  create_mode                      = "Default"
  administrator_login              = var.server["administrator_login"]
  ssl_minimal_tls_version_enforced = "TLS1_2"
  administrator_login_password     = var.administrator_login_password
  version                          = var.server["version"]
  ssl_enforcement_enabled          = true
  public_network_access_enabled    = false
  identity {
    type = "SystemAssigned"
  }

  infrastructure_encryption_enabled = true
  tags                              = var.common_tags
}
