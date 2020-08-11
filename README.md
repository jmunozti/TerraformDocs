# Terraform Docs

This is a docker image that generates the documentation for your Terraform modules in the current working directory.

## Requirements

1.- Your terraform modules must be in the "modules" folder.

## Usage

1.- Run this command:

docker build --no-cache -t terraform-docs .

2.- Go to your Terraform Project.

3.- Now, run terraform_docs:

docker run -it --rm -v "\$PWD:/devops" terraform-docs

4.- You will see a new folder (terraform-docs) with the documentation.
