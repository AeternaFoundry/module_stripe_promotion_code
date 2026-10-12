variable "promotion_codes" {
  description = <<EOT
Map of promotion_codes, attributes below
Optional:
    - active
    - code
    - customer
    - customer_account
    - expires_at
    - max_redemptions
    - metadata
    - promotion (block):
        - coupon (optional)
        - type (required)
    - restrictions (block):
        - currency_options (optional, block):
            - key (required)
            - minimum_amount (optional)
        - first_time_transaction (optional)
        - minimum_amount (optional)
        - minimum_amount_currency (optional)
EOT

  type = map(object({
    active           = optional(bool)
    code             = optional(string)
    customer         = optional(string)
    customer_account = optional(string)
    expires_at       = optional(number)
    max_redemptions  = optional(number)
    metadata         = optional(map(string))
    promotion = optional(list(object({
      coupon = optional(string)
      type   = string
    })))
    restrictions = optional(list(object({
      currency_options = optional(list(object({
        key            = string
        minimum_amount = optional(number)
      })))
      first_time_transaction  = optional(bool)
      minimum_amount          = optional(number)
      minimum_amount_currency = optional(string)
    })))
  }))
}

