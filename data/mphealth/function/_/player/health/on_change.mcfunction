#> mphealth:_/player/health/on_change
#--------------------
# _/player/main
#--------------------

execute store result score *health.change -mphealth run scoreboard players operation @s _mphealth-dxhealth -= @s _mphealth-health
scoreboard players operation @s _mphealth-dxhealth = @s _mphealth-health

# recovery
scoreboard players set *health.recovery -mphealth 0
scoreboard players operation *health.recovery -mphealth -= @s _mphealth-food
scoreboard players operation *health.recovery -mphealth *= *cache.health.recovery.range --mphealth
scoreboard players operation *health.recovery -mphealth /= *20 --mphealth
scoreboard players operation *health.recovery -mphealth += *cache.health.recovery.add_max --mphealth
scoreboard players operation *health.recovery -mphealth *= *health.change -mphealth

execute if score *health.change -mphealth matches ..-1 run scoreboard players set *health.recovery -mphealth 0
execute if score *health.change -mphealth matches 1.. run scoreboard players set @s mphealth-regen_delay 0
scoreboard players operation @s mphealth-recovery_time += *health.recovery -mphealth
# max
execute if score @s mphealth-recovery_time > *cache.health.recovery.max --mphealth run scoreboard players operation @s mphealth-recovery_time = *cache.health.recovery.max --mphealth

scoreboard players reset *health.recovery -mphealth
scoreboard players reset *health.change -mphealth