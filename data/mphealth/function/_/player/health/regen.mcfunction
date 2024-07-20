#> mphealth:_/player/health/regen
#--------------------
# _/player/main
#--------------------

scoreboard players operation @s mphealth-regen_delay = *cache.health.regen_delay --mphealth

data merge storage eotheal:in {heal:{amount:1}}
function eotheal:api/heal
