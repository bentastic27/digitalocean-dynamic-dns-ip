# DIGITAL OCEAN DYNAMIC IP API CLIENT (Docker Edition)
Forked from [anaganisk's go script](https://github.com/anaganisk/digitalocean-dynamic-dns-ip).

A Docker container that can be used in jobs to update DNS records hosted on Digital Ocean's DNS servers.

## Usage

Create a directory containing a file named `digitalocean-dynamic-ip.json`. See sample of file below. Run the container like the following:

```
docker run -v /path/to/dir/containing/file:/config bentastic27/digitalocean-dynamic-dns-ip:v1.0
```

Make sure you have the directory with your json file mounted to `/config` on the container.

Sample JSON:

```json
{
  "apikey": "samplekeydasjkdhaskjdhrwofihsamplekey",
  "domains": [
    {
      "domain": "example.com",
      "records": [
        {
          "name": "subdomainOrRecord",
          "type": "A"
        }
      ]
    },
    {
      "domain": "example2.com",
      "records": [
        {
          "name": "subdomainOrRecord2",
          "type": "A"
        }
      ]
    }
  ]
}
```
