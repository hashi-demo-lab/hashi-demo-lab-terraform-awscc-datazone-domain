
variable "datazone_domain_name" {
  description = "The name of the aws datazone domain"
  type        = string
}

variable "datazone_description" {
  description = "The description of the aws datazone domain"
  type        = string
  default     = "AWS DataZone Domain"
}

variable "datazone_kms_key_identifier" {
  description = "The KMS key identifier to use for encryption"
  type        = string
  default     = null
}

variable "single_sign_on" {
  description = "The single sign on configuration"
  type = map(object({
    type            = optional(string)
    user_assignment = optional(string)
  }))
  default  = {}
  nullable = false
}

variable "tags" {
  description = "The tags to apply to the domain"
  type = set(object({
    key   = string
    value = string
  }))
  default = null
}

variable "region" {
  description = "The region to deploy the domain"
  type        = string
}

# Environment Blueprints - today only DefaultDataWarehouse, DefaultDataLake
variable "environment_blueprints" {
  description = "The environment blueprints to deploy"
  type = map(object({
    enabled_regions                  = list(string)
    environment_blueprint_identifier = string
    provisioning_role_arn            = optional(string)
    manage_access_role_arn           = optional(string)
  }))
}

variable "datazone_projects" {
  description = "The projects to deploy"
  type = map(object({
    description    = optional(string)
    glossary_terms = optional(list(string))
  }))
}