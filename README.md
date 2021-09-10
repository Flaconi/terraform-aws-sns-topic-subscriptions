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
| terraform | >= 0.12.26 |
| aws | >= 3 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| sns\_topic\_subscriptions | SNS Subscriptions | <pre>list(object({<br>    name                   = string<br>    topic_arn              = string<br>    protocol               = string<br>    endpoint               = string<br>    endpoint_auto_confirms = bool<br>    raw_message_delivery   = bool<br>    filter_policy          = string<br>  }))</pre> | `[]` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## License

[MIT](LICENSE)

Copyright (c) 2021 [Flaconi GmbH](https://github.com/Flaconi)
