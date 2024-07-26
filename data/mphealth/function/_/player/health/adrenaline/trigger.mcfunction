#> mphealth:_/player/health/adrenaline/trigger
#--------------------
# ../on_change
#--------------------

execute store result score @s mphealth-adrenaline_cooldown run data get storage mphealth:settings health.adrenaline.cooldown

data modify storage mphealth:var adrenaline.effects set from storage mphealth:settings health.adrenaline.effects
data modify storage mphealth:var adrenaline.attributes set from storage mphealth:settings health.adrenaline.attributes

execute if data storage mphealth:var adrenaline.effects[] run function mphealth:_/player/health/adrenaline/each_effect with storage mphealth:var adrenaline.effects[-1]
execute if data storage mphealth:var adrenaline.attributes[] run function mphealth:_/player/health/adrenaline/each_attribute with storage mphealth:var adrenaline.attributes[-1]

data remove storage mphealth:var adrenaline