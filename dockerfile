# Utiliser l’image officielle N8N
FROM n8nio/n8n:1.110.1

# Définir le répertoire de travail
WORKDIR /home/node

# Copier les fichiers de dépendances
COPY --chown=node:node package.json package-lock.json ./

# Installer les dépendances en tant que user node
USER node
RUN npm ci --omit=dev

# Copier ton éventuel code custom
COPY --chown=node:node ./index.js ./

# Lancer n8n avec tunnel
CMD ["n8n", "start", "--tunnel"]