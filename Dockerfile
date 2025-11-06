# Étape 1 : Utiliser Nginx comme base
FROM nginx:alpine

# Étape 2 : Supprimer la page d'accueil par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Étape 3 : Copier le contenu de ton dossier 'uam_portfolio' dans le répertoire de Nginx
COPY uam_portfolio/ /usr/share/nginx/html/

# Étape 4 : Exposer le port 80
EXPOSE 80
