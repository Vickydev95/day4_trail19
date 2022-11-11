variable "rsgp_name" {
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