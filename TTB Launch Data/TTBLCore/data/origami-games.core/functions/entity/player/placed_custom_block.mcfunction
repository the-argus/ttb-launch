#called by tick

execute as @e[type=item_frame,tag=lcore_create_block,distance=..7] at @s align xyz positioned ~.5 ~.5 ~.5 run function origami-games.core:block/create_block
scoreboard players set @s lcore_iframe 0
