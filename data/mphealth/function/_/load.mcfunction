#>mphealth:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *mphealth load-status 1

# settings
execute unless data storage mphealth:settings {PERSIST:true} run function mphealth:settings

#declare storage mphealth:var
#declare storage mphealth:in
#declare storage mphealth:out
#declare storage mphealth:data
#declare storage mphealth:hook
#declare storage mphealth:implement

# scoreboards
scoreboard objectives add -mphealth dummy
scoreboard objectives add --mphealth dummy
#scoreboard objectives add mphealth-scoreboard dummy