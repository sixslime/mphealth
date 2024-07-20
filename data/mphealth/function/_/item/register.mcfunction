#> mphealth:_/item/register
#--------------------
# @hook : xtem:register
#--------------------

execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return 0

execute if items entity @s container.0 golden_apple run return run function mphealth:_/item/golden_apple
execute if items entity @s container.0 potion[minecraft:potion_contents={potion:"minecraft:strong_healing"}] run return run function mphealth:_/item/health_potion