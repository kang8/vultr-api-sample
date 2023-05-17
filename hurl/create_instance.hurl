GET https://api.vultr.com/v2/ssh-keys
Authorization: Bearer {{TOKEN}}

HTTP 200
[Captures]
ssh_key_0: jsonpath "$.ssh_keys[0].id"
ssh_key_1: jsonpath "$.ssh_keys[1].id"


POST https://api.vultr.com/v2/instances
Authorization: Bearer {{TOKEN}}
{
    "region": "nrt",
    "plan": "vhp-1c-1gb-amd",
    "os_id": 535,
    "sshkey_id": ["{{ssh_key_0}}", "{{ssh_key_1}}"],
    "backups": "disabled",
    "ddos_protection": false
}
