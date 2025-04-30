#!/bin/bash
# VaultScan Action entrypoint script
echo "🔍 Starting VaultScan..."
python -m vaultscan.main --path $1 --verbose