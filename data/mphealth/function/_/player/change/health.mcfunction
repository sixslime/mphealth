#> mphealth:_/player/change/health
#--------------------
# _/player/main
#--------------------

execute store result score *health.change -mphealth run scoreboard players operation @s _mphealth-dxhealth -= @s _mphealth-health
scoreboard players operation @s _mphealth-dxhealth = @s _mphealth-health

scoreboard players set *health.recovery -mphealth 0
scoreboard players operation *health.recovery -mphealth -= @s _mphealth-food
scoreboard players operation *health.recovery -mphealth *= *cache.health.recovery_range --mphealth
scoreboard players operation *health.recovery -mphealth /= *20 --mphealth
scoreboard players operation *health.recovery -mphealth += *cache.health.recovery_max --mphealth
scoreboard players operation *health.recovery -mphealth *= *health.change -mphealth

scoreboard players operation @s mphealth-recover_time += *health.recovery -mphealth

scoreboard players reset *health.recovery -mphealth
scoreboard players reset *health.change -mphealth