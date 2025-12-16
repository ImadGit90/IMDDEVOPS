variable "virtual_network" {
  type = map(object({
    name = string
    location = string
    resource_group_name = string
    address_space = list(string)
    dns_server = optional(list(string))

    subnet = optional(list(object({
        name = string
        address_prefixes = list(string)
    })))
  }))
}