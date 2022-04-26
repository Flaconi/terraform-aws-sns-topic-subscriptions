provider "aws" {
  region = "us-east-1"
}

locals {
  sns_topic_subscriptions = [
    {
      name                   = "random_named"
      topic_arn              = "arn:aws:sns:us-east-1:806199016981:AmazonIpSpaceChanged"
      protocol               = "lambda"
      endpoint               = "some_arn"
      endpoint_auto_confirms = true
      raw_message_delivery   = true
      filter_policy          = ""
      redrive_policy         = null
    },
    {
      name                   = "random_named2"
      topic_arn              = "arn:aws:sns:us-east-1:806199016981:AmazonIpSpaceChanged"
      protocol               = "lambda"
      endpoint               = "some_arn2"
      endpoint_auto_confirms = false
      raw_message_delivery   = false
      filter_policy          = "{\"LiteMessageType\":[\"OrderCreated\"]}"
      redrive_policy         = "{\"deadLetterTargetArn\": \"arn:aws:sqs:us-east-1:806199016981:MyDeadLetter\"}"
    },
  ]
}


module "subscriptions" {
  source                  = "../../"
  sns_topic_subscriptions = local.sns_topic_subscriptions
}
