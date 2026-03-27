# Pseudo-code - Script addUsers.sh

Début

Si aucun argument n'est fourni
    Afficher "Il manque les noms d'utilisateurs en argument - Fin du script"
    Arrêter le script
Fin Si

Pour chaque argument reçu
    Stocker l'argument dans une variable utilisateur

    Vérifier si l'utilisateur existe déjà dans le système
    Si l'utilisateur existe
        Afficher "L'utilisateur <nom_utilisateur> existe déjà"
        Passer à l'utilisateur suivant
    Sinon
        Créer l'utilisateur
        Vérifier le code de retour de la commande de création

        Si la création a réussi
            Afficher "L'utilisateur <nom_utilisateur> a été crée"
        Sinon
            Afficher "Erreur à la création de l'utilisateur <nom_utilisateur>"
        Fin Si
    Fin Si
Fin Pour

Fin
