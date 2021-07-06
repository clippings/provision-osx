#/usr/bin/env bash

# Download the latest Terraform v0.14 version
wget https://releases.hashicorp.com/terraform/0.14.11/terraform_0.14.11_darwin_amd64.zip

# Unzip the downloaded file
unzip terraform_0.14.11_darwin_amd64.zip

# Give binary executable permissions and install (will overwrite current version)
chmod +x terraform

# Move terraform
mv terraform /usr/local/bin/
