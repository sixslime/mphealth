#> mphealth:_/player/health/adrenaline/each_effect
#--------------------
# ./trigger
#--------------------

$effect give @s $(effect) $(seconds) $(amplifier) false

data remove storage mphealth:var adrenaline.effects[-1]
execute if data storage mphealth:var adrenaline.effects[] run function mphealth:_/player/health/adrenaline/each_effect with storage mphealth:var adrenaline.effects[-1]