#item management
#@s - item
#called by launch/tick
execute if entity @s[tag=!lch_item_checked] run function origami-games:launch/entity/management/item_check

execute if entity @s[tag=lch_bonsai_tracker] at @s if entity @e[type=item,tag=lch_bonsai_item,distance=..1] run function origami-games:launch/block/bonsai_pot/craft

execute if entity @s[tag=lch_disenchant_tracker] at @s if entity @e[type=item,tag=lch_disenchant_item,distance=..1,limit=1] if entity @e[type=item,tag=lch_disenchant_item1,distance=..1,limit=1] if entity @e[type=item,tag=lch_disenchant_item2,distance=..1,limit=1] run function origami-games:launch/block/disenchanter/craft

tag @s add lch_item_checked
