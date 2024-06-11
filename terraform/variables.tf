variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Minecraft-Server"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "minecraft-key"
}

variable "ami_id" {
  description = "Amazon Linux 2023 AMI ID"
  type        = string
  default     = "ami-05a6dba9ac2da60cb"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t4g.small"
}

variable "ssh_ingress_cidr" {
  description = "CIDR block for SSH ingress"
  type        = string
  default     = "0.0.0.0/0"
}

variable "minecraft_ingress_cidr" {
  description = "CIDR block for Minecraft server ingress"
  type        = string
  default     = "0.0.0.0/0"
}
