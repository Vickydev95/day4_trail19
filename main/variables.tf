variable "rsgp_name" {  
  default = "trail_21"
}

variable "location" {   
    default = "ukwest"  
}

variable "tags" {
    default = {  
      "envi" = "test"
      "task"    = "exe"
    }
}

variable "strg_name" {
  default = "trainst21"
}

variable "asp_name" {
  default = "trail21asp"
}

variable "fc_name" {
  default = "trailfc"
}

variable "storage_account_access_key" {
    default = "trailfcsa"
}
variable "kv_name" {
  default = "trailkv"
}

