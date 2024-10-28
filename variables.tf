variable "create_network_policy" {
  description = "Boolean to control the creation of the Snowflake network policy."
  type        = bool
  default     = true
}

variable "create_network_policy_attachment" {
  description = "Boolean to control the creation of the Snowflake network policy attachment."
  type        = bool
  default     = true
}

variable "network_policy_name" {
  description = "The name of the Snowflake network policy."
  type        = string
}

variable "allowed_network_rule_list" {
  description = "List of allowed network rules."
  type        = list(string)
}

variable "blocked_network_rule_list" {
  description = "List of blocked network rules."
  type        = list(string)
}

variable "allowed_ip_list" {
  description = "List of allowed IP addresses."
  type        = list(string)
}

variable "blocked_ip_list" {
  description = "List of blocked IP addresses."
  type        = list(string)
}

variable "comment" {
  description = "Comment for the network policy."
  type        = string
}

variable "set_for_account" {
  description = "Boolean to set the network policy for the account."
  type        = bool
}

variable "users" {
  description = "List of users to attach the network policy to."
  type        = list(string)
}
variable "network_policy_name" {
  description = "The name of the Snowflake network policy."
  type        = string
}

variable "allowed_network_rule_list" {
  description = "List of allowed network rules."
  type        = list(string)
}

variable "blocked_network_rule_list" {
  description = "List of blocked network rules."
  type        = list(string)
}

variable "allowed_ip_list" {
  description = "List of allowed IP addresses."
  type        = list(string)
}

variable "blocked_ip_list" {
  description = "List of blocked IP addresses."
  type        = list(string)
}

variable "comment" {
  description = "Comment for the network policy."
  type        = string
}

variable "set_for_account" {
  description = "Boolean to set the network policy for the account."
  type        = bool
}

variable "users" {
  description = "List of users to attach the network policy to."
  type        = list(string)
}