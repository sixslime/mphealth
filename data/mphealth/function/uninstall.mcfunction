#> mphealth:uninstall

scoreboard objectives remove -mphealth
scoreboard objectives remove --mphealth
scoreboard objectives remove mphealth-recovery_time
scoreboard objectives remove mphealth-regen_delay
scoreboard objectives remove _mphealth-health
scoreboard objectives remove _mphealth-dxhealth
scoreboard objectives remove _mphealth-food
scoreboard objectives remove _mphealth-dxfood

data remove storage mphealth:settings health

data remove storage mplights:data _

schedule clear mphealth:_/tick

gamerule naturalRegeneration true