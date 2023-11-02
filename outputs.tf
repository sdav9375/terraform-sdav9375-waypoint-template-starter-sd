# Copyright (c) HashiCorp, Inc.

output "waypoint_application" {
  value       = var.waypoint_application
  description = "This will only have a value if we successfully received the waypoint application name as an input"
}
