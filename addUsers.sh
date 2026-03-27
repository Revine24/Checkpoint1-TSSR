#!/bin/bash

# Vérification de la présence d'arguments
if [ $# -eq 0 ]; then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
fi

# Boucle sur tous les utilisateurs passés en argument
for utilisateur in "$@"
do
    # Vérifie si l'utilisateur existe déjà
    if id "$utilisateur" >/dev/null 2>&1; then
        echo "L'utilisateur $utilisateur existe déjà"
        continue
    fi

    # Création de l'utilisateur
    sudo useradd -m "$utilisateur"

    # Vérification de la création
    if [ $? -eq 0 ]; then
        echo "L'utilisateur $utilisateur a été crée"
    else
        echo "Erreur à la création de l'utilisateur $utilisateur"
    fi
done
