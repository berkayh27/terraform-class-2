region          = "us-east-1"

subnets = [
    "subnet-04cc7cb1ed2422688", 
    "subnet-04fb08a331d2da8ea", 
    "subnet-0bf15e981e92c2cc5"] 
vpc_id  = "vpc-082e1e069c0844ead"
instance_type   = "m4.large"
asg_max_size    = 5 

#mapping
tags = {
    Env         = "Development"
    Billing     = "SMA"
    Application = "Artemis"
    Region      = "us-east-1"
    Created_by  = "Berkay"
    Team        = "Devops"
    Managed_by  = "Infrastructure"
    Quarter     = 3
    Name        = "something"
}

# Below code is used to set backend only
environment                     =   "virgina"
s3_bucket                       =   "terraform-state-class-berkay"
s3_folder_project               =   "eks"
s3_folder_region                =   "us-east-1"
s3_folder_type                  =   "tools"
s3_tfstate_file                 =   "eks.tfstate"
