aws_region           = "eu-west-2"
vpc_cidr             = "10.36.0.0/16"
vpc_name             = "Kubernetespractice"
key_name             = "Practice_key"
public_subnet_cidrs  = "10.36.1.0/24"
#, "10.36.2.0/24", "10.36.3.0/24"]       #List
private_subnet_cidrs = "10.36.10.0/24"
 #, "10.36.20.0/24", "10.36.30.0/24"] #List
azs                  = "eu-west-2a"
 #, "eu-west-2b", "eu-west-2c"]                                                             #List
environment          = "production"
instance_type = {
  development = "t2.micro"
  testing     = "t2.small"
  production  = "t2.medium"
}
amis = {
  eu-west-2 = "ami-0b9932f4918a00c4f" # Canonical, Ubuntu, 20.04 LTS, amd64 focal image
  us-east-2 = "ami-0430580de6244e02e" # Canonical, Ubuntu, 20.04 LTS, amd64 focal image
}
projid    = "Clusterpractice"
imagename = "ami-0149b2da6ceec4bb0"
