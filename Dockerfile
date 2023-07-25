# Imagen Base

FROM debian:latest

# Instalar Apache y SSH

RUN apt-get update && apt-get install -y apache2 openssh-server

# Agregar usuario
RUN useradd -m -s /bin/bash gabo9123

# Copiar contenido del sitio web

COPY pagina.html /var/www/html/



#Configurar claves SSH

RUN mkdir /home/gabo9123/.ssh
COPY id_rsa.pub /home/gabo9123/.ssh/authorized_keys
RUN chown -R gabo9123:gabo9123 /home/gabo9123/.ssh && chmod 700 /home/gabo9123/.ssh && chmod 600 /home/gabo9123/.ssh/authorized_keys


# Iniciar servicios de Apache y SSH

CMD service apache2 start && service ssh start && tail -f /dev/null

