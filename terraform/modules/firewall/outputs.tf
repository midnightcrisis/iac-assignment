output "firewall_name" {
  description = "The name of the firewall rule"
  value       = google_compute_firewall.internal_firewall.name
}