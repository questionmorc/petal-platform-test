variable "name" {
  type = string
  description = "Name of the namespace"
}

variable "labels" {
  type = map(string)
  description = "Labels to apply to the namespace"
  default = {}
}
