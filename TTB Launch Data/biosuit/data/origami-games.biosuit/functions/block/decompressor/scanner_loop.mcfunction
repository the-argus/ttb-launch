#data modify entity @s ArmorItems[3].tag.Walls append from value entity [temp_marker] Pos
#called by block/decompressor/create
execute if score $looper bs_counter matches 0 as @e[type=area_effect_cloud,tag=bs_scanner] at @s align xyz positioned ~.5 ~.5 ~.5 run function origami-games.biosuit:block/decompressor/scanner_step
execute if score $looper bs_counter matches 0 run scoreboard players add @e[type=area_effect_cloud,tag=bs_scanner] bs_scan_stage 1

execute if score $looper bs_counter matches 1.. if score $scanners bs_counter > $prev_scanners bs_counter as @e[type=area_effect_cloud,tag=bs_scanner,scores={bs_scan_stage=1}] at @s align xyz positioned ~.5 ~.5 ~.5 run function origami-games.biosuit:block/decompressor/scanner_step
execute if score $looper bs_counter matches 1.. if score $scanners bs_counter > $prev_scanners bs_counter run scoreboard players add @e[type=area_effect_cloud,tag=bs_scanner] bs_scan_stage 1


scoreboard players add $looper bs_counter 1
execute if score $looper bs_counter < $iterationAmount bs_counter run function origami-games.biosuit:block/decompressor/scanner_loop
execute if score $looper bs_counter >= $iterationAmount bs_counter run scoreboard players set $looper bs_counter 0

scoreboard players operation $prev_scanners bs_counter = $scanners bs_counter
