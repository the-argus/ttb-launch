#called by player/tick

execute as @e[type=item_frame,tag=bs_create_block,distance=..7] at @s align xyz positioned ~.5 ~.5 ~.5 run function origami-games.biosuit:block/create_block
