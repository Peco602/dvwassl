![Push](https://github.com/Peco602/dvwassl/actions/workflows/push.yml/badge.svg)

# SSL-enabled Damn Vulnerable Web App

Run an SSL-enabled Damn Vulnerable Web App.

*Why?*

You might want to test web attack detections over SSL.

## Build the image

```bash
docker build -t dvwassl:latest .
```

## Run the container

```bash
docker run -d -p 443:443 dvwassl:latest
```

## Custom SSL certificate

Generate the certificate:

```bash
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365 -nodes
```

Run the container:

```bash
docker run -d -p 443:443 -v $(pwd)/cert.pem:/etc/apache2/cert.pem -v $(pwd)/key.pem:/etc/apache2/key.pem dvwassl:latest
```

## DockerHub

- [peco602/dvwassl](https://hub.docker.com/r/peco602/dvwassl)
