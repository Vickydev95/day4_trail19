variable "vname" {
    default = "StorageAccount-ResourceGroup1"
  
}
variable "location" {
    default = "ukwest"
}
variable "tags" {
    type = map(string) 
    default = {
        "environment" = "dev"
        "source" = "trail19"
    }
  
}