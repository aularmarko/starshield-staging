## For run this playbook:

ansible-playbook --vault-password-file=group_vars/.vault_pass playbook.yml

This playbook uses an ansible vault for the credentials, for that we encrypt the sensitive data and provide to ansible the password to decrypt the sensitive data.
For do this we add to the command this arg: --vault-password-file=group_vars/.vault_pass , in the file .vault_pass we hace to put the password to desencypt the vault.yml.
This password is saved in some credential managers.

