#@s - bonsai pot
#called by launch/tick

#check item
execute if block ~ ~ ~ hopper{Items:[{}]} run function origami-games:launch/block/bonsai_pot/check_dirt_count
execute unless data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dirt"}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7

#produce wood
execute if score @s lch_bp_count matches 1.. run scoreboard players add @s lch_clock 1
execute if score @s lch_clock matches 60.. if score @s lch_bp_count matches 16.. if block ~ ~1 ~ grass_block unless data block ~ ~-1 ~ Lock at @s run function origami-games:launch/block/bonsai_pot/spawn_loot
execute if score @s lch_clock matches 60.. if score @s lch_bp_count matches 16.. if block ~ ~1 ~ grass_block unless data block ~ ~-1 ~ Lock at @s run function origami-games:launch/block/bonsai_pot/spawn_loot
execute if score @s lch_clock matches 60.. if score @s lch_bp_count matches 1..15 if block ~ ~1 ~ grass_block unless data block ~ ~-1 ~ Lock at @s run function origami-games:launch/block/bonsai_pot/spawn_loot
execute if score @s lch_clock matches 60.. run scoreboard players set @s lch_clock 0

#removal
execute unless block ~ ~ ~ hopper{CustomName:'{"translate":"block.launch.bonsai_pot"}'} run function origami-games:launch/block/bonsai_pot/remove
