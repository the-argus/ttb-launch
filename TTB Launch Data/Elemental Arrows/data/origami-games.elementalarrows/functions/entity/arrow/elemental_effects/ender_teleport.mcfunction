#called by ender_land
#@s = player who owns the teleporting arrow
playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:portal ~ ~1 ~ .5 1 .5 1 100 force
tp @s @e[type=arrow,tag=ea_arrow,limit=1]
playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:portal ~ ~1 ~ .5 1 .5 1 100 force
