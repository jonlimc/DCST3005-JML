variable "shortname" {
  type        = string
  description = <<-TEKST
    Ditt personlige kortnavn. Alle studentene deler den samme tenanten, og
    flere ressursnavn i Azure må være globalt unike – uten dette kolliderer
    utrullingen din med en medstudents.
  TEKST
}
 
variable "project" {
  type        = string
  default     = "oppg3"
  description = "Prosjektnavnet som inngår i alle ressursnavn."
}
 
variable "environment" {
  type        = string
  description = "Miljønavnet: dev, test eller prod."
 
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "environment må være dev, test eller prod."
  }
}
 
variable "location" {
  type        = string
  default     = "norwayeast"
  description = "Azure-regionen ressursene opprettes i."
 
  validation {
    condition = contains([
      "northeurope", "uksouth", "westeurope", "norwayeast", "norwaywest",
    ], var.location)
    error_message = "Bare disse regionene er tillatt i tenanten vår."
  }
}
 
variable "address_space" {
  type        = string
  description = <<-TEKST
    Adresserommet DETTE miljøet disponerer, f.eks. 10.10.0.0/16.
    Ingen default: adresseplanen er en global beslutning, og en default her
    ville betydd at alle miljøer arvet samme adresse.
  TEKST
}
 
variable "subnets" {
  type        = map(number)
  description = "Subnett i dette miljøet: navn => netnum."
 
  default = {
    web  = 0
    app  = 1
    data = 2
  }
 
}
 
variable "vm_subnet_key" {
  type        = string
  default     = "app"
  description = "Nøkkelen til subnettet maskinen skal ligge i."
}
 
variable "vm_size" {
  type        = string
  description = "VM-SKU. Skal være mindre i dev enn i prod."
}
 
variable "admin_username" {
  type        = string
  default     = "tfadmin"
  description = "Lokal administratorbruker på maskinen."
}
 
variable "admin_password" {
  type        = string
  sensitive   = true
  description = "Settes med `export TF_VAR_admin_password='...'`, ikke i tfvars."
}
 
variable "subscription_id" {
  type        = string
  default     = null
  description = <<-TEKST
    Subscription-ID. Står den som null, brukes ARM_SUBSCRIPTION_ID eller den
    aktive subscriptionen fra Azure CLI.
  TEKST
}