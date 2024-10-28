output "network_policy_name" {
  description = "The name of the created Snowflake network policy."
  value       = snowflake_network_policy.this[0].name
}

output "attached_users" {
  description = "The list of users to whom the network policy is attached."
  value       = var.users
}
