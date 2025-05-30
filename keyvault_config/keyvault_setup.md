Azure Key Vault Setup for Secure Credential Management

In This guide I have explains how to set up Azure Key Vault for securely managing secrets used in the Retail Customer Metrics Project.

---

## Why Use Azure Key Vault?
- Centralized management of secrets
- Secure access from Databricks and Synapse
- Keeps your codebase clean and credential-free

---

Step-by-Step Setup

Step 1: Create Azure Key Vault
1. Go to the [Azure Portal](https://portal.azure.com)
2. Search for **Key Vaults**
3. Click **+ Create**
4. Fill in the required info:
   - Name: `kv-retail-customer-project`
   - Region: Same as your Databricks workspace
5. Click Review + Create

---

Step 2: Add Secrets
1. In the left menu, click **Secrets**
2. Click **+ Generate/Import**
3. Add the following secrets:
   - `storage-account-key`
   - `databricks-token`
   - `synapse-connection-string`

---

Step 3: Link Key Vault to Databricks

Option A: Via Azure CLI

```bash
# Create secret scope linked to Key Vault
databricks secrets create-scope --scope my-keyvault-scope \
--scope-backend-type AZURE_KEYVAULT \
--resource-id "/subscriptions/<sub-id>/resourceGroups/<rg-name>/providers/Microsoft.KeyVault/vaults/kv-retail-customer-project" \
--dns-name "https://kv-retail-customer-project.vault.azure.net/"
