#called by player/placed_custom_block
execute if entity @s[tag=bp_create_bonsai_pot] run function origami-games.bonsaipots:block/bonsaipots/create

#kill the item item_frame
kill @s
