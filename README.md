# Creating-vpc-with-terraform-instance, configuarions you need to setup on TERRAFORM INSTANCE

sudo -i
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
terraform version
mkdir network #make a directory
cd network # goto network directory and create files

vim vpc.tf
vim security.tf
terraform init
terraform fmt # to make a format
terraform plan
terraform apply --auto-approve
terraform destroy --auto-approve # to delete all the instances, vpc, subnets, igw, nat, route tables, elastic_ip

