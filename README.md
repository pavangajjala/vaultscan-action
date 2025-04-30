# VaultScan GitHub Action

[![Version](https://img.shields.io/badge/VaultScan-v1.2-blue)](https://github.com/pavangajjala/vaultscan-community)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)

**VaultScan GitHub Action** allows you to scan your repository for secrets and credentials using the VaultScan Community Edition v1.2.

---

## 🔧 How It Works

This GitHub Action automatically runs VaultScan when you push or open a pull request. It uses the CLI version of VaultScan to scan the entire repository and prints secret detection results directly in the workflow logs.

---

## ✅ Usage

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
        uses: pavangajjala/vaultscan-action@v1
```
---

📦 What It Detects
- AWS Access & Secret Keys
- Slack Tokens
- GitHub Tokens
- Private Keys
- Generic API Keys

---

⚙️ Advanced
- Automatically respects .vaultscanignore files.
- Uses --verbose flag for clearer logging.
- Based on VaultScan Community Edition v1.2

---

📜 License
Licensed under Apache 2.0

---
Built and maintained by **Pavan Gajjala**
