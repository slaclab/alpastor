# Read system health check
path "sys/health"
{
  capabilities = ["read", "sudo"]
}

# Create and manage ACL policies broadly across Vault

# List existing policies
path "sys/policies/acl"
{
  capabilities = ["list"]
}

# Create and manage ACL policies
path "sys/policies/acl/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Enable and manage authentication methods broadly across Vault

# Manage auth methods broadly across Vault
path "auth/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "sys/auth/*"
{
  capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "sys/auth"
{
  capabilities = ["read"]
}

# Enable and manage the key/value secrets engine at `secret/` path

# List, create, update, and delete key/value secrets
path "secret/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Manage secrets engines
path "sys/mounts/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List existing secrets engines.
path "sys/mounts"
{
  capabilities = ["read"]
}

# manage mappings
path "identity/entity/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
path "identity/entity-alias"
{
  capabilities = ["create", "update" ]
}
path "identity/entity-alias/*"
{  
  capabilities = [ "read", "delete", "list", "sudo"]
}
path "identity/group/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# policy allowing creation and configuration of databases and roles
path "database/roles/*" {
  capabilities = ["create", "read", "update", "delete", "list"] 
}
path "database/config/*" {
  capabilities = ["create", "read", "update", "delete", "list"] 
}

# Manage raft storage
path "sys/storage/raft/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

