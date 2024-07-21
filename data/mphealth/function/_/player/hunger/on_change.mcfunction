#> mphealth:_/player/food/on_change
#--------------------
# _/player/main
#--------------------

execute unless score @s mphealth-hunger_equilibrium matches 0.. run scoreboard players operation @s mphealth-hunger_equilibrium = @s _mphealth-food
execute store result score *food.change -mphealth run scoreboard players operation @s _mphealth-dxhealth -= @s _mphealth-food
scoreboard players operation @s _mphealth-dxfood = @s _mphealth-food

data merge storage later.psafe:in {delay:{command:"function mphealth:_/player/hunger/equalize"}}
execute store result storage later.psafe:in delay.data.hunger_value int 1 run scoreboard players get @s _mphealth-food
data modify storage later.psafe:in delay.ticks set from storage mphealth:settings hunger.equilibrium_delay
function later.psafe:api/delay

scoreboard players reset *food.change -mphealth