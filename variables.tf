# Input variable definitions
variable "access_key_id" {
  description = "IAM user access key id"
  type        = string
  sensitive   = true
}

variable "secret_access_key" {
  description = "IAM user secret access key"
  type        = string
  sensitive   = true
}

variable "session_token" {
  description = "IAM user session token"
  type        = string
  sensitive   = true
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "my-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}

variable "db_password" {
  description = "RDS root user password"
  type        = string
  sensitive   = true
}

