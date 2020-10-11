#called by entity/management/item_frame
execute if block ~ ~-2 ~ #fire run function origami-games.cooking:block/crockpot/cooking

#removal
tag @s add cck_crockpot_remove
execute if block ~ ~ ~ #air if block ~ ~-1 ~ cauldron run tag @s remove cck_crockpot_remove
execute if entity @s[tag=cck_crockpot_remove] run function origami-games.cooking:block/crockpot/remove
