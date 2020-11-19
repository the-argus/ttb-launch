# called by block/synthesizer/tick

tag @s add lcore_gui_verify_integrity
execute unless entity @e[type=#origami-games.core:block/gui/verify_integrity,distance=..8,limit=1] unless block ~ ~-1 ~ #origami-games.core:block/gui/verify_integrity run tag @s remove lcore_gui_verify_integrity
execute if entity @s[tag=lcore_gui_verify_integrity] run function origami-games.core:block/synthesizer/gui/verify_integrity
