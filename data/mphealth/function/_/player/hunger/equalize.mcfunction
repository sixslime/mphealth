#> mphealth:_/player/hunger/equalize
#--------------------
# @later:delayed : ./on_change
#--------------------

execute store result score *equalize.value -mphealth run data get storage later:data current.data.hunger_value
scoreboard players operation @s mphealth-hunger_equalibrium = *equalize.value -mphealth

scoreboard players reset *equalize.value -mphealth