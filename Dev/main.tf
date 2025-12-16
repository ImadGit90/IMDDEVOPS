module "azurerm_resource_group" {
  source         = "../Modules/azurerm_resource_group"
  resource_group = var.resource_group
}

module "azurerm_virtual_network" {
  source          = "../Modules/azurerm_virtual_network"
  depends_on      = [module.azurerm_resource_group]
  virtual_network = var.virtual_network

}


module "azurerm_virtual_machine" {
  source     = "../Modules/azurerm_virtual_machine"
  depends_on = [module.azurerm_resource_group, module.azurerm_virtual_network]
  vms        = var.vms
}


