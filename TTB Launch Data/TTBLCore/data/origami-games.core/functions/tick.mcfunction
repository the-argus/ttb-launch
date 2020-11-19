execute as @a[scores={lcore_synth=1..}] at @s run function origami-games.core:entity/player/craft_synthesizer
#reset dropped score so that the item kill in entity/player/craft_synthesizer can work
scoreboard players set @a lcore_drop 0
execute as @a[scores={lcore_iframe=1..}] at @s run function origami-games.core:entity/player/placed_custom_block

execute as @e[type=armor_stand,tag=lcore_synthesizer] at @s run function origami-games.core:block/synthesizer/tick

#bonsai pots
execute as @e[type=armor_stand,tag=bp_bonsai_pot] at @s run function origami-games.bonsaipots:block/bonsaipots/processes

#disenchanters
execute as @e[type=armor_stand,tag=de_disenchanter] at @s run function origami-games.disenchanters:block/disenchanters/processes
