variable "application_name" {
  description = "Nombre de la aplicación"
  type        = string
  default     = "integradora"
}

variable "environment" {
  description = "Entorno de despliegue"
  type        = string
  default     = "dev"
}

variable "length" {
  description = "Length of the random string"
  type        = number
  default     = 5
}

# Otros tipos de variables pueden ser list, map, bool, etc.

variable "enable_monitoring" {
  description = "Habilitar o deshabilitar el monitoreo"
  type        = bool
  default     = true
}

variable "regions" {
  description = "Lista de regiones donde se desplegará la infraestructura"
  type        = list(string)
  default     = ["us-east-1", "us-west-2"]
}

variable "evironment_tags" {
  description = "Etiquetas específicas para cada entorno"
  type        = map(string)
  default     = {
    dev  = "Development"
    prod = "Production"
  }
}

variable "aplication_config" {
  description = "Configuración específica de la aplicación"
  type        = object({
    version      = string
    maintainer   = string
    dependencies = list(string)
  })
  default = {
    version      = "1.0.0"
    maintainer   = "John Doe"
    dependencies = ["dependency1", "dependency2"]
  }
}

variable "allowed_networks" {
  description = "Lista de redes permitidas para acceder a la aplicación"
  type        = set(string)
  default     = ["10.0.0.0/16", "10.1.0.0/16"]
}


