execute as @a[scores={lcore_synth=1..}] at @s run function origami-games.core:entity/player/craft_synthesizer

#detect a changed slot when the player drops an item
execute as @a[scores={lcore_drop=1}] at @s run function origami-games.elementalarrows:detect_selected_arrow

#reset dropped score so that the item kill in entity/player/craft_synthesizer can work
scoreboard players set @a lcore_drop 0
execute as @a[scores={lcore_iframe=1..}] at @s run function origami-games.core:entity/player/placed_custom_block

execute as @e[type=armor_stand,tag=lcore_synthesizer] at @s run function origami-games.core:block/synthesizer/tick

#bonsai pots
execute if score $Bonsai_Pots lcore_enabled matches 1.. as @e[type=armor_stand,tag=bp_bonsai_pot] at @s run function origami-games.bonsaipots:block/bonsaipots/processes

#disenchanters
execute if score $Disenchanters lcore_enabled matches 1.. as @e[type=armor_stand,tag=de_disenchanter] at @s run function origami-games.disenchanters:block/disenchanters/processes

#elemental arrows
execute if score $Elemental_Arrows lcore_enabled matches 1.. as @a at @s run function origami-games.elementalarrows:used_bow

#light bridges
execute if score $Light_Bridges lcore_enabled matches 1.. as @e[type=armor_stand,tag=lb_light_bridge] at @s run function origami-games.lightbridges:block/light_bridges/processes

#gravity pads
execute if score $Gravity_Pads lcore_enabled matches 1.. as @e[type=armor_stand,tag=gp_gravity_pad] at @s run function origami-games.gravitypads:block/gravity_pads/processes
