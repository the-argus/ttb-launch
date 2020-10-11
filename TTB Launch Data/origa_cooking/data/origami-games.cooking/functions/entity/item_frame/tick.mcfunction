#called by entity/tick

#check for block
execute unless entity @s[tag=cck_item_frame_no_check] run function origami-games.cooking:entity/item_frame/check_placement

#crockpot
execute if entity @s[tag=cck_crockpot] run function origami-games.cooking:block/crockpot/tick
