output "application_name" {
  value = random_string.suffix.result
}

output "unique_name" {
  value = local.unique_name
}

output "enable_monitoring_output" {
  description = "Valor del monitoreo"
  value       = var.enable_monitoring
}

output "regions_output" {
  description = "Lista de regiones configuradas"
  value       = var.regions
}

