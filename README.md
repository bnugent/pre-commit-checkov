# Pre-commit Checkov

This repo contains a pre-commit hook for running [Bridgecrew Checkov](https://www.checkov.io/) against terraform files.

I created it because I didn't like the pre-commit hook provided in the [bridgecrewio/checkov](https://github.com/bridgecrewio/checkov) repo.

## Usage

Add the following to the `.pre-commit-config.yaml` in your local repository. Change the `rev:` to point to a ref other than `main` if desired.

```yaml
- repo: https://github.com/bnugent/pre-commit-checkov.git
  rev: main
  hooks:
    - id: checkov
```
