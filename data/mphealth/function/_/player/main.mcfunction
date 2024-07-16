#> mphealth:_/player/main
#--------------------
# _/tick
#--------------------

execute unless score @s _mphealth-health = @s _mphealth-dxhealth run function mphealth:_/player/change/health
execute unless score @s _mphealth-food = @s _mphealth-dxfood run function mphealth:_/player/change/food

execute if score @s mphealth-recover_time matches 1.. run scoreboard players remove @s mphealth-recover_time 1