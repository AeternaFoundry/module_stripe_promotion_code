output "promotion_codes_id" {
  description = "Map of id values across all promotion_codes, keyed the same as var.promotion_codes except keys with no id are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "promotion_codes_active" {
  description = "Map of active values across all promotion_codes, keyed the same as var.promotion_codes except keys with no active are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.active if v.active != null }
}
output "promotion_codes_code" {
  description = "Map of code values across all promotion_codes, keyed the same as var.promotion_codes except keys with no code are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.code if v.code != null && length(v.code) > 0 }
}
output "promotion_codes_created" {
  description = "Map of created values across all promotion_codes, keyed the same as var.promotion_codes except keys with no created are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.created if v.created != null }
}
output "promotion_codes_customer" {
  description = "Map of customer values across all promotion_codes, keyed the same as var.promotion_codes except keys with no customer are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.customer if v.customer != null && length(v.customer) > 0 }
}
output "promotion_codes_customer_account" {
  description = "Map of customer_account values across all promotion_codes, keyed the same as var.promotion_codes except keys with no customer_account are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.customer_account if v.customer_account != null && length(v.customer_account) > 0 }
}
output "promotion_codes_expires_at" {
  description = "Map of expires_at values across all promotion_codes, keyed the same as var.promotion_codes except keys with no expires_at are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.expires_at if v.expires_at != null }
}
output "promotion_codes_livemode" {
  description = "Map of livemode values across all promotion_codes, keyed the same as var.promotion_codes except keys with no livemode are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.livemode if v.livemode != null }
}
output "promotion_codes_max_redemptions" {
  description = "Map of max_redemptions values across all promotion_codes, keyed the same as var.promotion_codes except keys with no max_redemptions are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.max_redemptions if v.max_redemptions != null }
}
output "promotion_codes_metadata" {
  description = "Map of metadata values across all promotion_codes, keyed the same as var.promotion_codes except keys with no metadata are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "promotion_codes_object" {
  description = "Map of object values across all promotion_codes, keyed the same as var.promotion_codes except keys with no object are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.object if v.object != null && length(v.object) > 0 }
}
output "promotion_codes_promotion" {
  description = "Map of promotion values across all promotion_codes, keyed the same as var.promotion_codes except keys with no promotion are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.promotion if v.promotion != null && length(v.promotion) > 0 }
}
output "promotion_codes_restrictions" {
  description = "Map of restrictions values across all promotion_codes, keyed the same as var.promotion_codes except keys with no restrictions are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.restrictions if v.restrictions != null && length(v.restrictions) > 0 }
}
output "promotion_codes_times_redeemed" {
  description = "Map of times_redeemed values across all promotion_codes, keyed the same as var.promotion_codes except keys with no times_redeemed are omitted"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.times_redeemed if v.times_redeemed != null }
}

