#> mphealth:_/cache/generate
#--------------------
# _/load
#--------------------

execute store result score *cache.health.recovery.add_max --mphealth run data get storage mphealth:settings health.recovery.time_per_damage.max
execute store result score *cache.health.recovery.add_min --mphealth run data get storage mphealth:settings health.recovery.time_per_damage.min
execute store result score *cache.health.recovery.max --mphealth run data get storage mphealth:settings health.recovery.max_time
execute store result score *cache.health.regen_delay --mphealth run data get storage mphealth:settings health.regen_delay
scoreboard players operation *cache.health.recovery.range --mphealth = *cache.health.recovery.add_max --mphealth
scoreboard players operation *cache.health.recovery.range --mphealth -= *cache.health.recovery.add_min --mphealth


# constants
scoreboard players set *20 --mphealth 20