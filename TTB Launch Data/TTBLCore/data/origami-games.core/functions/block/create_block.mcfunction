#called by player/placed_custom_block

execute if entity @s[tag=lcore_create_synthesizer] run function origami-games.core:block/synthesizer/create
execute if score $Bonsai_Pots lcore_enabled matches 1.. if entity @s[tag=bp_create_bonsai_pot] positioned ~ ~-.131 ~ run function origami-games.bonsaipots:block/bonsaipots/create
execute if score $Disenchanters lcore_enabled matches 1.. if entity @s[tag=de_create_disenchanter] align xyz positioned ~.5 ~ ~.5 run function origami-games.disenchanters:block/disenchanters/create
execute if score $Light_Bridges lcore_enabled matches 1.. if entity @s[tag=lb_create_light_bridge] align xyz positioned ~.5 ~ ~.5 run function origami-games.lightbridges:block/light_bridges/create
execute if score $Gravity_Pads lcore_enabled matches 1.. if entity @s[tag=gp_create_gravity_pad] align xyz positioned ~.5 ~ ~.5 run function origami-games.gravitypads:block/gravity_pads/create

#kill the item item_frame
kill @s
