# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


#Create weeks
3.times do |index|
  Week.create name: "Semaine #{index}"
end

#Create days
Day.create name: "Dimanche"
Day.create name: "Lundi"
Day.create name: "Mardi"
Day.create name: "Mercredi"
Day.create name: "Jeudi"
Day.create name: "Vendredi"
Day.create name: "Samedi"

#Create soups

Soup.create name: "Poulet"
Soup.create name: "Poireaux"
Soup.create name: "Crème de carottes"
Soup.create name: "Crème de chouffleur"
Soup.create name: "Jardinière"
Soup.create name: "Patates douces"
Soup.create name: "Tomates et riz"
Soup.create name: "Boeuf et nouilles"
Soup.create name: "Crème de poulet"
Soup.create name: "Crème de champignons"
Soup.create name: "Jus de légume"
Soup.create name: "Crème d'épinards"
Soup.create name: "Soupe minestrone"
Soup.create name: "Poulet et nouilles"
Soup.create name: "Crème de légumes"
Soup.create name: "Soupe aux pois"
Soup.create name: "Crème de poireaux"
Soup.create name: "Crème de céleris"
Soup.create name: "Crème de brocolis"
Soup.create name: "Boeuf et orge"
Soup.create name: "Poulet et riz"
Soup.create name: "Boeuf et étoiles"
Soup.create name: "Orge et tomates"
Soup.create name: "Soupe aux légumes"
Soup.create name: "Navets et carottes"
Soup.create name: "Boeuf et alphabet"
Soup.create name: "Crème de tomates"

#Create Food

Food.create name: "Sauté de veau"
Food.create name: "Boulettes de porc"
Food.create name: "Coq au vin"
Food.create name: "Omelette"
Food.create name: "Pâté Mexicain"
Food.create name: "Bouchées marines"
Food.create name: "Fusillis jambon et fromage"
Food.create name: "Lanières de poulet"
Food.create name: "Spaghetti bolognaise"
Food.create name: "Saucisses au porc"
Food.create name: "Filets de poisson pané"
Food.create name: "Steak haché"
Food.create name: "Fricadelles de porc"
Food.create name: "Pain de viande"
Food.create name: "Sandwiches"
Food.create name: "Poulet à la chinoise"
Food.create name: "Boeuf au choux"
Food.create name: "Roulés à la dinde"
Food.create name: "Omelette"
Food.create name: "Boeuf jardinière"
Food.create name: "Quiche au brocolis"
Food.create name: "Macaroni chinois"
Food.create name: "Pâté au saumon"
Food.create name: "Pâté berger"
Food.create name: "Pizza"
Food.create name: "Pain de porc"
Food.create name: "Poulet persillé"
Food.create name: "Poitrine de poulet"
