variable "default_cidr" {
    default = "12.12.0.0/16"
}

variable "subnet_range"{
    default = ["12.12.0.0/24","12.12.1.0/24","12.12.2.0/24","12.12.3.0/24"]
}

variable "subnet_names"{
    default = ["web-1","web-2","db-1","db-2"]
}