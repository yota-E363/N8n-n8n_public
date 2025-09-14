# Utiliser l'image officielle N8N
FROM n8nio/n8n:1.110.1

# Copier le fichier index.js
COPY ./index.js /home/node/index.js

# Définir le répertoire de travail
WORKDIR /home/node

# Copier package.json et package-lock.json
COPY package.json package-lock.json ./

# Installer les dépendances Node.js
RUN npm install

# Démarrer n8n avec tunnel pour exposer les webhooks
CMD ["n8n", "start", "--tunnel"]