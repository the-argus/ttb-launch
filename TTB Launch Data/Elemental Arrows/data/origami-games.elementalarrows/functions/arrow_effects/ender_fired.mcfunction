#called by arrow_effects
#@s = arrow nearest to player when they fire
tag @s add ea_ender
tag @s add ea_elemental
tag @s add ea_primed
data modify entity @s PierceLevel set value 1b
playsound minecraft:entity.ender_pearl.throw player @a[distance=..16] ~ ~ ~ .3 2
