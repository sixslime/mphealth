#> mphealth:_/item/health_potion
#--------------------
# ./register
#--------------------

say hi
execute unless data storage mphealth:settings items.health_potion{enable:true} run return fail

data modify storage mphealth:var item.item set from entity @s item

data remove storage mphealth:var item.item.components."minecraft:potion_contents".potion
data merge storage mphealth:var {item:{item:{components:{"minecraft:rarity":"uncommon","minecraft:item_name":'{"translate":"item.minecraft.potion.effect.healing"}',"minecraft:potion_contents":{custom_effects:[{id:"minecraft:health_boost", duration:1, amplifier:0},{id:"minecraft:regeneration",duration:12,amplifier:4}]}}}}}
data modify storage mphealth:var item.item.components."minecraft:potion_contents".custom_effects[0].duration set from storage mphealth:settings items.health_potion.boost_duration
data modify entity @s item set from storage mphealth:var item.item

data remove storage mphealth:var item