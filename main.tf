resource "aws_sns_topic_subscription" "this" {
  for_each               = { for r in var.sns_topic_subscriptions : "${r.name}:${r.protocol}:${r.endpoint}" => r }
  topic_arn              = each.value.topic_arn
  protocol               = each.value.protocol
  endpoint               = each.value.endpoint
  endpoint_auto_confirms = each.value.endpoint_auto_confirms
  raw_message_delivery   = each.value.raw_message_delivery
  filter_policy          = each.value.filter_policy
  filter_policy_scope    = each.value.filter_policy_scope
  redrive_policy         = each.value.redrive_policy
}
