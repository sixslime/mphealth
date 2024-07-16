#>mphealth:_/tick
#--------------------
# @TICK
#--------------------

schedule function mphealth:_/tick 1t

execute as @a[gamemode=!spectator] at @s run function mphealth:_/player/main