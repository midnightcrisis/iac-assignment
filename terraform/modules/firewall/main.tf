resource "google_compute_firewall" "internal_firewall" {
  name    = "${var.vpc_name}-internal-firewall"
  network = var.vpc_name

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  source_ranges = [
    var.subnet_cidr,
    var.pods_cidr,
    var.services_cidr,
    var.master_cidr
  ]
}