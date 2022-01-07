variable "default_cidr" {
    default     = "12.12.0.0/16"
    description = "This is the default cidr"
}

variable "subnet_range"{
    default     = ["12.12.0.0/24","12.12.1.0/24","12.12.2.0/24","12.12.3.0/24"]
    description = "These are subnet ranges"
}

variable "subnet_names"{
    default     = ["web-1","web-2","db-1","db-2"]
    description = "These are subnet names"
}