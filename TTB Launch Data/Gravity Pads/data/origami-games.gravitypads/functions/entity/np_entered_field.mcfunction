#called by gravity_pads/processes
#@s = all non-player entities who have entered a field

execute store result score @s gp_counter run data get entity @s Rotation[1] 1
scoreboard players set $0 gp_counter 0
execute if score @s gp_counter < $0 gp_counter run effect give @s minecraft:levitation 1 3 true
execute if score @s gp_counter >= $0 gp_counter run effect give @s minecraft:slow_falling 1 1 true

particle minecraft:composter ~ ~ ~ 0.1 0 0.1 0.1 1 force

tag @s add gp_acted_upon
tag @s add gp_effected
