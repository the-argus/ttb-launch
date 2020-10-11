#floor crafting base effects
#called by launch/item/<item>/craft

playsound minecraft:entity.firework_rocket.blast player @a[distance=..20] ~ ~ ~ 1 2 1
playsound minecraft:entity.firework_rocket.launch player @a[distance=..20] ~ ~ ~ 1 2 1

particle minecraft:end_rod ~ ~ ~ .15 .2 .1 .05 20 force @a
