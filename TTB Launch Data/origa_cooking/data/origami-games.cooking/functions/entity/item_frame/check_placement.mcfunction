#called by entity/player/tick

#crockpot
execute if block ~ ~-1 ~ cauldron if block ~ ~-2 ~ fire run function origami-games.cooking:block/crockpot/create

#prevent further checks
tag @s add cck_item_frame_no_check
