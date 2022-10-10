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

## Custom SSL certificate and key

The image comes with pre-generated SSL certificate and key. You can also use your own or generate new ones:

```bash
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365 -nodes
```

Then, run the container:

```bash
docker run -d -p 443:443 -v $(pwd)/cert.pem:/etc/apache2/cert.pem -v $(pwd)/key.pem:/etc/apache2/key.pem dvwassl:latest
```

## Login with default credentials

To login you can use the following credentials:

- Username: admin
- Password: password

## About DVWA

You can visit DVWA official [github repository](https://github.com/digininja/DVWA) if you want more information.

## Disclaimer

This or previous program is for Educational purpose ONLY. Do not use it without permission. The usual disclaimer applies, especially the fact that me (opsxcq) is not liable for any damages caused by direct or indirect use of the information or functionality provided by these programs. The author or any Internet provider bears NO responsibility for content or misuse of these programs or any derivatives thereof. By using these programs you accept the fact that any damage (dataloss, system crash, system compromise, etc.) caused by the use of these programs is not opsxcq's responsibility.

## DockerHub

- [peco602/dvwassl](https://hub.docker.com/r/peco602/dvwassl)
