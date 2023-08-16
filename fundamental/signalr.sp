locals {
  fundamental_security_signalr_common_tags = merge(local.fundamental_security_common_tags, {
    service = "Azure/SignalRService"
  })
}

benchmark "fundamental_security_signalr" {
  title       = "SignalR Service"
  description = "This section contains recommendations for configuring SignalRService resources."
  children = [
    control.signalr_service_no_free_tier_sku,
    control.signalr_service_private_link_used
  ]

  tags = merge(local.fundamental_security_signalr_common_tags, {
    type = "Benchmark"
  })
}
