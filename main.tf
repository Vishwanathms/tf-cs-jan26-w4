
module "Vms_app1" {
  source = "git::https://github.com/Vishwanathms/tf-aws-modules-jan26-w4.git//ec2-instance?ref=main"
  region-1 = "us-west-1"
  instance_type = "t3.micro"
  subnets = ["subnet-084785ce11bb38827", "subnet-0e100c7e306c1812d"]
  num_of_vm = 1
  env = "dev"

}

output "vm_private_ips01" {
  value = module.Vms_app1.vm_priv_pips
}

