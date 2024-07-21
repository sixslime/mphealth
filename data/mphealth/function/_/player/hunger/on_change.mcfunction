#> mphealth:_/player/food/on_change
#--------------------
# _/player/main
#--------------------

execute store result score *food.change -mphealth run scoreboard players operation @s _mphealth-dxhealth -= @s _mphealth-food
scoreboard players operation @s _mphealth-dxfood = @s _mphealth-food

scoreboard players reset *food.change -mphealth