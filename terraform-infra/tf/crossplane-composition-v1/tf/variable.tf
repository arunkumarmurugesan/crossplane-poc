variable "locationconstraint" {}
variable "acl" {
    default = "private"
}
variable "versioningconfiguration" {}
variable "bucket" {}
variable "forcedestroy" {
    default = "false"
}
variable "env" {
    default = "dev"
}