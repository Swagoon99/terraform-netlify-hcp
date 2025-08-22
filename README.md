Static Site Deployment on Netlify using Terraform with HCP Remote State

This project demonstrates how to manage a simple static site on Netlify using Terraform while storing the Terraform state securely in HCP Terraform (Terraform Cloud).
The approach is lightweight, reproducible, and secure.

Objectives

Deploy a static frontend site on Netlify

Configure HCP Terraform as the remote backend

Keep secrets safe using terraform.tfvars

Re-run consistently with terraform init, terraform plan, and terraform apply

Output useful details like the site ID, name, and URL

Prerequisites

Terraform v1.5.0 or later (HCP remote backend support)

Netlify account with a Personal Access Token

HCP Terraform (Terraform Cloud) account

Git + GitHub for storing and syncing the project

Project Structure
terraform-netlify-hcp/
│── site/                
│   └── index.html
│── main.tf             
│── outputs.tf           
│── variables.tf         
│── versions.tf          
│── terraform.tfvars     
│── .gitignore          
│── README.md


site/index.html → Static HTML demo page.

In most Terraform workflows, this would be deployed automatically.

In this project, the site mynetlifyhug was manually deployed. Terraform only references the existing site.

The official Netlify provider (v0.2.3) does not yet support site creation or deployment. For automation, you would need to use the Netlify CLI in CI/CD (e.g., GitHub Actions) or call the Netlify API with a generic Terraform provider.

.gitignore → Prevents committing Terraform state, secrets (terraform.tfvars), and local editor files.

main.tf → Defines the Netlify provider and fetches an existing site:

Uses your Netlify token (netlify_token) to authenticate.

Loads an existing site by name (site_name).

outputs.tf → Prints values after apply:

Site ID

Site name

Default Netlify URL

variables.tf → Declares input variables for the project:

netlify_token (sensitive Netlify API token)

site_name (name of your Netlify site)

deploy_dir (static files directory, unused here because the site is pre-deployed)

versions.tf → Locks provider versions and configures Terraform Cloud remote backend:

Requires Terraform >= 1.5.0

Uses Netlify provider v0.2.3

Configures organization swagoon1 and workspace terraform-netlify-hcp

terraform.tfvars → Stores real values for variables:

Your Netlify API token

The existing Netlify site name (mynetlifyhug)

The local deploy directory (site)

Ignored by Git for security

Setup
Step 1: Clone the repository
git clone https://github.com/swagoon99/terraform-netlify-hcp.git
cd terraform-netlify-hcp

Step 2: Configure Netlify

Create a Netlify account if you don’t have one.

Generate a Personal Access Token in
User Settings > Applications > Personal Access Tokens.

Save this token securely. It will be used in terraform.tfvars as netlify_token.

Step 3: Configure HCP Terraform (Terraform Cloud)

Log in to Terraform Cloud or create an account.

Create a Personal Organization and give it a name.

Inside the organization, create a new workspace:

Select CLI-driven workflow

Name it terraform-netlify-hcp (or any name you prefer)

Terraform will show a sample configuration block. Add it to versions.tf:

terraform {
  cloud {
    organization = "swagoon1"

    workspaces {
      name = "terraform-netlify-hcp"
    }
  }
}


Authenticate Terraform with your account:

terraform login


Confirm with yes

Terraform opens a browser where you generate an API token

Copy and paste the token back into the CLI

Step 4: Connect GitHub and Netlify

Push the repo to GitHub.

In Netlify: Projects > Add new site > Import from Git

Select GitHub and the repository.

Configure settings:

Team: your Netlify team

Project Name: terraform-netlify-hcp

Branch to deploy: main

Base directory: .

Publish directory: ./site

Functions directory: ./

Build command: leave empty

Click Deploy [site name], e.g., mynetlifyhug.

Running Terraform

Initialize

terraform init


This installs providers and configures the Terraform Cloud backend.

Plan

terraform plan


Terraform fetches the existing Netlify site details.

Apply

terraform apply


Confirm with yes.

Terraform will output the following values:

site_id → The unique Netlify site ID

site_name → The Netlify site name you configured

site_default_url → The Netlify domain (e.g., https://mynetlifyhug.netlify.app)

Outputs

After a successful apply you will see:

Confirmation that Terraform is managing the correct site

A reproducible setup stored in Terraform Cloud

A live Netlify site accessible at the default domain

Example: visiting
https://mynetlifyhug.netlify.app

will show the static index.html page included in this repo.

References

Terraform Documentation

Netlify Terraform Provider