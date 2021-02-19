module "postgresql" {
  source                       = "../../"
  common_tags                  = var.common_tags
  resource_group               = azurerm_resource_group.examplea
  administrator_login_password = random_string.admin_password.result
  server_name                  = "examplea"
  database_name                = "examplea"
}
