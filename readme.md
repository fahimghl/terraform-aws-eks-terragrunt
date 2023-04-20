# Enhance Your Terraform Workflow with Terragrunt: A DRY and Maintainable Infrastructure-as-Code Project

Building and managing robust infrastructure can be a challenging task. Terragrunt, a thin yet powerful wrapper around Terraform, offers a set of tools that help streamline the process, ensuring DRY and maintainable code. This project leverages Terragrunt and the "terraform-aws-eks" GitHub repository to set up an effective Infrastructure-as-Code (IaC) solution.

## Introduction

As the world of software development continues to grow, the need for effective and efficient infrastructure management becomes increasingly important. Infrastructure-as-Code (IaC) has become a popular approach, allowing developers to automate the provisioning and management of their infrastructure using code. One of the leading IaC tools is Terraform, which provides a declarative language for defining and deploying cloud infrastructure.

While Terraform is a powerful tool, it can sometimes be challenging to keep code clean, organized, and maintainable. This is where Terragrunt steps in. Terragrunt is a thin wrapper for Terraform that introduces valuable features for working with multiple modules, managing remote state, and most importantly, keeping your Terraform code DRY (Don't Repeat Yourself).

In this project, we'll be using Terragrunt to manage a Kubernetes infrastructure based on the "terraform-aws-eks" GitHub repository provided by Cookpad. Our goal is to create a DRY and maintainable Terraform codebase, making it easier to manage and scale the infrastructure as needed.

## Key Features

1. **DRY Terraform Code**: Terragrunt assists in eliminating code repetition by promoting the use of modules and abstracting common configuration elements. This enables a more modular and reusable codebase, leading to easier maintenance and reduced chances of errors.
2. **Multi-Module Management**: Working with multiple Terraform modules can become cumbersome. Terragrunt provides functionality to manage dependencies between modules, making it easier to work with complex, multi-module projects.
3. **Remote State Management**: Terragrunt simplifies remote state management by handling locking and storage configuration, ensuring that your infrastructure state is securely managed and accessible.
4. **Improved Code Organization**: By offering features such as input variable inheritance and locals, Terragrunt helps to improve code organization and readability, making it easier for teams to collaborate on large-scale projects.

With these key features, Terragrunt enables a more streamlined and maintainable approach to managing your Terraform codebase. By implementing this project, you will be taking advantage of the full power of Terragrunt, creating an efficient and reliable infrastructure solution.

## Getting Started

1. **Install prerequisites**:
   - [Terraform](https://www.terraform.io/downloads.html)
   - [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)
2. **Clone this repository**:
   ```
   git clone https://github.com/your_username/terragrunt-aws-eks.git
   ```
3. **Navigate to the repository folder and configure your desired infrastructure settings**:
   ```
   cd terragrunt-aws-eks
   ```
4. **Create a tag for the current state that can be used as a source in Terragrunt**:
   ```
   git tag v1.0.0
   git push --tags
   ```
5. **Run `terragrunt init` to initialize the project**:
   ```
   terragrunt init
   ```
6. **Apply the infrastructure configuration**:
   ```
   terragrunt apply
   ```

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

- [Cookpad](https://github.com/cookpad/terraform-aws-eks)