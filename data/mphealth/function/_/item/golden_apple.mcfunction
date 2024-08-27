#> mphealth:_/item/golden_apple
#--------------------
# ./register
#--------------------

execute unless data storage mphealth:settings items.golden_apple{enable:true} run return fail

data modify entity @s item.components."minecraft:food" set value {saturation:9.6f, nutrition:4, can_always_eat:false, effects:[{effect:{id:"minecraft:absorption",duration:2400}}]}
data modify entity @s item.components."minecraft:food".effects[0].effect.duration set from storage mphealth:settings items.golden_apple.absorption_duration