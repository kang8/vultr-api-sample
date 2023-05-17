GET https://api.vultr.com/v2/instances
Authorization: Bearer {{TOKEN}}

HTTP 200
[Captures]
instance_id: jsonpath "$.instances[0].id"


DELETE https://api.vultr.com/v2/instances/{{instance_id}}
Authorization: Bearer {{TOKEN}}
