output "promotion_codes_id" {
  description = "Map of id values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.id }
}
output "promotion_codes_active" {
  description = "Map of active values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.active }
}
output "promotion_codes_code" {
  description = "Map of code values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.code }
}
output "promotion_codes_created" {
  description = "Map of created values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.created }
}
output "promotion_codes_customer" {
  description = "Map of customer values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.customer }
}
output "promotion_codes_customer_account" {
  description = "Map of customer_account values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.customer_account }
}
output "promotion_codes_expires_at" {
  description = "Map of expires_at values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.expires_at }
}
output "promotion_codes_livemode" {
  description = "Map of livemode values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.livemode }
}
output "promotion_codes_max_redemptions" {
  description = "Map of max_redemptions values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.max_redemptions }
}
output "promotion_codes_metadata" {
  description = "Map of metadata values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.metadata }
}
output "promotion_codes_object" {
  description = "Map of object values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.object }
}
output "promotion_codes_promotion" {
  description = "Map of promotion values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.promotion }
}
output "promotion_codes_restrictions" {
  description = "Map of restrictions values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.restrictions }
}
output "promotion_codes_times_redeemed" {
  description = "Map of times_redeemed values across all promotion_codes, keyed the same as var.promotion_codes"
  value       = { for k, v in stripe_promotion_code.promotion_codes : k => v.times_redeemed }
}

