# 🚀 n8n Automatisé sur Render

[![n8n](https://img.shields.io/badge/n8n-automatisation-blue?logo=n8n)](https://n8n.io/)  
[![Render](https://img.shields.io/badge/Render-deployment-green?logo=render)](https://render.com/)  
[![Licence MIT](https://img.shields.io/badge/Licence-MIT-yellow.svg)](./LICENSE)  
[![Site Démo](https://img.shields.io/badge/Démo-en%20ligne-orange)](https://n8n-render-auto-yf0i.onrender.com)

---

## 📌 Présentation

Ce projet permet d’héberger **[n8n](https://n8n.io/)** (outil open-source d’automatisation de workflows, similaire à Zapier) gratuitement sur **[Render](https://render.com/)**.  

L’instance est **accessible en ligne**, sécurisée et capable de recevoir **des webhooks publics** pour automatiser vos services connectés.

---

## 🌍 Accéder au site

🔗 [**Accéder à l’instance publique de n8n**](https://n8n-render-auto-yf0i.onrender.com)  

> ✅ Triggers et webhooks fonctionnent immédiatement grâce à l’URL publique fournie par Render.  
> ⚡ Aucun tunnel externe (Ngrok) nécessaire.  

---

## ⚡ Déploiement sur Render

### 1️⃣ Forker ce dépôt
Créez votre copie en cliquant sur **[Fork](https://docs.github.com/fr/get-started/quickstart/fork-a-repo)**.

### 2️⃣ Créer le service Web sur Render
1. Connectez-vous sur [Render](https://render.com/)  
2. Créez un **nouveau service Web**  
3. Connectez votre dépôt GitHub  
4. Configurez les **variables d’environnement** (voir ci-dessous)  
5. Cliquez sur **Deploy** 🚀  

---

## 🔧 Variables d’environnement à configurer dans Render

| Nom                       | Exemple                         | Description |
|----------------------------|---------------------------------|-------------|
| `N8N_BASIC_AUTH_ACTIVE`    | `true`                          | Active l’authentification |
| `N8N_BASIC_AUTH_USER`      | `coeurcy`                       | Nom d’utilisateur |
| `N8N_BASIC_AUTH_PASSWORD`  | `motdepassefort`                | Mot de passe |
| `N8N_ENCRYPTION_KEY`       | `clé_ultra_secrète`             | Clé de chiffrement pour sécuriser les données |
| `WEBHOOK_TUNNEL_URL`       | `https://ton-service.onrender.com` | URL publique pour webhooks |
| `GENERIC_TIMEZONE`         | `Europe/Paris`                  | Fuseau horaire des workflows |
| `DB_TYPE`                  | `sqlite`                        | Type de base de données |
| `DB_SQLITE_DATABASE`       | `/home/node/n8n/database.sqlite` | Chemin du fichier SQLite |

> 💡 Astuce : tous les secrets doivent être **entrés directement dans Render**, pas sur GitHub.

---

## 📚 Commandes utiles pour N8N

### Lancer N8N en local (Docker)
```bash
docker build -t n8n .
docker run -p 5678:5678 --env-file .env n8n

n8n import:workflow --input=/path/to/file.json

n8n export:workflow --all