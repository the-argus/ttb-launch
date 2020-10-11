#@s - bonsai pot if [items in hopper]
#called by launch/block/bonsai_pot/processes

#get count of dirt in slot 1
execute store result score @s lch_bp_count run data get block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dirt"}].Count

#set CMD
execute unless score @s lch_bp_count matches 1.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7
execute unless score @s lch_bp_count matches 1.. run scoreboard players set @s lch_clock 0
execute if score @s lch_bp_count matches 1..15 run function origami-games:launch/block/bonsai_pot/dirt/part_filled
execute if score @s lch_bp_count matches 16.. run function origami-games:launch/block/bonsai_pot/dirt/filled
