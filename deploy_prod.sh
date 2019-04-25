# Récupérer les sources
git pull origin master

# Récupérer les librairies
composer install

# Mettre à jour la base de données Drupal
#drush updb -y


#Ajout des config de pro
git add config/prod
git commit -m 'Mise à jour des config de prod'
git push origin master

# Export des configs de prod
vendor\bin\drush csex prod -y


# Importer les configurations
vendor\bin\drush cim -y

#Vidage des caches
vendor\bin\drush cr