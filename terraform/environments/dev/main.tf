module "gke_infra" {
  source = "../../"

  project_id    = var.project_id
  region        = var.region
  vpc_name      = "dev-vpc"
  subnet_cidr   = "10.0.0.0/16"
  pods_cidr     = "10.1.0.0/16"
  services_cidr = "10.2.0.0/16"
  master_cidr   = "172.16.0.0/28"
}