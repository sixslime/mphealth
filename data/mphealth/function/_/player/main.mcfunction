#> mphealth:_/player/main
#--------------------
# _/tick
#--------------------

execute unless score @s _mphealth-health = @s _mphealth-dxhealth run function mphealth:_/player/health/on_change

# UNUSED
#execute unless score @s _mphealth-food = @s _mphealth-dxfood run function mphealth:_/player/hunger/on_change

execute if score @s mphealth-regen_delay matches ..-1 run function mphealth:_/player/health/regen

execute if score @s mphealth-recovery_time matches -1 run scoreboard players remove @s mphealth-regen_delay 1
execute if score @s mphealth-recovery_time matches 0.. run scoreboard players remove @s mphealth-recovery_time 1