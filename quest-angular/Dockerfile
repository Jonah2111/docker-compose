FROM nginx:latest

# On copie la configuration NGINX
COPY nginx-default.conf /etc/nginx/conf.d/default.conf

COPY ./dist/quest-angular/browser /usr/share/nginx/html

# Au démarrage du container, cette commande sera exécutée - elle pourra être remplacée par autre chose car CMD est utilisé (au lieu de ENTRYPOINT)
CMD [ "nginx", "-g", "daemon off;" ]

# On dit que le container va exposer le port 80 - commentaire pour Docker uniquement
EXPOSE 80
