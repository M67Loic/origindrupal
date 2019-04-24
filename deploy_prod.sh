#Récuperer les sources
git pull origin master

#Récuperer les librairies.
composer install

#Mettre à jours la base de données Drupal.

#Importer  les configurations.
drush cim -y

#Vidage des caches.
drush cr