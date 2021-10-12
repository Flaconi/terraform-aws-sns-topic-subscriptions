# AWS SNS Topic Subscriptions

[![Build Status](https://travis-ci.com/Flaconi/terraform-aws-sns-topic-subscriptions.svg?branch=master)](https://travis-ci.com/Flaconi/terraform-aws-waf-acl-rules)
[![Tag](https://img.shields.io/github/tag/Flaconi/terraform-aws-sns-topic-subscriptions.svg)](https://github.com/Flaconi/terraform-aws-waf-acl-rules/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This Terraform module creates SNS Topic subcriptions from a list of input

## Usage

### sns_topic_subscriptions

```hcl
locals {
  sns_topic_subscriptions = [
    {
      name                   = "random_named"
      topic_arn              = "arn:aws:sns:us-east-1:806199016981:AmazonIpSpaceChanged"
      protocol               = "lambda"
      endpoint               = "some_arn"
      endpoint_auto_confirms = true
    },
    {
      name                   = "random_named2"
      topic_arn              = "arn:aws:sns:us-east-1:806199016981:AmazonIpSpaceChanged"
      protocol               = "lambda"
      endpoint               = "some_arn2"
      endpoint_auto_confirms = false
    },
  ]
}


module "subscriptions" {
  source                  = "../../"
  sns_topic_subscriptions = local.sns_topic_subscriptions
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_sns_topic_subscriptions"></a> [sns\_topic\_subscriptions](#input\_sns\_topic\_subscriptions) | SNS Subscriptions | <pre>list(object({<br>    name                   = string<br>    topic_arn              = string<br>    protocol               = string<br>    endpoint               = string<br>    endpoint_auto_confirms = bool<br>    raw_message_delivery   = bool<br>    filter_policy          = string<br>  }))</pre> | `[]` | no |

## Outputs

No outputs.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## License

[MIT](LICENSE)

Copyright (c) 2021 [Flaconi GmbH](https://github.com/Flaconi)
