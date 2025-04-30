variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
  type        = string
}

variable "pods_cidr" {
  description = "CIDR range for pods"
  type        = string
}

variable "services_cidr" {
  description = "CIDR range for services"
  type        = string
}

variable "master_cidr" {
  description = "CIDR range for the GKE master"
  type        = string
}