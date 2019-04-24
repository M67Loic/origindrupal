#Récuperer les sources
git pull origin master

#Récuperer les librairies.
composer install

#Mettre à jours la base de données Drupal.
#drush updb -y

#Ajout des config de prod.
git add config/prod
git commit -m"Mise a jour des config de la prod."
git push origin master

#Export des config de prod.
drush csex prod -y

#Importer  les configurations.
drush cim -y

#Vidage des caches.
drush cr