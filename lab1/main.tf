resource "random_string" "suffix" {
  length  = var.length
  special = true
  
}

locals {
  # Genera un nombre único para el recurso utilizando un prefijo y un sufijo aleatorio.
  unique_name = "${var.application_name}-${var.environment}-${random_string.suffix.result}"
}
