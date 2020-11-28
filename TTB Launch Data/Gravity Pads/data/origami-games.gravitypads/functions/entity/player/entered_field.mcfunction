#called by gravity_pads/processes
#execute unless data entity @s ActiveEffects[{Id:25b,Amplifier:1b}] run effect give @s minecraft:levitation 1 255 true
execute unless entity @s[scores={gp_sneaking=1..}] run effect give @s minecraft:levitation 1 3 true
playsound minecraft:block.beacon.ambient block @s ~ ~ ~ 0.5 2
particle minecraft:composter ~ ~ ~ 0.1 0 0.1 0.1 1 force

tag @s add gp_acted_upon
tag @s add gp_effected
