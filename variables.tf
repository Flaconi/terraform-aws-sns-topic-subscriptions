variable "sns_topic_subscriptions" {
  type = list(object({
    name                   = string
    topic_arn              = string
    protocol               = string
    endpoint               = string
    endpoint_auto_confirms = bool
    raw_message_delivery   = bool
    filter_policy          = string
    filter_policy_scope    = optional(string)
    redrive_policy         = optional(string)
  }))
  default     = []
  description = "SNS Subscriptions"
}
