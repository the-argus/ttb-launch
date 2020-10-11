#called by player/placed_custom_block

execute if entity @s[tag=bs_create_decompressor] run function origami-games.biosuit:block/decompressor/create
execute if entity @s[tag=bs_create_upgrade_station] run function origami-games.biosuit:block/upgrade_station/create

#kill the item item_frame
kill @s
