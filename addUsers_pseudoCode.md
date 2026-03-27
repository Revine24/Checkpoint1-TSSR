# Pseudo-code - Script addUsers.sh

## Début

### Vérification des arguments

Si aucun argument n'est fourni :
- Afficher : "Il manque les noms d'utilisateurs en argument - Fin du script"
- Arrêter le script

---

### Traitement des utilisateurs

Pour chaque argument reçu :
- Stocker l'argument dans une variable `utilisateur`

#### Vérification de l'existence

- Vérifier si l'utilisateur existe déjà dans le système
- Si l'utilisateur existe :
  - Afficher : "L'utilisateur <nom_utilisateur> existe déjà"
  - Passer à l'utilisateur suivant

#### Création de l'utilisateur

- Sinon :
  - Créer l'utilisateur
  - Vérifier le code de retour de la commande

  - Si la création a réussi :
    - Afficher : "L'utilisateur <nom_utilisateur> a été crée"
  - Sinon :
    - Afficher : "Erreur à la création de l'utilisateur <nom_utilisateur>"

---

## Fin
