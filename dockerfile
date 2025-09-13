FROM n8nio/n8n:1.110.1

# Copier le fichier .env dans le container
COPY ./.env /home/node/.n8n/.env

# Copier les scripts Node.js personnalisés
COPY ./index.js /home/node/index.js

# Définir le dossier de travail
WORKDIR /home/node

# Installer les dépendances Node.js si besoin
COPY package.json package-lock.json ./
RUN npm install

# Lancer N8N via le script Node
CMD ["node", "index.js"]