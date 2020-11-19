#called by player/placed_custom_block

execute if entity @s[tag=lcore_create_synthesizer] run function origami-games.core:block/synthesizer/create
execute if score $Bonsai_Pots lcore_enabled matches 1.. if entity @s[tag=bp_create_bonsai_pot] positioned ~ ~-.131 ~ run function origami-games.bonsaipots:block/bonsaipots/create
execute if score $Disenchanters lcore_enabled matches 1.. if entity @s[tag=de_create_disenchanter] align xyz positioned ~.5 ~ ~.5 run function origami-games.disenchanters:block/disenchanters/create

#kill the item item_frame
kill @s
