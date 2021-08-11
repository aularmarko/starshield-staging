terraform {
  backend "s3" {
    bucket = "starshield-bucket"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region  = var.region
}

################################################################################
# Network
################################################################################

module "module-network-linux-web-db" {
    source = "github.com/xmartlabs/terraform.git?ref=main/modules/module-network-linux-web-db"
    region = var.region
    tags = var.tags
    vpc = var.vpc
    route_table = var.route_table
    network_interface = var.network_interface

    subnet_prefix_public =var.subnet_prefix_public
    subnet_prefix_private_1 = var.subnet_prefix_private_1
    subnet_prefix_private_2 = var.subnet_prefix_private_2
  
  
    security_group_web = var.security_group_web
    security_group_db = var.security_group_db

}

################################################################################
# EC2
################################################################################

module "module-ec2-linux-web"{
    source = "github.com/xmartlabs/terraform.git?ref=main/modules/module-ec2-linux-web"
    region = var.region
    amiid  = var.amiid
    tags= var.tags
    id_network_interface = module.module-network-linux-web-db.network_interface_id
    user_data_path= "user_data.tmpl"
    key_name= var.key_name
    ec2name = var.ec2name
    size = var.size
    root_disk = var.root_disk
}

################################################################################
# RDS -subnetgrup
################################################################################

resource "aws_db_subnet_group" "subnetgrup" {
  name       = var.subnet_group
  subnet_ids = [module.module-network-linux-web-db.private_subnet_id_1,module.module-network-linux-web-db.private_subnet_id_2]
  tags = {
      Name = var.subnet_group
      Project = var.tags[0].Project
      State = var.tags[0].State
  }
}

################################################################################
# bd RDS
################################################################################

module "bd" {
    source  = "terraform-aws-modules/rds/aws"

    #The name of the RDS instance
    identifier = var.rds-bd[0].Name
    tags = {
      Name = var.rds-bd[0].Name
      Project = var.tags[0].Project
      State = var.tags[0].State
    }

    #The database engine to use
    engine            = var.rds-bd[0].engine
    engine_version    = var.rds-bd[0].engine_version
    instance_class    = var.rds-bd[0].instance_class
    allocated_storage = var.rds-bd[0].allocated_storage
    storage_encrypted     = false

    name     = var.db-name
    username = var.db-username
    password = var.db-password
    port     = var.security_group_db[0].dbport

    iam_database_authentication_enabled = true

    # DB parameter group
    family = var.rds-bd[0].family
    major_engine_version = var.rds-bd[0].major_engine_version

    create_db_subnet_group = false
    vpc_security_group_ids = [module.module-network-linux-web-db.security_group_db_id]
    db_subnet_group_name = aws_db_subnet_group.subnetgrup.id
    

    #multi_az = true
    deletion_protection = false


    #To disable collecting Enhanced Monitoring metrics, specify 0.
    monitoring_interval = "0"
    #Create IAM role with a defined name that permits RDS to send enhanced monitoring metrics to CloudWatch Logs.
    create_monitoring_role = false

    # Backups are required in order to create a replica
    backup_retention_period = 1
    skip_final_snapshot   = true

    maintenance_window              = "Tue:00:00-Tue:03:00"
    backup_window                   = "03:00-06:00"

    depends_on = [
      module.module-network-linux-web-db,
    ]

  }