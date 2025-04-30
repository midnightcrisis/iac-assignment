provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source = "./modules/vpc"

  project_id    = var.project_id
  region        = var.region
  vpc_name      = var.vpc_name
  subnet_cidr   = var.subnet_cidr
  pods_cidr     = var.pods_cidr
  services_cidr = var.services_cidr
}

module "firewall" {
  source = "./modules/firewall"

  project_id   = var.project_id
  vpc_name     = module.vpc.vpc_name
  subnet_cidr  = var.subnet_cidr
  pods_cidr    = var.pods_cidr
  services_cidr = var.services_cidr
  master_cidr  = var.master_cidr
}

module "gke" {
  source = "./modules/gke"

  project_id    = var.project_id
  region        = var.region
  vpc_name      = module.vpc.vpc_name
  subnet_name   = module.vpc.subnet_name
  pods_cidr     = var.pods_cidr
  services_cidr = var.services_cidr
  master_cidr   = var.master_cidr
}