#called by block/create_block

playsound block.stone.place block @a[distance=...56] ~ ~ ~ 1 1 1

#create armor stand
execute if block ~ ~ ~ #origami-games.biosuit:replace_on_creation run summon armor_stand ~ ~ ~ {Tags:["bs_decompressor","bs_fire","bs_creating"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.origami-games.biosuit.decompressor"}',Fire:17s}
scoreboard players operation @e[type=armor_stand,tag=bs_decompressor,limit=1,distance=...5] bs_cmprsr_count = $global bs_cmprsr_count
replaceitem entity @e[type=armor_stand,tag=bs_decompressor,distance=...5,limit=1] armor.head item_frame{CustomModelData:7510021}

#create block itself
execute if block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{biosuit:{item:"decompressor"}}}]}} run loot spawn ~ ~ ~ loot origami-games.biosuit:items/decompressor
fill ~ ~ ~ ~ ~ ~ spawner{SpawnData:{id:"armor_stand",ArmorItems:[{},{},{},{id:"item_frame",Count:1,tag:{biosuit:{item:"decompressor"},CustomModelData:7510021}}]}} replace #origami-games.biosuit:replace_on_creation
execute if block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{biosuit:{item:"decompressor"}}}]}} run data merge block ~ ~ ~ {RequiredPlayerRange:0}
execute unless block ~ ~ ~ spawner{SpawnData:{ArmorItems:[{tag:{biosuit:{item:"decompressor"}}}]}} run loot spawn ~ ~ ~ loot origami-games.biosuit:items/decompressor

#scan
execute if entity @e[type=armor_stand,sort=nearest,tag=creating,tag=bs_decompressor] run summon area_effect_cloud ~ ~ ~ {Tags:["bs_scanner","bs_decompressor"],CustomName:'{"translate":"block.origami-games.biosuit.scanner"}',Particle:"block air",NoGravity:1b,Radius:0.0001f,Duration:2147483647}
execute if entity @e[type=armor_stand,sort=nearest,tag=creating,tag=bs_decompressor] run scoreboard players operation @e[type=area_effect_cloud,limit=1,distance=...5,tag=bs_scanner] bs_cmprsr_count = $global bs_cmprsr_count

scoreboard players set $scanners bs_counter 0
scoreboard players set $prev_scanners bs_counter 0

execute if entity @e[type=armor_stand,sort=nearest,tag=creating,tag=bs_decompressor] as @e[type=area_effect_cloud,limit=1,distance=...5,tag=bs_scanner] at @s run function origami-games.biosuit:block/decompressor/scanner_loop

#confirm that the compression worked
scoreboard players set $confirm bs_counter 0
execute if entity @e[type=armor_stand,sort=nearest,tag=creating,tag=bs_decompressor] as @e[type=area_effect_cloud,tag=bs_scanner,scores={bs_scan_stage=1}] at @s align xyz positioned ~.5 ~.5 ~.5 run function origami-games.biosuit:block/decompressor/scanner_confirm
execute if entity @e[type=armor_stand,sort=nearest,tag=creating,tag=bs_decompressor] if score $confirm bs_counter matches 0 run tag @e[type=armor_stand,tag=bs_decompressor,distance=...5,limit=1] add bs_confirmed

#confirmation particles and sound
execute if entity @e[type=armor_stand,tag=bs_decompressor,tag=bs_confirmed,distance=..1,limit=1] at @e[type=area_effect_cloud,tag=bs_scanner] run particle poof ~.5 ~.5 ~.5 .5 .5 .5 0 10 normal @a[distance=..40]
execute if entity @e[type=armor_stand,tag=bs_decompressor,tag=bs_confirmed,distance=..1,limit=1] run playsound minecraft:block.fire.extinguish block @a[distance=..16] ~ ~ ~ .5 0

#sound and particles if it fails
execute if entity @e[type=armor_stand,sort=nearest,tag=creating,tag=bs_decompressor] unless entity @e[type=armor_stand,tag=bs_decompressor,tag=bs_confirmed,distance=..1,limit=1] run playsound minecraft:block.note_block.didgeridoo block @a[distance=..16] ~ ~ ~ 1 .815
execute if entity @e[type=armor_stand,sort=nearest,tag=creating,tag=bs_decompressor] unless entity @e[type=armor_stand,tag=bs_decompressor,tag=bs_confirmed,distance=..1,limit=1] run playsound minecraft:block.note_block.didgeridoo block @a[distance=..16] ~ ~ ~ 1 1
execute if entity @e[type=armor_stand,sort=nearest,tag=creating,tag=bs_decompressor] unless entity @e[type=armor_stand,tag=bs_decompressor,tag=bs_confirmed,distance=..1,limit=1] run particle smoke ~ ~ ~ .5 .5 .5 0 40 normal @a[distance=..40]

#store an array of wall blocks in the armor stand's ArmorItems[3].tag.Walls
tag @s add bs_selected_comp
execute if entity @e[type=armor_stand,sort=nearest,tag=creating,tag=bs_decompressor] if entity @e[type=armor_stand,tag=bs_decompressor,tag=bs_confirmed] as @e[type=area_effect_cloud,tag=bs_scanner,scores={bs_scan_stage=1}] at @s run function origami-games.biosuit:block/decompressor/store_array
tag @s remove bs_selected_comp

#kill scanners and remove creating tag
kill @e[type=area_effect_cloud,tag=bs_scanner]
tag @e[type=armor_stand,limit=1,sort=nearest,tag=bs_decompressor,tag=bs_creating] remove bs_creating
scoreboard players add $global bs_cmprsr_count 1
