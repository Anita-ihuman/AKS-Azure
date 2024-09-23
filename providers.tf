terraform {
  required_version = ">=1.0"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

# data "external" "subscription" {
#   program = ["bash", "-c", "az account list --query '[0].id' -o tsv"]
# }

# provider "azurerm" {
#   features {}
#   subscription_id = "b355b6fd-f1c9-4eb5-a9da-74440fd27748"
# }


provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
