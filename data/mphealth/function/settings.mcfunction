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
#> hunger.equalibrium_delay : int
#-------------------
# ~ the time it takes, after a hunger value change, for hunger equalibrium to change.
#-------------------
# - 
#-------------------
 data modify storage mphealth:settings hunger.equalibrium_delay set value 1200
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