variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "administrator_login_password" {
  type      = string
  sensitive = true
}

variable "server_name" {
  type = string
}

variable "server" {
  default = {

    sku_name              = "B_Gen5_2"
    storage_mb            = 5120
    backup_retention_days = 7
    auto_grow_enabled     = true
    administrator_login   = "psqladminun"
    version               = "9.5"
  }
}

variable "resource_group" {
  description = "Resource group to create objects in."
}

variable "database_name" {
  type = string
}

variable "charset" {
  type    = string
  default = "UTF8"
}


variable "collation" {
  type    = string
  default = "English_United States.1252"
}
