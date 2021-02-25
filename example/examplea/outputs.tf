output "server" {
  value     = module.postgresql.server
  sensitive = true
}

output "database" {
  value = module.postgresql.database
}
