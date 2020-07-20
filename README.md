# nuxt-aws-terraform-boilerplate
Nuxt Website deployment using Terraform and Github Actions CI/CD

This project is meant to be used as a base to host a Nuxt Website on AWS using terraform and Github Actions CI/CD.


## How to:

Fork the repository.
Go to Settings->Secrets and  the following keys:
  AWS_ACCESS_KEY=<Your AWS Access Key Id>
  AWS_SECRET_KEY=<Your AWS Secret Key>
  AWS_REGION=eu-central-1
  S3_BUCKET_WEBSITE=s3://website-bucket-name

Project Setup:
`npm install`

Run nuxt locally:
`npm start`

Infra and Website will be deployed automatically on merge using the following [Workflow](https://github.com/ebouther/nuxt-aws-terraform-boilerplate/blob/develop/.github/workflows/develop.yml).


Feel free to contribute to this project.
Pull Requests are most welcome, thank you!
