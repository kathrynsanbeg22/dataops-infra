output "secrets_summary" { value = module.secrets.summary }
module "secrets" {
  # BOILERPLATE HEADER (NO NEED TO CHANGE):
  source        = "../../components/aws/secrets-manager"
  name_prefix   = "${local.name_prefix}test-"
  environment   = module.env.environment
  resource_tags = local.resource_tags

  # ADD OR MODIFY CONFIGURATION HERE:

  secrets_map = {
    SAMPLE_username = local.secrets_folder,
    SAMPLE_password = local.secrets_folder,
  }

  /* OPTIONALLY, COPY-PASTE ADDITIONAL SETTINGS FROM BELOW:

  kms_key_id = null # when null, use the default KMS key

  */
}
