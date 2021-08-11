# Generics
region= "us-east-1"

tags= [{ Name = "starshield-bucket",Project = "starshield", State = "stage" }]

# EC2
ec2name = "star-shield-staging-terraform"
key_name = "star-shield-staging"

amiid = "ami-0dc2d3e4c0f9ebd18"
size="t2.medium"

# To be run after creation
user_data_path = "user_data.tmpl"

# RDS database:
rds-bd = [{ Name = "star-shield-stage" , engine = "mysql", engine_version = "8.0.25" , instance_class = "db.t2.medium" ,allocated_storage = 5,family = "mysql8.0",major_engine_version = "8.0"}]
subnet_group = "stage-db-star-shield"

db-name="starshieldstage"
db-username="starshieldstage"
