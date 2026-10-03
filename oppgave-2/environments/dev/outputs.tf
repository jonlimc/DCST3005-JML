output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "Ressursgruppa dette miljøet ligger i."
}
 
output "vnet_name" {
  value       = module.stack.vnet_name
  description = "Navnet på det virtuelle nettverket."
}
 
output "subnet_prefixes" {
  value       = module.stack.subnet_prefixes
  description = <<-TEKST
    Adressene cidrsubnet() regnet ut. Kjør `terraform output subnet_prefixes`
    i to miljøer og sammenlign – samme kode, ulike adresser.
  TEKST
}
 
output "vm_name" {
  value       = module.stack.vm_name
  description = "Navnet på den virtuelle maskinen."
}
 
output "vm_private_ip" {
  value       = module.stack.vm_private_ip
  description = "Maskinens private IP-adresse."
}