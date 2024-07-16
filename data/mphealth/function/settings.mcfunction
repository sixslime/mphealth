#>mphealth:settings

#declare storage mphealth:settings
data modify storage mphealth:settings PERSIST set value false

#>-------------------
#> health.recovery_time_per_damage : {min: int, max: int}
#-------------------
# ~ the recovery time (in ticks) added per point of damage taken.
#-------------------
# - health will only start regenerating once the the recovery time is fully elapsed.
# - when a player takes damage, <min> is added if a players hunger bar full, <max> is be added if it is empty, and values inbetween are linearly interpolated with hunger.
#-------------------
 data modify storage mphealth:settings health.recovery_time_per_damage set value {min:600, max:1800}
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