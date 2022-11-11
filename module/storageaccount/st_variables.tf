variable "rsgp_name" {
  type = string
  default = ""
}

variable "strg_name" {
  type = string
  default = ""
}

variable "location" {
    type = string
    default = ""  
}

variable "tags" {
    type = map(string)
    default = {      
    }
}

variable "account_tier" {
    type = string
    default = "Standard"
}

variable "account_replication_type" {
    type = string
    default = "GRS"
}
