wget -O terraform.zip https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
sudo unzip terraform.zip -d /usr/local/bin/
rm terraform.zip
sudo chmod +x /usr/local/bin/terraform
