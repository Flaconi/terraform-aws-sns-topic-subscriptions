variable "sns_topic_subscriptions" {
  type = list(object({
    name                   = string
    topic_arn              = string
    protocol               = string
    endpoint               = string
    endpoint_auto_confirms = bool
    raw_message_delivery   = bool
  }))
  default     = []
  description = "SNS Subscriptions"
}
