#>mphealth:settings

#declare storage mphealth:settings
data modify storage mphealth:settings PERSIST set value false

#>-------------------
#> health.recovery.time_per_damage : {min: int, max: int}
#-------------------
# ~ the recovery time (in ticks) added per point of damage taken.
#-------------------
# - health will only start regenerating once the the recovery time is fully elapsed.
# - when a player takes damage, <min> is added if a players hunger bar full, <max> is be added if it is empty, and values inbetween are linearly interpolated with hunger.
#-------------------
data modify storage mphealth:settings health.recovery.time_per_damage set value {min:600, max:1800}
#>-------------------

#>-------------------
#> health.recovery.max_time : int
#-------------------
# ~ the absolute maximum recovery time (in ticks) a player can have.
#-------------------
# - i.e. if a player takes damage and would have their recovery time set above this value, cap it to this value.
#-------------------
data modify storage mphealth:settings health.recovery.max_time set value 12000
#>-------------------

#>-------------------
#> health.regen_delay : int
#-------------------
# ~ the delay (in ticks) between regenerating points of health when recovery is at 0.
#-------------------
# - 
#-------------------
data modify storage mphealth:settings health.regen_delay set value 200
#>-------------------

#>-------------------
#> health.adrenaline.enable : bool
#-------------------
# ~ enable the adrenaline system
#-------------------
# - adrenaline gives the player effects/attributes for a duration when they go below a certain health threshold.
#-------------------
data modify storage mphealth:settings health.adrenaline.enable set value true
#>-------------------

#>-------------------
#> health.adrenaline.threshold : int
#-------------------
# ~ the health value a player must be at or below in order for adrenaline to trigger.
#-------------------
# - adrenaline will trigger when the player takes damage and has no adrenaline cooldown.
#-------------------
data modify storage mphealth:settings health.adrenaline.threshold set value 6
#>-------------------

#>-------------------
#> health.adrenaline.cooldown : int
#-------------------
# ~ the time (in ticks) after triggering adrenaline before it can be triggered again.
#-------------------
#
#-------------------
data modify storage mphealth:settings health.adrenaline.cooldown set value 24000
#>-------------------

#>-------------------
#> health.adrenaline.attributes[] : {attribute: string, amount: float, operation: string, ticks: int}
#-------------------
# ~ attributes gained when adrenaline triggers.
#-------------------
#
#-------------------
data modify storage mphealth:settings health.adrenaline.attributes set value []
data modify storage mphealth:settings health.adrenaline.attributes append value {attribute:"minecraft:generic.movement_speed", amount:0.2, operation:"add_multiplied_total"}
data modify storage mphealth:settings health.adrenaline.attributes append value {attribute:"minecraft:generic.attack_damage", amount:2, operation:"add_value"}
data modify storage mphealth:settings health.adrenaline.attributes append value {attribute:"minecraft:generic.attack_knockback", amount:1, operation:"add_value"}
data modify storage mphealth:settings health.adrenaline.attributes[].ticks set value 160
#>-------------------

#>-------------------
#> health.adrenaline.effects[] : {effect: string, amplifier: int, seconds:int}
#-------------------
# ~ player effects gained when adrenaline triggers.
#-------------------
#
#-------------------
data modify storage mphealth:settings health.adrenaline.effects set value []
data modify storage mphealth:settings health.adrenaline.effects append value {effect: "minecraft:resistance", amplifier:0, seconds: 8}
data modify storage mphealth:settings health.adrenaline.effects append value {effect: "minecraft:hunger", amplifier:2, seconds: 10}
#>-------------------

#>-------------------
#> items.health_potion.enable : bool
#-------------------
# ~ enable item change: (potion) instant health II -> instant health I + health boost I
#-------------------
# - 
#-------------------
data modify storage mphealth:settings items.health_potion.enable set value true
#>-------------------

#>-------------------
#> items.health_potion.boost_duration : int
#-------------------
# ~ duration (in ticks) that the health boost lasts on potent instant health potions
#-------------------
# - 
#-------------------
data modify storage mphealth:settings items.health_potion.boost_duration set value 6000
#>-------------------

#>-------------------
#> items.golden_apple.enable : bool
#-------------------
# ~ enable item change: (unenchanted) golden apple -> remove regeneration, not always edible
#-------------------
# - 
#-------------------
data modify storage mphealth:settings items.golden_apple.enable set value true
#>-------------------

#>-------------------
#> items.golden_apple.absorption_duration : int
#-------------------
# ~ duration (in ticks) of absorption a golden apple will grant when eaten.
#-------------------
# - `items.golden_apple.enable` must be true for this to take effect.
#-------------------
data modify storage mphealth:settings items.golden_apple.enable set value true
#>-------------------