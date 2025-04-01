# This data block gets the account configuration where service ids and authorisation policy is provisioned
data "ibm_iam_account_settings" "sid_auth_policy_account_settings" {
}


variable "ibmcloud_api_key" {
  type        = string
  description = "The IBM Cloud API Key where Service ID API Key will be stored in secrets manager"
  sensitive   = true
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
}
terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}
