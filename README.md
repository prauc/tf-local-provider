# Terraform example: Pin resource to local version

## Description

This small repository shows a workaround for pinning some resources from the same Google Terraform provider to an older version due to a long-lasting bug.
In this case, please refer to Issue [#10622](https://github.com/hashicorp/terraform-provider-google/issues/10622).

## How to install

It is necessary to install the local provider first. To do this, run `make install`. Don't forget to change your `project` local to `locals.tf`.
After that you should be able to run `terraform init`.
