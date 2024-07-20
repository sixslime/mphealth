#>mphealth:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *mphealth load-status 1

# settings
execute unless data storage mphealth:settings {PERSIST:true} run function mphealth:settings

gamerule naturalRegeneration false

#declare storage mphealth:var
#declare storage mphealth:in
#declare storage mphealth:out
#declare storage mphealth:data
#declare storage mphealth:hook
#declare storage mphealth:implement

# scoreboards
scoreboard objectives add -mphealth dummy
scoreboard objectives add --mphealth dummy
scoreboard objectives add mphealth-recovery_time dummy
scoreboard objectives add mphealth-regen_delay dummy
scoreboard objectives add mphealth-food_equalibrium dummy
scoreboard objectives add _mphealth-health health
scoreboard objectives add _mphealth-dxhealth dummy
scoreboard objectives add _mphealth-food food
scoreboard objectives add _mphealth-dxfood dummy
#scoreboard objectives add mphealth-scoreboard dummy

# cache
function mphealth:_/cache/generate

# tick
schedule clear mphealth:_/tick
function mphealth:_/tick