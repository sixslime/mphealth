#> mphealth:_/cache/generate
#--------------------
# _/load
#--------------------

execute store result score *cache.health.recovery_max --mphealth run data get storage mphealth:settings health.recovery_time_per_damage.max
execute store result score *cache.health.recovery_min --mphealth run data get storage mphealth:settings health.recovery_time_per_damage.min
scoreboard players operation *cache.health.recovery_range --mphealth = *cache.health.recovery_max --mphealth
scoreboard players operation *cache.health.recovery_range --mphealth -= *cache.health.recovery_min --mphealth

# constants
scoreboard players set *20 --mphealth 20