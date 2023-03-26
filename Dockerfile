# Dockerfile para aplicación node.js
# Utiliza la imagen oficial de node.js
FROM node:lts-alpine
# Crea el directorio de la aplicación
RUN mkdir -p /usr/src/app
# Establece el directorio de trabajo
WORKDIR /usr/src/app
# Instala las dependencias de la aplicación
COPY package.json /usr/src/app/
RUN npm install
# Instala la aplicación
COPY . /usr/src/app
# Expone el puerto de la aplicación
EXPOSE 3000
# Ejecuta la aplicación
CMD [ "npm", "start" ]
