variable "vnet_name" {
  type    = string
  default = "vnet-tf-demo-01"
}

variable "nsg_name" {
  type    = string
  default = "nsg-tf-demo"
}

variable "subnet_name" {
  type    = string
  default = "snet-tf-demo-001"
}

variable "sa_name" {
  type    = string
  default = "stterraformdemo"
}

variable "mssql_name" {
  type    = string
  default = "sql-tf-demo-001"
}

variable "mssql_db_name" {
  type    = string
  default = "sqldb-tf-demo"
}

variable "vmss_name" {
  type    = string
  default = "vmss-tf-demo"
}
variable "rg_name" {
  type    = string
  default = "rg-tf-demo"
}

variable "location" {
  type    = string
  default = "West Europe"
}
