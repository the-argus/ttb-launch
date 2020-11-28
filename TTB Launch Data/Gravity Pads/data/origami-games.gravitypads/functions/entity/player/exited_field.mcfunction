#called by gravity_pads/processes
effect clear @s minecraft:levitation
effect give @s minecraft:slow_falling 1 1 true
playsound minecraft:block.beacon.ambient block @s ~ ~ ~ 0.5 2
particle minecraft:composter ~ ~ ~ 0.1 0 0.1 0.1 1 force

tag @s add gp_acted_upon
tag @s add gp_effected
