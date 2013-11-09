--[[

Mod ARGENT par turbogus, Zaraki98 et Ze_Escrobar
code en licence GPL v2 ou supérieur
graphisme en licence CC-BY-SA

Version 1.0

**********************************************************************************************

Nom de la monnaie de minetest : ???

base de conversion : 10

base 10 : 1€ / 5€ / 10€ / 20€ / 50€ / 100€ / 200€ / 500€


**********************************************************************************************

Bloc de référence , le cobble :

- 1 cobble = 3€

- Une pioche en mese permet de digger 450 blocs de cobble. 

Il faut 3 cristaux de mese pour faire une pioche :
	--> valeur en cobble d'un cristal = 450 / 3 = 150

1 bloc de mese = 9 cristaux de mese :
	--> valeur en cobble d'un bloc de mese = 150*9 = 1350

	
- Une pioche en steel permet de digger 180 blocs de cobble.

Il faut 3 blocs d'acier pour faire une pioche :
	--> valeur en cobble d'un bloc d'acier = 180 / 3 = 60
	
	
- Une pioche en cobble permet de digger 63 blocs de cobble.

--> Nous donne un rapport de 3 / 63 = 0.04 ( 63 blocs de cobble récupérés pour 3 blocs de cobble dépensés(craft de la pioche) ). 
   Il faut 8 actions pour crafter une pioche en cobble :

1- Récupérer du tree
2- Crafter du wood
3- Crafter des stick
4- crafter une pioche en bois
5- digger 1 cobble
6- digger 1 cobble
7- digger 1 cobble
8- crafter la pioche en pierre

Donc (1 / 8) / 0.04 : 3.125 (valeur ajoutée)

******************************************
*On peut ramener le prix d'un cobble à 3€*
******************************************

Prix si un bloc de cobble rapporte 3€

- Diamond = mese * 2 = 1350*3*2 = 8100€
- mese : 1350 *3 = 4050€
- steel : 60 * 3 = 180€

Avec le rapport de 0.04 et le nombre d'actions à effectuer pour le crafter, on peut définir le prix d'un objet. On peut également utiliser le prix des matières
nobles si elles rentres dans la fabrication de l'objet !

***

ex : épée en en mese :

Composition 1 stick et 2 cristaux de mese

Nombres d'action pour obtenir des sticks : 3 ( couper du tree, crafter du wood, crafter des sticks(4) ).
--> valeur ajoutée (1 / 3) / 0.04 = 8.33333 ~ 9

Prix d'un cristal de mese : 450€

--> prix d'une épée en mese : 450 + 9 = 459€ ~ 460€

***

ex2 : hache en steel_ingot :

Nbres d'actions pour 1 steel_ingot : 1 ( cuir 1 iron lump dans un four )
-->Valeur ajoutée : 1/1/0.04 = 25

Nbres d'actions pour des sticks(x4) : 3
-->Valeur ajoutée 1/3/0.04 = ~9

prix d'un steel ingot : 60€

prix d'une hache en steel : 9 + 3*(60+25)= 264€

**********************************************************************************************
]]--

--++++++++++++
--|piece de 1|
--++++++++++++

--Declaration
minetest.register_craftitem("argent:piece1", {
description = " piece de 1",
inventory_image = "piece_acier.png",
})

--Conversion inverse
minetest.register_craft({
    output = "argent:piece1 5",
    recipe =
        {
        {"argent:piece5"},
    }
})

--++++++++++++
--+piece de 5|
--++++++++++++

--Declaration
minetest.register_craftitem("argent:piece5", {
    description = "piece de 5",
    inventory_image = "piece_cuivre.png",
})

--Conversion 

minetest.register_craft({
	output = "argent:piece5",
	recipe = 
		{
			{"","",""},
			{"argent:piece1","argent:piece1",""},
			{"argent:piece1","argent:piece1","argent:piece1"},
	}
})
	
--Conversion inverse
minetest.register_craft({
    output = "argent:piece5 2",
    recipe =
        {
        {"argent:billet10"},
    }
})

--++++++++++++++
--|billet de 10|
--++++++++++++++

--Declaration
minetest.register_craftitem("argent:billet10", {
    description = " billet de 10",
    inventory_image = "billet10.png",
})

--Conversion :
minetest.register_craft({
    output = "argent:billet10",
    recipe =
        {
        {"argent:piece5","argent:piece5"},
    }
})

--Conversion inverse
minetest.register_craft({
    output = "argent:billet10 2",
    recipe =
        {
        {"argent:billet20"},
    }
})

--++++++++++++++
--|billet de 20|
--++++++++++++++

--Declaration
minetest.register_craftitem("argent:billet20", {
    description = " billet de 20",
    inventory_image = "billet20.png",
})

--Conversion
minetest.register_craft({
    output = "argent:billet20",
    recipe =
        {
        {"argent:billet10","argent:billet10"},
    }
})

--Conversion inverse
minetest.register_craft({
    output = "argent:billet20 2";
    recipe = {
        {"argent:billet50"},
    };
    replacements ={{"argent:billet50","argent:billet10"},
    };
});

--++++++++++++++
--|billet de 50|
--++++++++++++++

--Declaration
minetest.register_craftitem("argent:billet50", {
    description = " billet de 50",
    inventory_image = "billet50.png",
})

--Conversion
minetest.register_craft({
    output = "argent:billet50",
    recipe =
       {
		{"","",""},
		{"argent:billet10","",""},
		{"argent:billet20","argent:billet20",""},
    }
})

--Conversion inverse
minetest.register_craft({
    output = "argent:billet50 2",
    recipe =
        {
        {"argent:billet100"},
    }
})

--+++++++++++++++
--|billet de 100|
--+++++++++++++++

--Declaration
minetest.register_craftitem("argent:billet100", {
    description = " billet de 100",
    inventory_image = "billet100.png",
})

--Conversion:
minetest.register_craft({
    output = "argent:billet100",
    recipe =
        {
        {"argent:billet50"},
		{"argent:billet50"},
    }
})

--Conversion inverse
minetest.register_craft({
    output = "argent:billet100 2 ",
    recipe =
        {
        {"argent:billet200"},
    }
})

--+++++++++++++++
--|billet de 200|
--+++++++++++++++

--Declaration
minetest.register_craftitem("argent:billet200", {
    description = " billet de 200",
    inventory_image = "billet200.png",
})

--Conversion
minetest.register_craft({
    output = "argent:billet200",
    recipe =
        {
        {"argent:billet100"},
		{"argent:billet100"},
    }
})

--Conversion inverse
minetest.register_craft({
    output = "argent:billet200 2";
    recipe = {
        {"argent:billet500"},
    };
    replacements ={{"argent:billet500","argent:billet100"},
    };
});

--+++++++++++++++
--|billet de 500|
--+++++++++++++++

--Declaration
minetest.register_craftitem("argent:billet500", {
    description = " billet de 500",
    inventory_image = "billet500.png",
})

--Conversion
minetest.register_craft({
    output = "argent:billet500",
    recipe =
        {
		{"argent:billet100"},
        {"argent:billet200"},
		{"argent:billet200"},
    }
})
--[[
**********************************************************************************************
--]]