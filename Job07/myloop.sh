#!/bin/bash
count=0
writing="Je suis un script qui arrive à faire une boucle"
while [ $count -lt 10 ]
do
count=$((count + 1))
echo "$writing $count"
done

