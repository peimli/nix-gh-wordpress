variable "aws_region" {
  default     = "eu-north-1"
  description = "AWS region to deploy Lightsail resources"
}

variable "availability_zone" {
  default     = "eu-north-1a"
  description = "Lightsail availability zone"
}

variable "instance_name" {
  default     = "wordpress-demo"
  description = "Name of the Lightsail instance"
}

variable "blueprint_id" {
  default     = "wordpress"
  description = "Lightsail WordPress blueprint"
}

variable "bundle_id" {
  default     = "nano_3_0"
  description = "Lightsail instance bundle (size)"
}

