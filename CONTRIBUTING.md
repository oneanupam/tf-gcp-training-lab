# Contribution
This document provides guidelines for contributing to the project.

## Pull Request
Pull requests are the best way to propose changes to the codebase (we use ["fork-and-pull" Git workflow](https://github.com/susam/gitpr)). We actively welcome your pull requests:

1. Fork the repository to your own Github account.
2. Clone the project to your machine.
3. Create a branch locally with a succinct but descriptive name.
4. Commit changes to the branch following any formatting and testing guidelines specific to this repo.
5. Push changes to your forked repository.
6. Open a Pull Request in our repository.

## Guidelines

### Commit Message Guidelines
Use the combination of "Commit Type" and "Commit Summary" with an optional "Commit description".

* Commit Type: Use the proper commit type for the changes as per [conventional commit](https://www.conventionalcommits.org/en/v1.0.0/) types.
* Commit Summary: Always use the imperative present tense (Write your commit messages as if you're giving a command or describing what the commit does, not what you did). Don’t capitalize the first letter of the commit message. Don’t use a period at the end of your text.
```
Ex: Suppose, You updated a file. So, the commit message could be -
    docs: update readme file
    feat: add application dockerfile
```

### PR Guidelines
Format: [Commit Type] Short Summary

```
Ex: Suppose, You added some functionality. So, the title could be -
    [feat] added function to read input from user
```

### Coding Guidelines
* Try to put comments in your code, where required.
* Try to follow DRY (Don't Repeat Yourself) principle.
* Follow the style guide to write terraform code recommended by terraform.

## Report Bugs
We use GitHub issues to track bugs. Report a bug by opening a new issue.

## Linting and Formatting
All of the terraform configuration files in the repository must be linted or formatted using `terraform fmt` to maintain a standard of quality.

## License
By contributing, you agree that your contributions will be licensed under its [MIT License](LICENSE.md).
