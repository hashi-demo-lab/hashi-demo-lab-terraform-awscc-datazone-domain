
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.
variables {

  aws_account                 = "855831148133"
  datazone_domain_name        = "tftest_domain"
  datazone_description        = "AWS DataZone Domain"
  datazone_kms_key_identifier = null
  single_sign_on              = {}
  tags                        = null
  region                      = "ap-southeast-2"

  # Environment Blueprints - today AWS only support DefaultDataWarehouse, DefaultDataLake
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
}

provider "awscc" {
  region = var.region
}

# outputs.tf.tftest.hcl
run "outputs_tf_validation" {
  assert {
    condition     = output.datazone_role_id == awscc_iam_role.this.role_id
    error_message = "incorrect role ID output"
  }

  assert {
    condition     = output.datazone_role_arn == awscc_iam_role.this.arn
    error_message = "incorrect role ARN output"
  }

  assert {
    condition     = output.datazone_domain_id == awscc_datazone_domain.this.domain_id
    error_message = "incorrect domain ID output"
  }

}

# variables.tf.tftest.hcl
run "variables_tf_validation" {
  assert {
    condition     = var.aws_account == "855831148133"
    error_message = "incorrect AWS account variable"
  }

  assert {
    condition     = var.datazone_domain_name != ""
    error_message = "datazone domain name variable should not be empty"
  }

  assert {
    condition     = var.region == "ap-southeast-2"
    error_message = "incorrect region variable"
  }
}