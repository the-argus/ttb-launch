#called by player/placed_custom_block
execute if entity @s[tag=de_create_disenchanter] run function origami-games.disenchanters:block/disenchanters/create

#kill the item item_frame
kill @s
