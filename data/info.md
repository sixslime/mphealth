# Dependencies
* xtem
* eotheal

# Implements

# Supports

# Abstract?
false

# NOTES
* `naturalRegeneration` gamerule MUST be false.

# TODO

* Health Regen
    * you have a Recover Timer value (RT)
    * every time you take damage, increase your RT by (120-3F) seconds, where F is your food value.
    * if your RT is at 0, you start to regenerate health at 1 per 10 seconds.
    * sleeping will heal you 6 hearts and set your RT to 0.
    * RT ticks down faster if you are sneaking and/or standing still

* Potions
    * Potions of instant healing 2 are converted to instant healing 1 + health boost 1

