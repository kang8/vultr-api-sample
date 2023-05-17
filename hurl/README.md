
## Requirement

* [hurl](https://hurl.dev/docs/installation.html)


## How to use

1. Export Auth token for hurl variable:

```sh
export HURL_TOKEN=xxx
```

2. Request *.hurl

```sh
hurl list_instances.hurl

# use `jq` format output
hurl list_instances.hurl | jq

# Just want to check status
hurl list_instances.hurl | jq '.instances[].status'
```
