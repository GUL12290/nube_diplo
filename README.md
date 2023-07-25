# Como desplegar el contenedor de Docker

Esta guía te dará el paso apaso para desplegar el contenedor Docker que ejecuta Apache y SSH.

## Prerequisitos 

Docker debe estar instalado en tu sistema. Si no lo tienes instalado, sigue las instrucciones en la guía de instalación de Docker para tu sistema operativo disponible en https://docs.docker.com/get-docker/ 

# Paso 1: Descargar la imagen de Docker

Para comenzar, descarga la imagen de Docker desde Docker Hub. Abre una terminal y ejecuta el siguiente comando:

'''
sudo docker pull TU-USUARIO/nube_diplo

'''

Reemplaza 'TU-USUARIO' con tu nombre de usuario real de Docker Hub.


# Paso 2: Ejecutar el contenedor de Docker

Ahora, vamos a ejecutar el contenedor Docker.Utiliza el siguiente comando: 

'''
sudo docker run -d -p 8080:80 -p 2222:22 --name my-apache-ssh TU-USUARIO-DOCKERHUB/nube_diplo
'''
Reemplaza TU-USUARIO-DOCKERHUB con tu nombre de usuario real de Docker Hub.

# Paso 3: Acceder al servidor web

El servidor web Apache está funcionando dentro del contenedor Docker. Abre un navegador web y visita http://localhost:8080 para acceder a la página predeterminada de Apache.

Para visualizar particualrmente la página web entra a http://localhost:8080/pagina.html


# Paso 4: Accesso SSH 

También puedes acceder al contenedor a través de SSH.Utiliza el siguiente comando en tu terminal:

'''
ssh -p 22 user@localhost
'''

Reemplaza 'user' con el nombre de usuario que esta especificado en tu Dockerfile para ejecutar la aplicación.

# Detener y eliminar el contenedor

Para detener el contenedor, ejecuta:

'''
sudo docker stop my-apache-ssh
'''

Para eliminar el contenedor, ejecuta:

'''
docker rm my-apache-ssh
'''

¡Listo! Has desplegado exitosamente el contenedor. Docker con Apache y SSH. Sientete libre de explorar y modificar el contenedor según tus necesidades específicas. 

Para obtener más información y uso avanzado, consulta la documentación de Docker

