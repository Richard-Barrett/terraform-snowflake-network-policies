terraform {
  required_version = ">= 1.5.7"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.97.0"
    }
  }
}

resource "snowflake_network_policy" "this" {
  count = var.create_network_policy ? 1 : 0

  name                      = "$upper(var.network_policy_name)}_NTWK_POLICY"
  allowed_network_rule_list = var.allowed_network_rule_list
  blocked_network_rule_list = var.blocked_network_rule_list
  allowed_ip_list           = var.allowed_ip_list
  blocked_ip_list           = va.blocked_ip_list
  comment                   = var.comment
}

resource "snowflake_network_policy_attachment" "this" {
  count = var.create_network_policy_attachment ? 1 : 0

  network_policy_name = data.snowflake_network_policy.this.network_policy_name
  set_for_account     = var.set_for_account
  users               = var.users
}
