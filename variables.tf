variable "sns_topic_subscriptions" {
  type = list(object({
    name                   = string
    topic_arn              = string
    protocol               = string
    endpoint               = string
    endpoint_auto_confirms = bool
  }))
  default     = []
  description = "SNS Subscriptions"
}
