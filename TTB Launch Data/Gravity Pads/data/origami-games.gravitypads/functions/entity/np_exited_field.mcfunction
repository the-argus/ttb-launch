#called by gravity_pads/processes
#@s = all non-player entities who have exited a field
data modify storage origami-games.gravitypads:temp ActiveEffects set from entity @s ActiveEffects
execute if data storage origami-games.gravitypads:temp ActiveEffects[{Id:25b,Amplifier:3b}] run effect clear @s minecraft:levitation
execute if data storage origami-games.gravitypads:temp ActiveEffects[{Id:28b,Amplifier:1b}] run effect clear @s minecraft:slow_falling

tag @s remove gp_effected
