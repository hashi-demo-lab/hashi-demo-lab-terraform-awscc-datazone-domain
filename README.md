# tf-module-template - test publishing
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.4 |
| <a name="requirement_awscc"></a> [awscc](#requirement\_awscc) | ~> 0.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.45.0 |
| <a name="provider_awscc"></a> [awscc](#provider\_awscc) | 0.76.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_datazone_iam"></a> [datazone\_iam](#module\_datazone\_iam) | github.com/hashi-demo-lab/tfc-dpaas-demo//terraform-aws-iam-datazone | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.datazone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_ownership_controls.datazone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_public_access_block.datazone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.datazone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.datazone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [awscc_datazone_domain.this](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs/resources/datazone_domain) | resource |
| [awscc_datazone_environment_blueprint_configuration.this](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs/resources/datazone_environment_blueprint_configuration) | resource |
| [awscc_datazone_project.this](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs/resources/datazone_project) | resource |
| [awscc_iam_role.this](https://registry.terraform.io/providers/hashicorp/awscc/latest/docs/resources/iam_role) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account"></a> [aws\_account](#input\_aws\_account) | AWS Account ID | `string` | `"855831148133"` | no |
| <a name="input_datazone_description"></a> [datazone\_description](#input\_datazone\_description) | The description of the aws datazone domain | `string` | `"AWS DataZone Domain"` | no |
| <a name="input_datazone_domain_name"></a> [datazone\_domain\_name](#input\_datazone\_domain\_name) | The name of the aws datazone domain | `string` | n/a | yes |
| <a name="input_datazone_kms_key_identifier"></a> [datazone\_kms\_key\_identifier](#input\_datazone\_kms\_key\_identifier) | The KMS key identifier to use for encryption | `string` | `null` | no |
| <a name="input_datazone_projects"></a> [datazone\_projects](#input\_datazone\_projects) | The projects to deploy | <pre>map(object({<br>    description    = optional(string)<br>    glossary_terms = optional(list(string))<br>  }))</pre> | <pre>{<br>  "data_team": {<br>    "description": "Data Team Project 1",<br>    "glossary_terms": [<br>      "term3",<br>      "term4"<br>    ]<br>  },<br>  "environment": {<br>    "description": "shared environment project",<br>    "glossary_terms": [<br>      "term1",<br>      "term2"<br>    ]<br>  }<br>}</pre> | no |
| <a name="input_environment_blueprints"></a> [environment\_blueprints](#input\_environment\_blueprints) | The environment blueprints to deploy | <pre>map(object({<br>    enabled_regions                  = list(string)<br>    environment_blueprint_identifier = string<br>    provisioning_role_arn            = optional(string)<br>    manage_access_role_arn           = optional(string)<br>  }))</pre> | <pre>{<br>  "DefaultDataLake": {<br>    "enabled_regions": [<br>      "ap-southeast-2"<br>    ],<br>    "environment_blueprint_identifier": "DefaultDataLake"<br>  },<br>  "DefaultDataWarehouse": {<br>    "enabled_regions": [<br>      "ap-southeast-2"<br>    ],<br>    "environment_blueprint_identifier": "DefaultDataWarehouse"<br>  }<br>}</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | The region to deploy the domain | `string` | `"ap-southeast-2"` | no |
| <a name="input_single_sign_on"></a> [single\_sign\_on](#input\_single\_sign\_on) | The single sign on configuration | <pre>map(object({<br>    type            = optional(string)<br>    user_assignment = optional(string)<br>  }))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to apply to the domain | <pre>set(object({<br>    key   = string<br>    value = string<br>  }))</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_awscc_executionrole"></a> [awscc\_executionrole](#output\_awscc\_executionrole) | n/a |
| <a name="output_datazone_domain_id"></a> [datazone\_domain\_id](#output\_datazone\_domain\_id) | n/a |
| <a name="output_datazone_portal"></a> [datazone\_portal](#output\_datazone\_portal) | n/a |
| <a name="output_datazone_role_arn"></a> [datazone\_role\_arn](#output\_datazone\_role\_arn) | n/a |
| <a name="output_datazone_role_id"></a> [datazone\_role\_id](#output\_datazone\_role\_id) | n/a |
| <a name="output_datazone_status"></a> [datazone\_status](#output\_datazone\_status) | n/a |
| <a name="output_environment_project_id"></a> [environment\_project\_id](#output\_environment\_project\_id) | n/a |
| <a name="output_s3_datazone"></a> [s3\_datazone](#output\_s3\_datazone) | n/a |
| <a name="output_s3_datazone_region"></a> [s3\_datazone\_region](#output\_s3\_datazone\_region) | n/a |
<!-- END_TF_DOCS -->