# VaultScan GitHub Action

[![Version](https://img.shields.io/badge/VaultScan-v1.2-blue)](https://github.com/pavangajjala/vaultscan-community)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)

**VaultScan GitHub Action** is a reusable GitHub Action that automatically scans your repository for secrets and credentials using the [VaultScan Community Edition](https://github.com/pavangajjala/vaultscan-community).

---

## 📌 Purpose

This action integrates VaultScan directly into your CI/CD pipeline to detect sensitive information (like AWS keys, Slack tokens, GitHub tokens, and private keys) in your codebase before it reaches production.

---

## ⚙️ Setup Instructions

To get started, add the following workflow file to your project:

Create `.github/workflows/scan.yml` and paste:

```yaml
name: VaultScan Secrets Detection

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  vaultscan:
    name: Run VaultScan on Codebase
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repository
        uses: actions/checkout@v4

      - name: Run VaultScan via GitHub Action
        uses: pavangajjala/vaultscan-action@v1.2
```

---
## 🧪 What This Does
- Clones the latest VaultScan
- Installs its Python dependencies
- Runs the scanner on your repo with --verbose logs
- Outputs any detected secrets in the Actions tab

---
## 📦 What It Detects
- AWS Access & Secret Keys
- Slack Tokens
- GitHub Tokens
- Private Keys
- Generic API Keys
---

## 🔗 VaultScan CLI
This action wraps around the VaultScan Community Edition CLI. You can also run VaultScan locally:

```bash
git clone https://github.com/pavangajjala/vaultscan-community.git
cd vaultscan-community
pip install -r requirements.txt
python -m vaultscan.main --path . --verbose
```
---

## ⚙️ Advanced

- Automatically respects `.vaultscanignore` files.
- Uses `--verbose` flag for clearer logging.
- Built on [VaultScan Community Edition v1.2](https://github.com/pavangajjala/vaultscan-community)

---

## 📜 License

Licensed under the [Apache 2.0 License](LICENSE)

---

**Developed by [Pavan Gajjala](https://github.com/pavangajjala) - Licensed under Apache 2.0. Unauthorized removal of attribution is prohibited.**
