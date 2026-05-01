#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "=========================================="
echo "       SIMPLE INTEREST CALCULATOR"
echo "=========================================="

# Lire les données utilisateur
read -p "Entrez le capital (principal) : " principal
read -p "Entrez le taux d'intérêt annuel (en %) : " rate
read -p "Entrez la durée (en années) : " time

# Vérification que les entrées sont des nombres positifs
if [[ ! "$principal" =~ ^[0-9]+\.?[0-9]*$ ]] || [[ ! "$rate" =~ ^[0-9]+\.?[0-9]*$ ]] || [[ ! "$time" =~ ^[0-9]+\.?[0-9]*$ ]]; then
    echo "Erreur : veuillez entrer des valeurs numériques positives."
    exit 1
fi

# Calcul de l'intérêt simple
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Affichage du résultat
echo "------------------------------------------"
echo "Capital          : $principal"
echo "Taux d'intérêt   : $rate %"
echo "Durée            : $time an(s)"
echo "------------------------------------------"
echo "Intérêt simple   : $interest"
echo "=========================================="