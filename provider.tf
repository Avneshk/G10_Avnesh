terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "AV_RG"
    storage_account_name = "avstorage12"
    container_name       = "avneshcontainer"
    key                  = "avnesh.tfstate"
  }
}



provider "azurerm" {
  features {}
  subscription_id = "76095b6e-0585-402e-8e43-281835aebfd1"
}