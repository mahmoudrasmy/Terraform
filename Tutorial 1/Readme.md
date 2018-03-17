# Basic Tutorial on how to get started with Terraform

- Install Terraform on your machine.
- Add the terraform path to the environement path.
- Try the following commands to check on the installation : $terraform
- Use the terraform configuration to create your first machine on AWS.
- To initialize the directory to be a terraform project use and to install the suitable plugin for the cloud provider: $terraform init
- Run the following command to see what change will happen, and to validate the terraform configuration files : $terraform plan
- Add the follwing terraform.tf to hold your variables, in a configuration files
- After the command succefully finish the execcution, use the following command to check the state of the resources : $terraform show
- For deleting the resources use : $terraform destroy
- To login to the Virtual machine add the copy the name of pair key ,that was created earlier in your aws account, to be able to login to the Ubunut machine
	
	
