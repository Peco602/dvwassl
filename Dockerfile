FROM vulnerables/web-dvwa

LABEL name="SSL-enabled Damn Vulnerable Web App Container"
LABEL description="This container is a Linux container designed to run a DVWA via SSL."
LABEL maintainer="Peco602 <giovanni1.pecoraro@protonmail.com>"

COPY *.pem /etc/apache2/
COPY 000-default.conf /etc/apache2/sites-available/

RUN a2enmod ssl

EXPOSE 443 3306

CMD ["/main.sh"]