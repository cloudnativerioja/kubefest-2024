# Repository for hosting the website kubefest.com

## Infrastructure

### Overview

This Terraform configuration allows you to:

- Provision a Cloudflare zone.
- Manage DNS records within the Cloudflare zone.
- Ensure consistency and reproducibility of infrastructure changes.

### Usage

**_Validate Stage (On Pull Requests)_**
In this stage, Terraform configurations are validated whenever a pull request is opened. This ensures that proposed changes adhere to Terraform best practices and do not introduce syntax errors.

**_Deploy Stage (On Master Branch)_**
In this stage, Terraform configurations are applied to deploy infrastructure when changes are merged into the master branch. This ensures that the changes are automatically deployed to production-like environments.
