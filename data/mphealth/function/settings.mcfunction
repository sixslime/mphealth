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
