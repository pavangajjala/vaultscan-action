#!/bin/bash
# VaultScan Action entrypoint script
echo "🔍 Starting VaultScan..."
python -m vaultscan.main --path $1 --verbose

# Developed by Pavan Gajjala – https://github.com/pavangajjala
# Licensed under Apache 2.0. Unauthorized removal of attribution is prohibited.
