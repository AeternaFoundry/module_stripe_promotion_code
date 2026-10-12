resource "stripe_promotion_code" "promotion_codes" {
  for_each = var.promotion_codes

  active           = each.value.active
  code             = each.value.code
  customer         = each.value.customer
  customer_account = each.value.customer_account
  expires_at       = each.value.expires_at
  max_redemptions  = each.value.max_redemptions
  metadata         = each.value.metadata

  dynamic "promotion" {
    for_each = each.value.promotion != null ? each.value.promotion : []
    content {
      coupon = promotion.value.coupon
      type   = promotion.value.type
    }
  }

  dynamic "restrictions" {
    for_each = each.value.restrictions != null ? each.value.restrictions : []
    content {
      dynamic "currency_options" {
        for_each = restrictions.value.currency_options != null ? restrictions.value.currency_options : []
        content {
          key            = currency_options.value.key
          minimum_amount = currency_options.value.minimum_amount
        }
      }
      first_time_transaction  = restrictions.value.first_time_transaction
      minimum_amount          = restrictions.value.minimum_amount
      minimum_amount_currency = restrictions.value.minimum_amount_currency
    }
  }
}

