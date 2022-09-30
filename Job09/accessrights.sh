#!/bin/bash

INPUT=Shell_Userlist.csv
OLDIFS=$IFS
IFS=,
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

while read id nom prenom mdp role
do
 echo "ID : $id"
        echo "Nom : $nom"
        echo "Prenom : $prenom"
        echo "Mot de passe : $mdp"
        echo "Role : $role"
sudo useradd -m $nom
echo $nom:$mdp | sudo chpasswd
done < $INPUT

while read id nom prenom mdp role
do
echo "$role"
if [ $role == "Admin" ]
then
sudo usermod -aG sudo $nom
echo "$nom  ajouter au groupe sudo"
fi
done < $INPUT

