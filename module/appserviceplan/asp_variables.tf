variable "rsgp_name" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type = string
  default = ""
}

variable "asp_name" {
  type = string
  default = ""
}

variable "location" {
    type = string
    default = ""  
}
