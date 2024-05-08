## Place your outputs here for your module
output "datazone_role_id" {
  value = awscc_iam_role.this.role_id
  description = "Datazone Execution Role Id"
}

output "datazone_role_arn" {
  value = awscc_iam_role.this.arn
  description = "DataZone Execution Role ARN"
}
output "datazone_domain_id" {
  value = awscc_datazone_domain.this.domain_id
  description = "DataZone domain id"
}

output "projects" {
  value = awscc_datazone_project.this
  description = "DataZone projects"
}
output "s3_datazone" {
  value = aws_s3_bucket.datazone.id
  description = "name of the datazone s3 bucket"
}
output "s3_datazone_region" {
  value = aws_s3_bucket.datazone.region
  description = "region of the datazone s3 bucket"
}

output "datazone_environment_blueprints" {
  value = awscc_datazone_environment_blueprint_configuration.this
  description = "DataZone environment blueprints"
}

output "datazone_portal" {
  value = awscc_datazone_domain.this.portal_url
  description = "DataZone portal URL"
}

output "datazone_status" {
  value = awscc_datazone_domain.this.status
  description = "DataZone status"
}

output "awscc_executionrole" {
  value = awscc_iam_role.this
  description = "DataZone execution role object"
}