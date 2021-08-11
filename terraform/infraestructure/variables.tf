# Generics
variable "region" {
  description = "required - region"
}

variable "tags" {
  description = "required - default important tags for resources"
  default     = [{ Project = "not created", State = "not created" }]
}

# Networking
variable "vpc" {
  description = "The definition of vpc"
  default     = [{ name = "terraform_module_vpc", cidr_block = "10.0.0.0/16", instance_tenancy = "default", enable_dns_hostnames = true, enable_dns_support = true }]
}

variable "subnet_prefix_public" {
  description = "The subnet prefix"
  default     = [{ name = "terraform_module_subnet_pubic", cidr_block = "10.0.1.0/24", availability_zone = "us-east-1a", map_public_ip_on_launch = true }]
}

variable "subnet_prefix_private_1" {
  description = "The subnet prefix"
  default     = [{ name = "terraform_module_subnet_pubic", cidr_block = "10.0.2.0/24", availability_zone = "us-east-1a", map_public_ip_on_launch = true }]
}

variable "subnet_prefix_private_2" {
  description = "The subnet prefix"
  default     = [{ name = "terraform_module_subnet_private", cidr_block = "10.0.3.0/24", availability_zone = "us-east-1b", map_public_ip_on_launch = false }]
}

variable "security_group_web" {
  description = "security group definition"
  default     = [{ name = "terraform_module_security_group_web" }]
}

variable "security_group_db" {
  description = "security group definition"
  default     = [{ name = "terraform_module_security_group_db" , dbport = "5432" }]
}

variable "route_table" {
  description = "route table definition"
  default     = [{ name = "terraform_module_route_table", cidr_block = "0.0.0.0/0", ipv6_cidr_block = "::/0" }]
}
variable "network_interface" {
  description = "network interface definition"
  default     = [{ name = "terraform_module_network_interface", private_ips = ["10.0.1.50"], device_index = 0 }]
}

variable "subnet_group" {
  description = "set sub net group rds"
  default    =  "subnet_group_test_devops"
} 


# EC2
variable "ec2name" {
  description = "name for the EC2 instance"
  default     = "default-ec2name"
}
variable "key_name" {
  description = "key to be used by the EC2"
}
variable "size" {
  description = "instance type for the EC2"
  default     = "t2.micro"
}
variable "root_disk" {
  description = "root disk definition"
  default     = [{ volume_size = "8", volume_type = "gp2" }]
}
variable "amiid" {
  description = "linux"
}

# To be run after creation
variable "user_data_path" {
  description = "User data file path"
  default    = "user_data.tmpl"
} 

#RDS

variable "rds-bd" {
  description = "set variables rds"
  default    =  [{ Name = "db-bd" , engine = "postgres", engine_version = "11.10" , instance_class = "db.t2.micro" ,allocated_storage = 5,family = "postgres11", major_engine_version = ""}]
} 
variable "db-name" {
  description = "data base name"
} 
variable "db-username" {
  description = "data base username"
} 
variable "db-password" {
  description = "data base password"
}
