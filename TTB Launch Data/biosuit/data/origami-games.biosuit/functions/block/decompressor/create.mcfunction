#called by block/create_block

playsound block.stone.place block @a[distance=...56] ~ ~ ~ 1 1 1

#create
execute if block ~ ~ ~ #origami-games.biosuit:replace_on_creation run summon armor_stand ~ ~ ~ {Tags:["bs_decompressor","bs_fire"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.origami-games.biosuit.decompressor"}',Fire:17s}
scoreboard players operation @e[type=armor_stand,tag=bs_decompressor,limit=1,distance=...5] bs_cmprsr_count = $global bs_cmprsr_count

execute if block ~ ~ ~ #origami-games.biosuit:replace_on_creation run setblock ~ ~ ~ andesite
replaceitem entity @e[type=armor_stand,tag=bs_decompressor,distance=...5,limit=1] armor.head item_frame{CustomModelData:7510021}

summon area_effect_cloud ~ ~ ~ {Tags:["bs_scanner","bs_decompressor"],CustomName:'{"translate":"block.origami-games.biosuit.scanner"}',Particle:"block air",NoGravity:1b,Radius:0.0001f,Duration:2147483647}
scoreboard players operation @e[type=area_effect_cloud,limit=1,distance=...5,tag=bs_scanner] bs_cmprsr_count = $global bs_cmprsr_count

scoreboard players set $scanners bs_counter 0
scoreboard players set $prev_scanners bs_counter 0

execute as @e[type=area_effect_cloud,limit=1,distance=...5,tag=bs_scanner] at @s run function origami-games.biosuit:block/decompressor/scanner_loop

#confirm that the compression worked
scoreboard players set $confirm bs_counter 0
execute as @e[type=area_effect_cloud,tag=bs_scanner,scores={bs_scan_stage=1}] at @s align xyz positioned ~.5 ~.5 ~.5 run function origami-games.biosuit:block/decompressor/scanner_confirm
execute if score $confirm bs_counter matches 0 run tag @e[type=armor_stand,tag=bs_decompressor,distance=...5,limit=1] add bs_confirmed

execute at @e[type=area_effect_cloud,tag=bs_scanner] run particle poof ~ ~ ~ .5 .5 .5 0 20 normal @a[distance=...56]

tag @s add bs_selected_comp
execute as @e[type=area_effect_cloud,tag=bs_scanner,scores={bs_scan_stage=1}] at @s run function origami-games.biosuit:block/decompressor/store_array
tag @s remove bs_selected_comp

kill @e[type=area_effect_cloud,tag=bs_scanner]
scoreboard players add $global bs_cmprsr_count 1
