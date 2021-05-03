
resource "azurerm_postgresql_server" "examplea" {
  name = var.server_name

  administrator_login              = var.server["administrator_login"]
  administrator_login_password     = var.administrator_login_password
  auto_grow_enabled                = var.server["auto_grow_enabled"]
  backup_retention_days            = var.server["backup_retention_days"]
  create_mode                      = "Default"
  geo_redundant_backup_enabled     = true
  location                         = var.resource_group.location
  public_network_access_enabled    = false
  resource_group_name              = var.resource_group.name
  sku_name                         = var.server["sku_name"]
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
  storage_mb                       = var.server["storage_mb"]
  version                          = var.server["version"]

  identity {
    type = "SystemAssigned"
  }

  threat_detection_policy {
    enabled = true
  }

  infrastructure_encryption_enabled = true
  tags                              = var.common_tags

}
