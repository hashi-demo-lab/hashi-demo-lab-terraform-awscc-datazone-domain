datazone_domain_name        = "example_domain"
datazone_description        = "AWS DataZone Domain"
datazone_kms_key_identifier = null
single_sign_on              = {}
tags                        = null
region                      = "ap-southeast-2"

environment_blueprints = {
    DefaultDataWarehouse = {
      enabled_regions                  = ["ap-southeast-2"]
      environment_blueprint_identifier = "DefaultDataWarehouse"
    }
    DefaultDataLake = {
      enabled_regions                  = ["ap-southeast-2"]
      environment_blueprint_identifier = "DefaultDataLake"
    }
}