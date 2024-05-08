output "datazone_role_id" {
  value = module.datazone_domain.datazone_role_id
  description = "DataZone Role Id"
}

output "datazone_role_arn" {
  value = module.datazone_domain.datazone_role_arn
  description = "DataZone Role ARN"
}

output "datazone_domain_id" {
  value = module.datazone_domain.datazone_domain_id
  description = "DataZone Domain Id"
}

output "datazone_environment_blueprints" {
  value = module.datazone_domain.datazone_environment_blueprints
  description = "DataZone environment blueprints"
}

output "environment_project_id" {
  value = module.datazone_domain.environment_project_id
  description = "Environment Project Id"
}

output "s3_datazone" {
  value = module.datazone_domain.s3_datazone
  description = "DataZone S3 DataZone Bucket"
}

output "s3_datazone_region" {
  value = module.datazone_domain.s3_datazone_region
  description = "DataZone S3 DataZone Bucket Region"
}

output "datazone_portal" {
  value = module.datazone_domain.datazone_portal
  description = "DataZone Portal URL"
}

output "datazone_status" {
  value = module.datazone_domain.datazone_status
  description = "DataZone Status"
}

output "awscc_executionrole" {
  value = module.datazone_domain.awscc_executionrole
  description = "Datazone Execution Role"
}