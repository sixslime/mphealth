# Dependencies

# Implements

# Supports

# Abstract?
true / false

# TODO
* Hunger Equalibrium
    * you have a Hunger Equalibrium value (HE)
    * every time your hunger changes, your hunger equalibrium will reflect the change after 1 minute
    * if your hunger bar is more than 8 above your HE, gain scaling slowness.
    * if it is significantly more, gain nausea and hunger.
    * if it is 8 less then gain mining fatigue and weakness and slowness.
    * BASICALLY, if your hunger changes too fast, gain negative effects.

* Adrenaline
    * falling below 2 hearts will trigger:
        * resistance 2 for 8 seconds
        * speed 2 for 8 seconds
        * strength 1 for 8 seconds
        * heartbeat noises
        * hunger 2 for 10 seconds
        * your HE is immediately set to 0, and HE effects do not take effect for 8 seconds.
        * eating during adrenaline will end all effects early

* Health Regen
    * you have a Recover Timer value (RT)
    * every time you take damage, increase your RT by (120-3F) seconds, where F is your food value.
    * if your RT is at 0, you start to regenerate health at 1 per 10 seconds.
    * sleeping will heal you 6 hearts and set your RT to 0.

* Potions
    * Potions of instant healing 2 are converted to instant healing 1 + health boost 1