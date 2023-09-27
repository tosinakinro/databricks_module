terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

// initialize provider in "MWS" mode to provision new workspace
provider "databricks" {
  alias         = "mws"
  host          = "https://accounts.cloud.databricks.com"
  username = var.databricks_account_username
  password = var. databricks_account_password
  account_id = var.databricks_account_id
}