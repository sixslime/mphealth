#> mphealth:_/player/health/adrenaline/each_attribute
#--------------------
# ./trigger
#--------------------

$attribute @s $(attribute) modifier add mphealth:adrenaline $(amount) $(operation)

data modify storage later:in delay.ticks set from storage mphealth:var adrenaline.attributes[-1].ticks
$data modify storage later:in delay.command set value "attribute @s $(attribute) modifier remove mphealth:adrenaline"
function later:api/delay
function later.prt:api/enable
# lets just fucking make a library for this yea!

data remove storage mphealth:var adrenaline.attributes[-1]
execute if data storage mphealth:var adrenaline.attributes[] run function mphealth:_/player/health/adrenaline/each_attribute with storage mphealth:var adrenaline.attributes[-1]