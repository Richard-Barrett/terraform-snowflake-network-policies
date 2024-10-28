terraform {
  required_version = ">= 1.3.6"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.90.0"
    }
  }
}

provider "snowflake" {}

# tflint-ignore: terraform_unused_declarations
module "snowflake_network_policy_test" {
  source = "../../"

  network_policy_name              = "TEST_NETWORK_POLICY"
  comment                          = "TEST Comment"
  allowed_ip_list                  = ["0.0.0.0/0"]
  blocked_ip_list                  = ["0.0.0.0/0"]
  allowed_network_rule_list        = ["0.0.0.0/0"]
  blocked_network_rule_list        = ["0.0.0.0/0"]
  set_for_account                  = true
  users                            = ["TEST_USER"]
  create_network_policy            = true
  create_network_policy_attachment = true
}
